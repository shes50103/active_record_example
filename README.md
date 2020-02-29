# 5xRuby SQL Workshop W2

## 從 ActiveRecord 到 SQL

開始練習前要先做資料庫設定

### 資料庫設定

到 PostgreSQL 的介面建立資料庫和資料表
在 terminal 輸入 `psql` 進入 PostgreSQL 資料庫
進入 psql 介面後有以下指令可以使用

常用指令說明:
* `\l` 列出資料庫
* `\q` 離開psql介面
* `\c` 連接資料庫
* `\d` 列出該資料庫的所有資料表
* `\d 資料表名`  列出資料表內的欄位

首先我們要建立名為 `my_db` 的資料庫
在資料庫介面輸入 `CREATE DATABASE my_db;`
建立完成後可以輸入 `\c my_db` 進入 my_db 資料庫
進入後可以看到輸入介面變成`my_db=#`
接著輸入` \d `可以發現我們的 `my_db` 資料庫應該是空的還沒有資料表


我們要做兩個資料表，一個是 users 資料表，另一個是 users_id_seq 資料表，這是 users 資料表的 id 欄位
輸入以下 SQL 指令
```
CREATE SEQUENCE users_id_seq START 1;
CREATE TABLE users(id bigint DEFAULT nextval('users_id_seq') PRIMARY KEY
,name character varying, phone character varying, age integer);
```
輸入完後再用` \d `確認是否新增資料表成功，
也可以在使用 `\d users` `\d users_id_seq` 確認這兩張資料表的欄位
確認完成後輸入 `\q` 離開psql介面！


### 動手做 ActiveRecord

完成後試著修改 `lib/activerecord_0216002/base.rb`, `lib/activerecord_0216002/relation.rb` 這兩個檔案以通過測試

有問題可以參考先參考[這篇文章](https://5xruby.tw/posts/active_record/)，大家加油:)