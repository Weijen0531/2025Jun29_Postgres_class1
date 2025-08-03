# Plese build a function to connect to PostgreSQL database
# Please build a model of environomet variables

import psycopg2
import os

def execute_query(conn, query):
    """執行 SQL 查詢"""
    try:
        with conn.cursor() as cursor:
            cursor.execute(query)
            result = cursor.fetchall()
            return result
    except psycopg2.Error as e:
        print(f"執行查詢時發生錯誤: {e}")
        return None

def create_connection():
    conn = psycopg2.connect(
        host="host.docker.internal",
        database="postgres",
        user="postgres",
        password="raspberry",
        port="5432"
    )
    return conn

def main():
    """主程式"""
    conn = create_connection()
    if not conn:
        print("無法連接到資料庫，程式結束")
        return
    else:
        print("成功連接到資料庫！")
        query = """
        SELECT count(*) AS "筆數“:
        FROM "台鐵車站資訊“;
        """
        result = execute_query(conn,query)
        print("台鐵車站資訊:",result)
        conn.close()

if __name__ == "__main__":
    main()