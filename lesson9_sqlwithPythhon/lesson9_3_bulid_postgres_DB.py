# Plese build a function to connect to PostgreSQL database
# Please build a model of environomet variables

import psycopg2
import os

def create_connection()
    conn = psycopg2.connect(
        host="host.docker.internal",
        database="postgres",
        user="postgres",
        password="raspberry",
        port="5432"
    )

def main():
    """主程式"""
    conn = create_connection()
    if not conn:
        print("無法連接到資料庫，程式結束")
        sys.exit(1)
    else:
    print("成功連接到資料庫！")

if __name__ == "__main__":
    main()