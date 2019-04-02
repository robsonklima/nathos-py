from db_project import DbProject
from db_category import DbCategory
import gapi_classify
import gapi_translate


def execute():
    try:
        projects = DbProject.get_untranslated()

        for proj in projects:
            trans_name = gapi_translate.translate(proj['name'])
            trans_desc = gapi_translate.translate(proj['description'])

            if trans_name is not None and trans_desc is not None:
                DbProject.update(trans_name, trans_desc, 1, proj['classified'], proj['project_id'])

        print(u'{} Projects Translated'.format(len(projects)))
    except Exception as ex:
        print(ex)
