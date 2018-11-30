import json
import mysql.connector

with open('config/config.json') as json_data_file:
    config = json.load(json_data_file)


class DbCategory:
    @staticmethod
    def get_all_categories():
        try:
            db = mysql.connector.connect(**config["mysql"])
            cursor = db.cursor(buffered=True)
            cursor.execute(u"SELECT * FROM categories")

            return cursor.fetchall()
        except Exception as e:
            print(e)
        finally:
            cursor.close()
            db.close()

    @staticmethod
    def get_categories_by_project(project_id):
        try:
            db = mysql.connector.connect(**config["mysql"])
            cursor = db.cursor(buffered=True)
            cursor.execute(u"SELECT * FROM categories WHERE project_id = {}".format(project_id))

            return cursor.fetchall()
        except Exception as e:
            print(e)
        finally:
            cursor.close()
            db.close()

    @staticmethod
    def delete_all_categories():
        try:
            db = mysql.connector.connect(**config["mysql"])
            cursor = db.cursor(buffered=True)
            cursor.execute(u"DELETE FROM categories")
            db.commit()
        except Exception as e:
            print(e)
        finally:
            cursor.close()
            db.close()

    @staticmethod
    def insert_category(project_id, title, confidence):
        try:
            db = mysql.connector.connect(**config["mysql"])
            cursor = db.cursor(buffered=True)
            query = u"INSERT INTO categories (project_id, title, confidence)  " \
                    u"VALUES ({}, '{}', {})".format(project_id, title, confidence)
            cursor.execute(query)
            db.commit()

            if cursor.lastrowid:
                return cursor.lastrowid

        except Exception as e:
            print(e)
        finally:
            cursor.close()
            db.close()