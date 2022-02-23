import psycopg2
import names
import random

conn = psycopg2.connect(dbname='qa_ddl_26_99',
                        user='padawan_user_99',
                        password='123',
                        host='159.69.151.133',
                        port='5056')

cursor = conn.cursor()

for i in range(0, 70):
    if conn:
        print("Connect insert qa_ddl_24_153")

        name = names.get_first_name()

        # q_values = "'" + name + "'"


        # print(name)

        create_query = 'insert into public.employees(employee_name) values ('"'" + name + "'"')'

        cursor.execute(create_query)
        conn.commit()

cursor.close()
conn.close()