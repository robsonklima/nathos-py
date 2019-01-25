from db_project import DbProject
from db_category import DbCategory
import gapi_classify
import gapi_translate


def execute():
    try:
        projects = DbProject.get_unclassified()

        for project in projects:
            DbCategory.delete_by_project_id(project['project_id'])

            categories = gapi_classify.classify_text(project['description'])

            if categories:
                for category in categories:
                    category_split = category['name'].split('/')

                    for cat in category_split:
                        if cat:
                            DbCategory.insert(project['project_id'], cat.strip(), category['confidence'])

            DbProject.update(project['name'], project['description'], project['translated'], 1, project['project_id'])

        print(u'{} Projects Classified'.format(len(projects)))
    except Exception as ex:
        print(ex)
