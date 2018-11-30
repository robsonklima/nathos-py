#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import time
from apscheduler.scheduler import Scheduler

import bot_projects_sim
import bot_context_history_sim
import bot_search
import bot_requirements_sim
import bot_context_history_storage


#def execute_schedule():
print(u"recommendation_engine started: {}".format(time.strftime(u"%H:%M%:%S")))

bot_projects_sim.execute()
print(u"bot_projects_similarity finished")

#bot_context_history_sim.execute()
print(u"bot_context_history_sim finished")

#bot_search.execute()
print(u"bot_search finished")

#bot_requirements_sim.execute()
print(u"bot_requirements_sim finished")

#bot_context_history_storage.execute()
print(u"bot_context_history_storage finished")

print(u"recommendation_engine finished: {}".format(time.strftime(u"%H:%M%:%S")))

#start_at = time.time()
#scheduler = Scheduler()
#scheduler.daemonic = False
#scheduler.start()

#scheduler.add_cron_job(execute_schedule, minute='*/60')