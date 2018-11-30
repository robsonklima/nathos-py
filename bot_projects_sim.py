from db_project import DbProject
from db_category import DbCategory
import gapi_classify
import gapi_translate


def execute():
    try:
        # Translate Projects
        projects = DbProject.get_all()

        for project in projects:
            if project['language'] != "en":
                translated_name = gapi_translate.translate(project['name'])
                translated_description = gapi_translate.translate(project['description'])
                DbProject.update(translated_name, translated_description, "en", project['project_id'])

        # Classify / Categorize Projects
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
