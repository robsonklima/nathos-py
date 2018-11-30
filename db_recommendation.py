import json
import pymysql

with open('config/config.json') as json_data_file:
    config = json.load(json_data_file)


class DbRecommendation:
    @staticmethod
    def insert(distance, sentence_a, sentence_b, type):
        try:
            db = pymysql.connect(**config["mysql"])
            with db.cursor() as cursor:
                q = u"INSERT INTO `recommendations` (`distance`, `sentence_a`, `sentence_b`, `type`, `created_at`)" \
                    u" VALUES (%s, %s, %s, %s, now());"

                cursor.execute(q, (distance, sentence_a, sentence_b, type))
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
                q = u"SELECT * FROM `recommendations` " \
                    u"ORDER BY `recommendation_id` DESC"
                cursor.execute(q)

            return cursor.fetchall()
        except Exception as ex:
            print(ex)
        finally:
            db.close()

    @staticmethod
    def delete_by_id(recommendation_id):
        try:
            db = pymysql.connect(**config["mysql"])
            with db.cursor() as cursor:
                q = u"DELETE FROM `recommendations` WHERE recommendation_id = %s;"
                cursor.execute(q, (recommendation_id))

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
                q = u"DELETE FROM `recommendations`;"
                cursor.execute(q)

            db.commit()
        except Exception as ex:
            print(ex)
        finally:
            db.close()