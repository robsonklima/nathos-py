#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import os
import json
import logging
import gensim
import pyemd
import time

from nltk.corpus import stopwords
from nltk import download

import gapi_translate

from db_project import DbProject
from db_requirement import DbRequirement
from db_commit import DbCommit
from db_tmp import DbTmp

def execute():
    try:
        # Clear tmp
        DbTmp.delete_all_tmp()

        # Translate Requirements
        requirements = DbRequirement.get_untranslated_requirements()

        for requirement in requirements:
            translated_title = gapi_translate.translate(requirement[2])
            translated_description = gapi_translate.translate(requirement[3])
            DbRequirement.update(requirement[1], translated_title, translated_description,
                                 requirement[4], requirement[5], "en", requirement[0])


        # Start WMD
        logging.basicConfig(format=u'%(asctime)s : %(levelname)s : %(message)s')
        dir = os.path.dirname(__file__)
        #download(u'stopwords')
        stop_words = set(stopwords.words(u'english'))
        file = u'/data/GoogleNews-vectors-negative300.bin.gz'
        model = gensim.models.KeyedVectors.load_word2vec_format(dir + file, binary=True)
        model.init_sims(replace=True)

        list_of_sentences = []

        # Get All Requirements
        requirements = DbRequirement.get_all_requirements()
        for requirement in requirements:
            list_of_sentences.append(requirement[3])

        for requirement in requirements:
            sentence_to_compare = requirement[3]
            orig_sentence_to_compare = sentence_to_compare
            sentence_to_compare = sentence_to_compare.lower().split()
            sentence_to_compare = [w for w in sentence_to_compare if w not in stop_words]

            if not os.path.exists(dir + file):
                raise ValueError(u"SKIP: You need to download the google news model")

            #result = []
            for sentence in list_of_sentences:
                orig_sentence = sentence;
                sentence = sentence.lower().split()
                sentence = [w for w in sentence if w not in stop_words]
                distance = model.wmdistance(sentence_to_compare, sentence)

                if distance < 1 and distance > 0:
                    #result.append({ u'distance': distance, u'sentence': orig_sentence })
                    DbTmp.insert_tmp(distance, orig_sentence_to_compare, orig_sentence)

    except Exception as ex:
        print(ex)