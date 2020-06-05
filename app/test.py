import pymysql

sql = "CREATE TABLE test (id int, name varchar(10))"

connect = pymysql.connect(host='mysql',
                         port=3306,
                         user='root',
                         password='example',
                         db='test')
cursor = connect.cursor()
cursor.execute(sql)
connect.commit()
connect.close()