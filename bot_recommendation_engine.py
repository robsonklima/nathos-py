import bot_projects_translate
import bot_projects_sim
import bot_context_history_sim
import bot_search
import bot_requirements_translate
import bot_requirements_sim
import bot_context_history_storage

bot_projects_translate.execute()
bot_requirements_translate.execute()

bot_projects_sim.execute()
bot_requirements_sim.execute()

#bot_context_history_sim.execute()
#bot_search.execute()
#bot_context_history_storage.execute()