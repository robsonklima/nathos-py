import json
import pymysql

with open('config/config.json') as json_data_file:
    config = json.load(json_data_file)


class DbCategory:
    @staticmethod
    def insert(project_id, title, confidence):
        try:
            db = pymysql.connect(**config["mysql"])
            with db.cursor() as cursor:
                q = u"INSERT INTO `categories` (`project_id`, `title`, `confidence`) " \
                    u"VALUES (%s, %s, %s)"
                cursor.execute(q, (project_id, title, confidence))

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
                q = u"SELECT * FROM `categories` ORDER BY title ASC;"

                cursor.execute(q)
            return cursor.fetchall()
        except Exception as ex:
            print(ex)
        finally:
            db.close()

    @staticmethod
    def get_by_project_id(project_id):
        try:
            db = pymysql.connect(**config["mysql"])
            with db.cursor(pymysql.cursors.DictCursor) as cursor:
                q = u"SELECT * FROM `categories` WHERE `project_id` = %s;"

                cursor.execute(q, project_id)
            return cursor.fetchall()
        except Exception as ex:
            print(ex)
        finally:
            db.close()

    @staticmethod
    def delete_by_id(category_id):
        try:
            db = pymysql.connect(**config["mysql"])
            with db.cursor() as cursor:
                q = u"DELETE FROM `categories` WHERE `category_id` = %s;"
                cursor.execute(q, (category_id))

            db.commit()
        except Exception as ex:
            print(ex)
        finally:
            db.close()

    @staticmethod
    def delete_by_project_id(project_id):
        try:
            db = pymysql.connect(**config["mysql"])
            with db.cursor() as cursor:
                q = u"DELETE FROM `categories` WHERE `project_id` = %s;"
                cursor.execute(q, (project_id))

            db.commit()
        except Exception as ex:
            print(ex)
        finally:
            db.close()

    @staticmethod
    def delete_all():
        try:
            db = pymysql.connect(**config["mysql"])
            with db.cursor() as cursor:
                q = u"DELETE FROM `categories`;"
                cursor.execute(q)

            db.commit()
        except Exception as ex:
            print(ex)
        finally:
            db.close()

