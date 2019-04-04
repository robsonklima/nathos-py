import json
from os import stat_result

import pymysql

with open(u'config/config.json') as json_data_file:
    config = json.load(json_data_file)


class DbRequirement:
    @staticmethod
    def insert(project_id, title, description, type, rat, translated):
        try:
            db = pymysql.connect(**config[u"mysql"])
            with db.cursor() as cursor:
                q = u"INSERT INTO `tb_requirements` (`project_id`, `title`," \
                    u" `description`, `type`, `rat`, `translated`)" \
                    u" VALUES (%s, %s, %s, %s, %s, %s);"
                cursor.execute(q, (project_id, title, description, type, rat, translated))

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
                sql = u"SELECT * FROM `tb_requirements` " \
                      u"ORDER BY `requirement_id` ASC;"
                cursor.execute(sql)

            return cursor.fetchall()
        except Exception as ex:
            print(ex)
        finally:
            db.close()

    @staticmethod
    def get_by_project_id(project_id):
        try:
            db = pymysql.connect(**config[u"mysql"])
            with db.cursor(pymysql.cursors.DictCursor) as cursor:
                sql = u"SELECT   * " \
                      u"FROM     `tb_requirements` " \
                      u"WHERE    `project_id` = %s " \
                      u"ORDER BY `requirement_id` ASC;"

                cursor.execute(sql, (project_id))
            return cursor.fetchall()
        except Exception as ex:
            print(ex)
        finally:
            db.close()

    @staticmethod
    def get_unprocessed():
        try:
            db = pymysql.connect(**config[u"mysql"])
            with db.cursor(pymysql.cursors.DictCursor) as cursor:
                sql = u"SELECT * FROM `vw_requirements_unprocessed`;"
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
                sql = u"SELECT * FROM vw_requirements_untranslated;"
                cursor.execute(sql)

            return cursor.fetchall()
        except Exception as ex:
            print(ex)
        finally:
            db.close()

    @staticmethod
    def update(project_id, title, description, type, rat, translated, processed, requirement_id):
        try:
            db = pymysql.connect(**config[u"mysql"])
            with db.cursor() as cursor:
                q = u"UPDATE `tb_requirements` SET " \
                    u"`project_id`=%s, `title`=%s, `description`=%s, `type`=%s, " \
                    u"`rat`=%s, `translated`=%s, `processed`=%s" \
                    u" WHERE `requirement_id`=%s;"
                cursor.execute(q, (project_id, title, description, type, rat, translated, processed, requirement_id))
                db.commit()
        finally:
            db.close()

    @staticmethod
    def delete_by_id(requirement_id):
        try:
            db = pymysql.connect(**config[u"mysql"])
            with db.cursor() as cursor:
                q = u"DELETE FROM `tb_requirements` WHERE requirement_id = %s;"
                cursor.execute(q, (requirement_id))

            db.commit()
        except Exception as ex:
            print(ex)
        finally:
            db.close()