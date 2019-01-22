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
from db_recommendation import DbRecommendation

def execute():
    try:
        # Translate Requirements
        requirements = DbRequirement.get_untranslated()

        for requirement in requirements:
            translated_title = gapi_translate.translate(requirement['title'])
            translated_description = gapi_translate.translate(requirement['description'])
            if translated_title is not None and translated_description is not None:
                DbRequirement.update(requirement['project_id'], translated_title,
                                     translated_description, requirement['type'],
                                     requirement['rat'], "en", requirement['requirement_id'])


        # Instantiate Word Mover's Distance
        logging.basicConfig(format=u'%(asctime)s : %(levelname)s : %(message)s')
        dir = os.path.dirname(__file__)
        download(u'stopwords')
        stop_words = set(stopwords.words(u'english'))
        file = u'/data/GoogleNews-vectors-negative300.bin.gz'
        model = gensim.models.KeyedVectors.load_word2vec_format(dir + file, binary=True)
        model.init_sims(replace=True)


        # Get Not Recommended Requirements
        list_of_sentences = []
        requirements = DbRequirement.get_unrecommended()

        for requirement in requirements:
            list_of_sentences.append(requirement['description'])

        for requirement in requirements:
            print(u'Requirement {} processing'.format(requirement['requirement_id']))

            sentence_to_compare = requirement['description']
            orig_sentence_to_compare = sentence_to_compare
            sentence_to_compare = sentence_to_compare.lower().split()
            sentence_to_compare = [w for w in sentence_to_compare if w not in stop_words]

            if not os.path.exists(dir + file):
                raise ValueError(u"SKIP: You need to download the google news model")

            for sentence in list_of_sentences:
                orig_sentence = sentence;
                sentence = sentence.lower().split()
                sentence = [w for w in sentence if w not in stop_words]
                distance = model.wmdistance(sentence_to_compare, sentence)

                print(orig_sentence_to_compare, distance)
                #if distance < 1 and distance > 0:
                    #DbRecommendation.insert(distance, orig_sentence_to_compare, orig_sentence, "NEW_REQUIREMENTS")
    except Exception as ex:
        print(ex)