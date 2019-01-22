import json
from os import stat_result

import pymysql

with open(u'config/config.json') as json_data_file:
    config = json.load(json_data_file)


class DbRequirement:
    @staticmethod
    def insert(project_id, title, description, type, rat, language):
        try:
            db = pymysql.connect(**config[u"mysql"])
            with db.cursor() as cursor:
                q = u"INSERT INTO `requirements` (`project_id`, `title`," \
                    u" `description`, `type`, `rat`, `language`, `created_at`)" \
                    u" VALUES (%s, %s, %s, %s, %s, %s, now());"
                cursor.execute(q, (project_id, title, description, type, rat, language))

            db.commit()
        except Exception as ex:
            print(ex)
        finally:
            db.close()

    @staticmethod
    def get_all():
        try:
            db = pymysql.connect(**config[u"mysql"])
            with db.cursor(pymysql.cursors.DictCursor) as cursor:
                sql = u"SELECT * FROM `requirements` " \
                      u"ORDER BY `requirement_id` ASC;"
                cursor.execute(sql)

            return cursor.fetchall()
        except Exception as ex:
            print(ex)
        finally:
            db.close()

    @staticmethod
    def get_untranslated():
        try:
            db = pymysql.connect(**config[u"mysql"])
            with db.cursor(pymysql.cursors.DictCursor) as cursor:
                sql = u"SELECT * FROM requirements_get_untranslated;"
                cursor.execute(sql)

            return cursor.fetchall()
        except Exception as ex:
            print(ex)
        finally:
            db.close()

    @staticmethod
    def get_unrecommended():
        try:
            db = pymysql.connect(**config[u"mysql"])
            with db.cursor(pymysql.cursors.DictCursor) as cursor:
                sql = u"SELECT 	* FROM requirements_get_unrecommended;"
                cursor.execute(sql)
            return cursor.fetchall()
        except Exception as ex:
            print(ex)
        finally:
            db.close()

    @staticmethod
    def update(project_id, title, description, type, rat, language, requirement_id):
        try:
            db = pymysql.connect(**config[u"mysql"])
            with db.cursor() as cursor:
                q = u"UPDATE `requirements` SET " \
                    u"`project_id`=%s, `title`=%s, `description`=%s, `type`=%s, " \
                    u"`rat`=%s, `language`=%s, `bot_modified_at`=now() " \
                    u" WHERE `requirement_id`=%s;"
                cursor.execute(q, (project_id, title, description, type, rat, language, requirement_id))
                db.commit()
        finally:
            db.close()

    @staticmethod
    def delete_by_id(requirement_id):
        try:
            db = pymysql.connect(**config[u"mysql"])
            with db.cursor() as cursor:
                q = u"DELETE FROM `requirements` WHERE requirement_id = %s;"
                cursor.execute(q, (requirement_id))

            db.commit()
        except Exception as ex:
            print(ex)
        finally:
            db.close()