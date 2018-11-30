import json
import mysql.connector

with open('config/config.json') as json_data_file:
    config = json.load(json_data_file)


class DbProject:
    @staticmethod
    def get_all_projects():
        try:
            db = mysql.connector.connect(**config["mysql"])
            cursor = db.cursor(buffered=True)
            cursor.execute(u"SELECT * FROM projects ORDER BY project_id DESC")

            return cursor.fetchall()
        except Exception as e:
            print(e)
        finally:
            cursor.close()
            db.close()

    @staticmethod
    def get_projects_by_category(category):
        try:
            db = mysql.connector.connect(**config["mysql"])
            cursor = db.cursor(buffered=True)
            cursor.execute(u"SELECT 	 p.*"
                           u"FROM		 projects p"
                           u"INNER JOIN	 categories c ON p.project_id = c.project_id"
                           u"WHERE		 c.title = '{0}';".format(category))

            return cursor.fetchall()
        except Exception as e:
            print(e)
        finally:
            cursor.close()
            db.close()

    @staticmethod
    def get_unclassified_projects():
        try:
            db = mysql.connector.connect(**config["mysql"])
            cursor = db.cursor(buffered=True)
            cursor.execute(u"SELECT p.* FROM projects p LEFT JOIN categories c "
                           u"ON p.project_id = c.project_id WHERE c.category_id IS NULL;")

            return cursor.fetchall()
        except Exception as e:
            print(e)
        finally:
            cursor.close()
            db.close()

    @staticmethod
    def update(name, description, language, project_id):
        try:
            db = mysql.connector.connect(**config["mysql"])
            cursor = db.cursor(buffered=True)

            q = u"UPDATE projects SET"

            if name:
                q += u" name = '{}',".format(name)
            if description:
                q += u" description = '{}',".format(description)
            if language:
                q += u" language = '{}'".format(language)

            q += u" WHERE project_id = {};".format(project_id)

            cursor.execute(q)
            db.commit()
        except Exception as e:
            print(e)
        finally:
            cursor.close()
            db.close()