# @author 李晨洋
# @date 2023/7/13 23:49
import pymysql
import pandas as pd


def get_data_from_mysql():
    db = pymysql.connect(host="localhost",
                         user='root',
                         password='root',
                         database='movie')
    cursor = db.cursor()

    sql = "SELECT * FROM movie"
    cursor.execute(sql)
    results = cursor.fetchall()
    cursor.close()
    db.close()
    # 将结果转换为 DataFrame
    columns = ['排名', '片名', '评分', '评价人数', '制片国家',
               '类型', '上映日期', '时长', '影片链接']
    df = pd.DataFrame(results, columns=columns)

    return df
