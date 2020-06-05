import pymysql

# sql = "CREATE TABLE test (id int, name varchar(10))"
sql = "INSERT INTO test VALUES(10,'サトシ')"

connect = pymysql.connect(host='mysql',
                         port=3306,
                         user='root',
                         password='example',
                         db='test',
                         charset='utf8mb4')
cursor = connect.cursor()
cursor.execute(sql)
connect.commit()
connect.close()