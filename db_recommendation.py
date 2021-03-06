import json
import pymysql

with open('config/config.json') as json_data_file:
    config = json.load(json_data_file)


class DbRecommendation:
    @staticmethod
    def insert(distance, requirement_a_id, requirement_b_id, type):
        try:
            db = pymysql.connect(**config["mysql"])
            with db.cursor() as cursor:
                q = u"INSERT INTO `tb_recommendations` (`distance`, `requirement_a_id`, `requirement_b_id`, `type`)" \
                    u" VALUES (%s, %s, %s, %s);"

                cursor.execute(q, (distance, requirement_a_id, requirement_b_id, type))
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
                q = u"SELECT * FROM `tb_recommendations` " \
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
                q = u"DELETE FROM `tb_recommendations` WHERE recommendation_id = %s;"
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
                q = u"DELETE FROM `tb_recommendations`;"
                cursor.execute(q)

            db.commit()
        except Exception as ex:
            print(ex)
        finally:
            db.close()

    @staticmethod
    def delete_by_type(type):
        try:
            db = pymysql.connect(**config["mysql"])
            with db.cursor() as cursor:
                q = u"DELETE FROM `tb_recommendations` WHERE `type`=%s;"
                cursor.execute(q, (type))

            db.commit()
        except Exception as ex:
            print(ex)
        finally:
            db.close()

    @staticmethod
    def delete_by_requirement_id(requirement_id):
        try:
            db = pymysql.connect(**config["mysql"])
            with db.cursor() as cursor:
                q = u"DELETE FROM `tb_recommendations` WHERE `requirement_a_id`=%s;"
                cursor.execute(q, (requirement_id))

            db.commit()
        except Exception as ex:
            print(ex)
        finally:
            db.close()