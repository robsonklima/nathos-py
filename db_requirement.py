import json
import mysql.connector

with open('config/config.json') as json_data_file:
    config = json.load(json_data_file)


class DbRequirement:
    @staticmethod
    def get_all_requirements():
        try:
            db = mysql.connector.connect(**config["mysql"])
            cursor = db.cursor(buffered=True)
            cursor.execute(u"SELECT * FROM requirements ORDER BY requirement_id DESC")

            return cursor.fetchall()
        except Exception as e:
            print(e)
        finally:
            cursor.close()
            db.close()

    @staticmethod
    def get_untranslated_requirements():
        try:
            db = mysql.connector.connect(**config["mysql"])
            cursor = db.cursor(buffered=True)
            cursor.execute(u"SELECT * FROM requirements r "
                           u"WHERE r.language IS NULL OR r.language <> 'en'"
                           u"ORDER BY r.requirement_id ASC;")

            return cursor.fetchall()
        except Exception as e:
            print(e)
        finally:
            cursor.close()
            db.close()

    @staticmethod
    def update(project_id, title, description, type, rat, language, requirement_id):
        try:
            db = mysql.connector.connect(**config["mysql"])
            cursor = db.cursor(buffered=True)

            q = u"UPDATE requirements SET"

            if project_id:
                q += u" project_id = {},".format(project_id)
            if title:
                q += u" title = '{}',".format(title)
            if description:
                q += u" description = '{}',".format(description)
            if type:
                q += u" type = '{}',".format(type)
            if rat:
                q += u" rat = '{}',".format(rat)
            if language:
                q += u" language = '{}'".format(language)

            q += u" WHERE requirement_id = {};".format(requirement_id)

            cursor.execute(q)
            db.commit()
        except Exception as e:
            print(e)
        finally:
            cursor.close()
            db.close()