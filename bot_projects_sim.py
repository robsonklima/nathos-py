from db_project import DbProject
from db_category import DbCategory
import gapi_classify
import gapi_translate


def execute():
    try:
        # Translate Projects
        projects = DbProject.get_all_projects()

        for project in projects:
            if project[3] != "en":
                translated_name = gapi_translate.translate(project[1])
                translated_description = gapi_translate.translate(project[2])
                DbProject.update(translated_name, project[2], "en", project[0])

        # Classify / Categorize Projects
        projects = DbProject.get_unclassified_projects()

        for project in projects:
            categories = gapi_classify.classify_text(project[2])

            if categories:
                for category in categories:
                    category_split = category['name'].split('/')

                    for cat in category_split:
                        if cat:
                            DbCategory.insert_category(project[0], cat.strip(), category['confidence'])
    except Exception as ex:
        print(ex)
