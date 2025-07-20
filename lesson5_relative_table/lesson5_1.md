# 建立關聯資料庫
``` sql
FOREIGN KEY(fk_columns) 
REFERENCES parent_table(parent_key_columns)
[ON DELETE delete_action]
[ON UPDATE update_action]
```

ALTER TABLE 在 PostgreSQL 中的意思是「修改現有資料表的結構」。你可以用這個指令來：

* 新增欄位（Add column）
* 刪除欄位（Drop column）
* 修改欄位型態或預設值（Alter column type/default）
* 重新命名欄位或資料表（Rename column/table）
* 新增或移除約束條件（Add/drop constraints，如主鍵、外鍵、唯一等）

``` sql
ALTER TABLE table_name action;
```

### 新增欄位（Add column）
``` sql
ALTER TABLE users ADD COLUMN age INT;
```

### 刪除欄位
``` sql
ALTER TABLE users DROP COLUMN age;
```

### 修改欄位型態
``` sql
ALTER TABLE users ALTER COLUMN age TYPE VARCHAR(10);
```

