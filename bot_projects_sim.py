from db_project import DbProject
from db_category import DbCategory
import gapi_classify
import gapi_translate


def execute():
    try:
        # Translate Projects
        projects = DbProject.get_untranslated()

        for project in projects:
            if project['user_modified_at'] > project['bot_modified_at'] or project['bot_modified_at'] is None:
                translated_name = gapi_translate.translate(project['name'])
                translated_description = gapi_translate.translate(project['description'])
                if translated_name is not None and translated_description is not None:
                    DbProject.update(translated_name, translated_description, 'en', project['project_id'])


        # Classify Projects
        projects = DbProject.get_unclassified()

        for project in projects:
            categories = gapi_classify.classify_text(project['description'])

            if categories:
                for category in categories:
                    category_split = category['name'].split('/')

                    for cat in category_split:
                        if cat:
                            DbCategory.insert(project['project_id'], cat.strip(), category['confidence'])
    except Exception as ex:
        print(ex)
