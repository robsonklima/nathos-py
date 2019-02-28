import json
import pymysql

with open('config/config.json') as json_data_file:
    config = json.load(json_data_file)


class DbTask:
    @staticmethod
    def get_by_requirement_id(requirement_id):
        try:
            db = pymysql.connect(**config["mysql"])
            with db.cursor(pymysql.cursors.DictCursor) as cursor:
                q = u"SELECT * FROM `tasks` WHERE `requirement_id` = %s;"

                cursor.execute(q, requirement_id)
            return cursor.fetchall()
        except Exception as ex:
            print(ex)
        finally:
            db.close()