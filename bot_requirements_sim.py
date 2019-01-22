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
        logging.basicConfig(format=u'%(asctime)s : %(levelname)s : %(message)s')
        dir = os.path.dirname(__file__)
        download(u'stopwords', quiet=True)
        stop_words = set(stopwords.words(u'english'))
        file = u'/data/GoogleNews-vectors-negative300.bin.gz'


        # Instantiate Word Mover's Distance
        model = gensim.models.KeyedVectors.load_word2vec_format(dir + file, binary=True, limit=500000) #limit=500000
        model.init_sims(replace=True)


        # Get Not Recommended Requirements
        unprocessed_reqs = DbRequirement.get_unprocessed()
        all_requirements = DbRequirement.get_all()

        for unprocessed_req in unprocessed_reqs:
            sentence_to_compare = unprocessed_req['description'].lower().split()
            sentence_to_compare = [w for w in sentence_to_compare if w not in stop_words]
            DbRecommendation.delete_by_requirement_id(unprocessed_req['requirement_id'])

            if not os.path.exists(dir + file):
                raise ValueError(u"SKIP: You need to download the google news model")

            for requirement in all_requirements:
                sentence = requirement['description'].lower().split()
                sentence = [w for w in sentence if w not in stop_words]
                distance = model.wmdistance(sentence_to_compare, sentence)

                if distance > 0 and distance < 1:
                    DbRecommendation.insert(distance, unprocessed_req['requirement_id'],
                                            requirement['requirement_id'], "NEW_REQUIREMENT")

            DbRequirement.update(unprocessed_req['project_id'], unprocessed_req['title'], unprocessed_req['description'],
                                 unprocessed_req['type'], unprocessed_req['rat'], unprocessed_req['translated'], 1,
                                 unprocessed_req['requirement_id'])

            print(u'REQ {} processed from an total of {}'.format(unprocessed_req['requirement_id'], len(unprocessed_reqs)))
    except Exception as ex:
        print(ex)