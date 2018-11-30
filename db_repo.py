import json
import pymysql

with open('config/config.json') as json_data_file:
    config = json.load(json_data_file)


class DbRepo:
    @staticmethod
    def insert(name, full_name, owner, stargazers_count, language, description, area):
        try:
            db = pymysql.connect(**config["mysql"])
            with db.cursor() as cursor:
                q = u"INSERT INTO `repos` (`name`, `full_name`, `owner`, `stargazers_count`," \
                    u" `language`, `description`, `area`) VALUES (%s, %s, %s, %s, %s, %s, %s);"

                cursor.execute(q, (name, full_name, owner, stargazers_count, language, description, area))
                db.commit()
        except Exception as ex:
            print(ex)
        finally:
            db.close()

    @staticmethod
    def delete_by_id(repo_id):
        try:
            db = pymysql.connect(**config["mysql"])
            with db.cursor() as cursor:
                q = u"DELETE FROM `repos` WHERE `repo_id` = %s;"
                cursor.execute(q, (repo_id))

                if cursor.lastrowid:
                    return cursor.lastrowid

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
                sql = u"SELECT * FROM `repos`" \
                      u" ORDER BY `repo_id` DESC"
                cursor.execute(sql)

            return cursor.fetchall()
        except Exception as ex:
            print(ex)
        finally:
            db.close()

    @staticmethod
    def get_by_area(area):
        try:
            db = pymysql.connect(**config["mysql"])
            with db.cursor(pymysql.cursors.DictCursor) as cursor:
                sql = u"SELECT * FROM `repos`" \
                      u" WHERE `area`=%s" \
                      u" ORDER BY `repo_id` DESC"
                cursor.execute(sql, (area))

            return cursor.fetchall()
        except Exception as ex:
            print(ex)
        finally:
            db.close()

    @staticmethod
    def delete_all():
        try:
            db = pymysql.connect(**config["mysql"])
            with db.cursor() as cursor:
                q = u"DELETE FROM `repos`;"
                cursor.execute(q)

            db.commit()
        except Exception as ex:
            print(ex)
        finally:
            db.close()