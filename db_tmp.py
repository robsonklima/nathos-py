import json
import mysql.connector

with open('config/config.json') as json_data_file:
    config = json.load(json_data_file)


class DbTmp:
    @staticmethod
    def insert_tmp(distance, sentence_a, sentence_b):
        try:
            db = mysql.connector.connect(**config["mysql"])
            cursor = db.cursor(buffered=True)
            query = u"INSERT INTO tmp " \
                    u"(distance, sentence_a, sentence_b, created_at) " \
                    u"VALUES ({0}, '{1}', '{2}', now())" \
                    .format(distance, sentence_a, sentence_b)
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
    def delete_all_tmp():
        try:
            db = mysql.connector.connect(**config["mysql"])
            cursor = db.cursor(buffered=True)
            cursor.execute(u"DELETE FROM tmp")
            db.commit()
        except Exception as e:
            print(e)
        finally:
            cursor.close()
            db.close()