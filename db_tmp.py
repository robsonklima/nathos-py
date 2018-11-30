import json
import pymysql

with open('config/config.json') as json_data_file:
    config = json.load(json_data_file)


class DbTmp:
    @staticmethod
    def insert(distance, sentence_a, sentence_b):
        try:
            db = pymysql.connect(**config["mysql"])
            with db.cursor() as cursor:
                q = u"INSERT INTO `tmp` (distance, sentence_a, sentence_b, created_at) VALUES (%s, %s, %s, now());"

                cursor.execute(q, (distance, sentence_a, sentence_b))
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
                q = u"DELETE FROM `tmp`;"
                cursor.execute(q)

            db.commit()
        except Exception as ex:
            print(ex)
        finally:
            db.close()