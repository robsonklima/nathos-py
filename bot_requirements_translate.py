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
from db_recommendation import DbRecommendation

def execute():
    try:
        requirements = DbRequirement.get_untranslated()

        for req in requirements:
            trans_title = gapi_translate.translate(req['title'])
            trans_desc = gapi_translate.translate(req['description'])

            if trans_title is not None and trans_desc is not None:
                DbRequirement.update(req['project_id'], trans_title, trans_desc, req['type'],
                                     req['rat'], 1, req['processed'], req['requirement_id'])

        print(u'{} Requirements Translated'.format(len(requirements)))
    except Exception as ex:
        print(ex)