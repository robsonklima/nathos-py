import json
import pymysql

with open('config/config.json') as json_data_file:
    config = json.load(json_data_file)


class DbRisk:
    @staticmethod
    def get_by_project_id(project_id):
        try:
            db = pymysql.connect(**config["mysql"])
            with db.cursor(pymysql.cursors.DictCursor) as cursor:
                q = u"SELECT * FROM `risks` WHERE `project_id` = %s;"

                cursor.execute(q, project_id)
            return cursor.fetchall()
        except Exception as ex:
            print(ex)
        finally:
            db.close()