import pymysql
import csv


def write_to_table():
    # 连接MYSQL数据库（注意：charset参数是utf8m64而不是utf-8）
    db = pymysql.connect(host="localhost",
                         user='root',
                         password='root',
                         database='movie')
    # 创建对象
    cursor = db.cursor()

    # 读取csv文件
    with open('../../data/movie.csv', 'r', encoding='utf-8') as f:
        read = csv.reader(f)
        for each in list(read):
            i = tuple(each)
            # print(i)
            # SQL语句添加数据
            sql = "INSERT INTO movie VALUES" + str(i)
            # 执行SQL语句
            cursor.execute(sql)
        # 提交数据
        db.commit()
        # #关闭游标
        cursor.close()
        # #关闭数据库
        db.close()


if __name__ == '__main__':
    write_to_table()
