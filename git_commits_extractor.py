#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import requests
import json

headers = { u"Authorization": u"Bearer 0f0f023e00b7b889130f8fedc17bad30690651aa" }


class GitCommitsExtractor:
    @staticmethod
    def extract_all_by_owner_repo(owner, repo, page, amount):
        try:
            url = u'https://api.github.com/repos/{0}/{1}/commits?' \
                  u'page={2}&per_page={3}'.format(owner, repo, page, amount)
            response = requests.get(url, headers=headers)
            response.raise_for_status()
            commits = response.json()

            while 'next' in response.links.keys():
                response = requests.get(response.links['next']['url'], headers=headers)
                commits.extend(response.json())

            print(u"Extracted repos from {0}, {1} commits extracted".format(owner, len(commits)))
            return commits
        except Exception as ex:
            print(ex)