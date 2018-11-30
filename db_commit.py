import json
import mysql.connector

with open('config/config.json') as json_data_file:
    config = json.load(json_data_file)


class DbCommit:
    @staticmethod
    def get_all_commits():
        try:
            db = mysql.connector.connect(**config["mysql"])
            cursor = db.cursor(buffered=True)
            cursor.execute(u"SELECT * FROM commits")

            return cursor.fetchall()
        except Exception as e:
            print(e)
        finally:
            cursor.close()
            db.close()

    @staticmethod
    def insert_commit(message, author_login, date, repo_id):
        try:
            db = mysql.connector.connect(**config["mysql"])
            cursor = db.cursor(buffered=True)
            query = u"INSERT INTO commits (message, author_login, date, repo_id, created_at) " \
                    u"VALUES ('{message}', '{author_login}', '{date}', {repo_id}, now())" \
            .format(message=message, author_login=author_login, date=date, repo_id=repo_id)

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
    def get_commits_by_repo_id(repo_id):
        try:
            db = mysql.connector.connect(**config["mysql"])
            cursor = db.cursor(buffered=True)
            cursor.execute(u"SELECT commit_id, message FROM commits WHERE repo_id = {0}".format(repo_id))

            return cursor.fetchall()
        except Exception as e:
            print(e)
        finally:
            cursor.close()
            db.close()