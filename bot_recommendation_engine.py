import time
import logging
from apscheduler.scheduler import Scheduler

import bot_projects_translate
import bot_projects_sim
import bot_context_history_sim
import bot_requirements_translate
import bot_requirements_sim
import bot_context_history_storage


def execute_schedule():
    try:
        bot_projects_translate.execute()
        bot_requirements_translate.execute()
        bot_projects_sim.execute()
        bot_requirements_sim.execute()
        bot_context_history_sim.execute()
        bot_context_history_storage.execute()
        print(u'Schedule Done: {} \n'.format(time.strftime(u"%H:%M%:%S")))
    except Exception as ex:
        print(ex)


logging.basicConfig()
start_at = time.time()
scheduler = Scheduler()
scheduler.daemonic = False
scheduler.start()

scheduler.add_cron_job(execute_schedule, minute='*/1')