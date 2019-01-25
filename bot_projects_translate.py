from db_project import DbProject
from db_category import DbCategory
import gapi_classify
import gapi_translate


def execute():
    try:
        projects = DbProject.get_untranslated()

        for project in projects:
            translated_name = gapi_translate.translate(project['name'])
            translated_description = gapi_translate.translate(project['description'])
            if translated_name is not None and translated_description is not None:
                DbProject.update(translated_name, translated_description, 1, project['classified'], project['project_id'])

        print(u'{} Projects Translated'.format(len(projects)))
    except Exception as ex:
        print(ex)
