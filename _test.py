#!/usr/bin/env python3
# -*- coding: utf-8 -*-
from db_recommendation import DbRecommendation
from db_project import DbProject

projects = DbProject.get_unclassified()

print(len(projects))