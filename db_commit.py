import json
import pymysql

with open('config/config.json') as json_data_file:
    config = json.load(json_data_file)


class DbCommit:
    @staticmethod
    def insert(message, author_login, date, repo_id):
        try:
            db = pymysql.connect(**config["mysql"])
            with db.cursor() as cursor:
                q = u"INSERT INTO `commits` (`message`, `author_login`, `date`, `repo_id`, `created_at`) " \
                    u"VALUES (%s, %s, %s, %s, now())"
                cursor.execute(q, (message, author_login, date, repo_id))

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
                q = u"SELECT * FROM `commits` " \
                      u"ORDER BY `commit_id` DESC"
                cursor.execute(q)

            return cursor.fetchall()
        except Exception as ex:
            print(ex)
        finally:
            db.close()

    @staticmethod
    def get_by_repo_id(repo_id):
        try:
            db = pymysql.connect(**config["mysql"])
            with db.cursor(pymysql.cursors.DictCursor) as cursor:
                q = u"SELECT * FROM `commits`" \
                      u" WHERE `repo_id`=%s" \
                      u" ORDER BY `commit_id` DESC"
                cursor.execute(q, (repo_id))
            return cursor.fetchall()
        except Exception as ex:
            print(ex)
        finally:
            db.close()