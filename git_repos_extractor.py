#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import requests
import json

headers = {"Authorization": "Bearer 0f0f023e00b7b889130f8fedc17bad30690651aa"}


class GitReposExtractor:
    @staticmethod
    def extract_all_by_topic(topic, language):
        try:
            url = u'https://api.github.com/search/repositories?q={0}'\
                  u'+language:{1}+topic:{0}&sort=stars&order=desc'.format(topic, language)

            response = requests.get(url, headers=headers)
            response.raise_for_status()
            repos = json.dumps(response.json(), sort_keys=True, indent=4)
            repos = json.loads(repos)

            return repos
        except Exception as ex:
            print(ex)