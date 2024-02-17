----------TEMEL SQL KOMUTLARIMIZ (SELECT,INSERT,UPDATE,DELETE,TRUNCATE)-------------------------
--SELECT:Bu komut verisetinden verileri alma i�lemi ger�ekle�tirir mesela Customers tablosundaki verileri alal�m

SELECT * FROM CUSTOMERS

--INSERT INTO:Bu komut veri setine de�er eklememizi sa�lar. Kolonlar�n isimlerini tek tek s�ras� ile girerek 
--            bu kolonlar�n s�ras�na g�re yeni de�erleri veriyoruz.
INSERT INTO CUSTOMERS (NAMESURNAME, TCNUMBER,GENDER,EMAIL, BIRHTDATE, CITY, DISTRICT, TELNR1, TELNR2) 
VALUES ('AHMET BA�AR', 123456789785, 'E', 'ahmet@xyz.com', '1990-12-01', 'ANKARA', '�ANKAYA', '(564)2125458', '(564)2125458')


--UPDATE: Bu komut da veri setinde bir veya birden fazla kolonda de�i�iklik yapmay� sa�lar
UPDATE CUSTOMERS SET NAMESURNAME='AHMET BA�AR' --T�m namesurname de�erlerini ahmet ba�ar yapt�
--mesela �lke de�erleri NULL biz bunlar� t�rkiye olarak de�i�tirelim
UPDATE CUSTOMERS SET COUNTRY='T�RK�YE'

--�imdi de ya�lar�n� hesaplayal�m
UPDATE CUSTOMERS SET AGE = DATEDIFF(YEAR, BIRHTDATE, '2024-02-17')


--DELETE:Bu komut da verisetindeki de�erleri silmeyi sa�lar. Ancak dikkat etmek gerekir yanl��l�kla t�m verisetini silebiliriz
DELETE FROM CUSTOMERS

--TRUNCATE: Bu komut ile de verisetini tamamen sileriz. Delete ile fark�. Delete verisetini siler ancak ID ka�ta kalm��sa ordan
          --ekleme i�lemi devam eder. Ancak truncate ID k�sm�n� direkt 1 numaradan ba�lat�r
TRUNCATE TABLE CUSTOMERS