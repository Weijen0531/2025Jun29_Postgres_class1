SELECT count(*) AS "筆數"
FROM "台鐵車站資訊"


SELECT count(name) AS "台北車站數"
FROM "台鐵車站資訊"
WHERE "stationAddrTw" LIKE '%臺北%';

SELECT *
FROM "每日各站進出站人數" LEFT JOIN "台鐵車站資訊" ON "每日各站進出站人數"."車站代碼" =  "台鐵車站資訊"."stationCode"
WHERE "stationName" = '基隆'

/*
 * 全省各站點2022年進站總人數
 */

SELECT "name" AS 站名,COUNT("name") AS 筆數,AVG("進站人數") AS "進站人數"
FROM "每日各站進出人數" LEFT JOIN "台鐵車站資訊" ON "車站代碼" = "stationCode"
WHERE "日期" BETWEEN '2022-01-01' AND '2022-12-31'
GROUP BY "name"

SELECT "name" AS 站名,date_part('year',"日期") AS "年份",COUNT("name") AS 筆數,AVG("進站人數") AS "進站人數"
FROM "每日各站進出人數" LEFT JOIN "台鐵車站資訊" ON "車站代碼" = "stationCode"
WHERE "日期" BETWEEN '2022-01-01' AND '2022-12-31'
GROUP BY "name","年份"

SELECT "name" AS 站名,date_part('year',"日期") AS "年份",COUNT("name") AS 筆數,AVG("進站人數") AS "進站人數"
FROM "每日各站進出人數" LEFT JOIN "台鐵車站資訊" ON "車站代碼" = "stationCode"
WHERE "name" = '基隆'
GROUP BY "name","年份"
ORDER BY "進站人數" DESC;

-- 從表格每日各站進出人數 台北火車站 基隆火車站 2020 2021 2022 年 每年進站人數
SELECT "name" AS 站名, date_part('year', "日期") AS 年份, SUM("進站人數") AS 年進站人數n
FROM "每日各站進出人數" LEFT JOIN "台鐵車站資訊" ON "車站代碼" = "stationCode"n
WHERE "name" IN ('台北', '基隆') 
    AND date_part('year', "日期") IN (2020, 2021, 2022)n
GROUP BY "name", 年份nORDER BY "name", 年份;

-- 從表格每日各站進出人數 查詢2020年 每日每日進站人數超過20000人的火車站
SELECT "name" AS 站名, "日期", "進站人數"
FROM "每日各站進出人數" LEFT JOIN "台鐵車站資訊" ON "車站代碼" = "stationCode"
WHERE date_part('year', "日期") = 2020 AND "進站人數" > 20000
ORDER BY "日期", "name";


