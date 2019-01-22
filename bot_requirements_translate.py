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
        requirements = DbRequirement.get_untranslated()

        for requirement in requirements:
            translated_title = gapi_translate.translate(requirement['title'])
            translated_description = gapi_translate.translate(requirement['description'])

            if translated_title is not None and translated_description is not None:
                DbRequirement.update(requirement['project_id'], translated_title, translated_description,
                                     requirement['type'], requirement['rat'], 1, requirement['processed'],
                                     requirement['requirement_id'])

        print(u'Requirements Translated: {}'.format(len(requirements)))
    except Exception as ex:
        print(ex)