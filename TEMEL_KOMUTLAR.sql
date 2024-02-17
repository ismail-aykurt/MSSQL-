----------TEMEL SQL KOMUTLARIMIZ (SELECT,INSERT,UPDATE,DELETE,TRUNCATE)-------------------------
--SELECT:Bu komut verisetinden verileri alma iþlemi gerçekleþtirir mesela Customers tablosundaki verileri alalým

SELECT * FROM CUSTOMERS

--INSERT INTO:Bu komut veri setine deðer eklememizi saðlar. Kolonlarýn isimlerini tek tek sýrasý ile girerek 
--            bu kolonlarýn sýrasýna göre yeni deðerleri veriyoruz.
INSERT INTO CUSTOMERS (NAMESURNAME, TCNUMBER,GENDER,EMAIL, BIRHTDATE, CITY, DISTRICT, TELNR1, TELNR2) 
VALUES ('AHMET BAÞAR', 123456789785, 'E', 'ahmet@xyz.com', '1990-12-01', 'ANKARA', 'ÇANKAYA', '(564)2125458', '(564)2125458')


--UPDATE: Bu komut da veri setinde bir veya birden fazla kolonda deðiþiklik yapmayý saðlar
UPDATE CUSTOMERS SET NAMESURNAME='AHMET BAÞAR' --Tüm namesurname deðerlerini ahmet baþar yaptý
--mesela ülke deðerleri NULL biz bunlarý türkiye olarak deðiþtirelim
UPDATE CUSTOMERS SET COUNTRY='TÜRKÝYE'

--Þimdi de yaþlarýný hesaplayalým
UPDATE CUSTOMERS SET AGE = DATEDIFF(YEAR, BIRHTDATE, '2024-02-17')


--DELETE:Bu komut da verisetindeki deðerleri silmeyi saðlar. Ancak dikkat etmek gerekir yanlýþlýkla tüm verisetini silebiliriz
DELETE FROM CUSTOMERS

--TRUNCATE: Bu komut ile de verisetini tamamen sileriz. Delete ile farký. Delete verisetini siler ancak ID kaçta kalmýþsa ordan
          --ekleme iþlemi devam eder. Ancak truncate ID kýsmýný direkt 1 numaradan baþlatýr
TRUNCATE TABLE CUSTOMERS