import json
import pymysql

with open('config/config.json') as json_data_file:
    config = json.load(json_data_file)


class DbProject:
    @staticmethod
    def insert(name, description):
        try:
            db = pymysql.connect(**config["mysql"])
            with db.cursor() as cursor:
                q = u"INSERT INTO `tb_projects` (`name`, `description`) " \
                    u"VALUES (%s, %s)"
                cursor.execute(q, (name, description))

            db.commit()
        except Exception as ex:
            print(ex)
        finally:
            db.close()

    @staticmethod
    def get_all():
        try:
            db = pymysql.connect(**config["mysql"])
            with db.cursor(pymysql.cursors.DictCursor) as cursor:
                q = u"SELECT * FROM `tb_projects` " \
                      u"ORDER BY `project_id` ASC;"
                cursor.execute(q)

            return cursor.fetchall()
        except Exception as ex:
            print(ex)
        finally:
            db.close()

    @staticmethod
    def get_by_category(category):
        try:
            db = pymysql.connect(**config["mysql"])
            with db.cursor(pymysql.cursors.DictCursor) as cursor:
                q = u"SELECT 	 p.*" \
                    u" FROM		 tb_projects p" \
                    u" INNER JOIN	 tb_categories c ON p.project_id = c.project_id" \
                    u" WHERE		 c.title = %s;"

                cursor.execute(q, category)
            return cursor.fetchall()
        except Exception as ex:
            print(ex)
        finally:
            db.close()

    @staticmethod
    def get_unclassified():
        try:
            db = pymysql.connect(**config["mysql"])
            with db.cursor(pymysql.cursors.DictCursor) as cursor:
                q = u"SELECT * FROM vw_projects_unclassified;"

                cursor.execute(q)
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
                sql = u"SELECT * FROM vw_projects_untranslated;"
                cursor.execute(sql)

            return cursor.fetchall()
        except Exception as ex:
            print(ex)
        finally:
            db.close()

    @staticmethod
    def delete_by_id(project_id):
        try:
            db = pymysql.connect(**config["mysql"])
            with db.cursor() as cursor:
                q = u"DELETE FROM `tb_projects` WHERE project_id = %s;"
                cursor.execute(q, (project_id))

            db.commit()
        except Exception as ex:
            print(ex)
        finally:
            db.close()

    @staticmethod
    def update(name, description, translated, classified, project_id):
        try:
            db = pymysql.connect(**config["mysql"])
            with db.cursor() as cursor:
                q = u" UPDATE `tb_projects` SET `name`=%s, `description`=%s, `translated`=%s, " \
                    u"`classified`=%s" \
                    u" WHERE `project_id` = %s"
                cursor.execute(q, (name, description, translated, classified, project_id))
                db.commit()
        finally:
            db.close()