import json
import mysql.connector

with open('config/config.json') as json_data_file:
    config = json.load(json_data_file)


class DbRepo:
    @staticmethod
    def insert_repo(name, full_name, owner, stargazers_count, language, description, area):
        try:
            db = mysql.connector.connect(**config["mysql"])
            cursor = db.cursor(buffered=True)

            query = u"INSERT INTO repos (name, full_name, owner, stargazers_count, " \
                    u"language, description, area, created_at) " \
                    u"VALUES ('{0}', '{1}', '{2}', {3}, '{4}', '{5}', '{6}', now())" \
                    .format(name, full_name, owner, stargazers_count, language, description, area)

            cursor.execute(query)
            db.commit()

            if cursor.lastrowid:
                return cursor.lastrowid

        except Exception as e:
            print(e)
        finally:
            cursor.close()
            db.close()

    @staticmethod
    def get_all_repos():
        try:
            db = mysql.connector.connect(**config["mysql"])
            cursor = db.cursor(buffered=True)
            cursor.execute(u"SELECT * FROM repos")

            return cursor.fetchall()
        except Exception as e:
            print(e)
        finally:
            cursor.close()
            db.close()

    @staticmethod
    def get_by_area(area):
        try:
            db = mysql.connector.connect(**config["mysql"])
            cursor = db.cursor(buffered=True)
            cursor.execute(u"SELECT * FROM repos WHERE area = '{0}'".format(area))

            return cursor.fetchall()
        except Exception as e:
            print(e)
        finally:
            cursor.close()
            db.close()

    @staticmethod
    def delete_all_repos():
        try:
            db = mysql.connector.connect(**config["mysql"])
            cursor = db.cursor(buffered=True)
            cursor.execute(u"DELETE FROM repos")
            db.commit()
        except Exception as e:
            print(e)
        finally:
            cursor.close()
            db.close()