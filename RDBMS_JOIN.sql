--Burada ili�kisel olarak tan�mlad���m�z de�erleri se�me i�lemi yapal�m

SELECT  U.USERNAME_, U.NAMESURNAME, U.BIRTHDATE, U.EMAIL,
A.POSTALCODE, A.ADDRESSTEXT, C.COUNTRY, D.DISTRICT, T.TOWN, CT.CITY

FROM USERS U, ADRESS AS A, COUNTRIES AS C, DISTRICTS AS D, TOWNS AS T, CITIES AS CT

WHERE U.ID=A.USERID AND
C.ID=A.COUNTRYID  AND
D.ID=A.DISTRICTID AND
T.ID=A.TOWNID AND
CT.ID=A.CITYID
--BU FROMATTA KODUN OKUNAB�L�RL��� D��T��� ���N GENELL�KLE BU �EK�LDE DE��L DE (JOIN) ANAHTAR KEL�MES� KULLANILARAK YAZILIR


--------------JOIN-------------------
SELECT U.USERNAME_, U.NAMESURNAME, U.BIRTHDATE, U.EMAIL,
A.POSTALCODE, A.ADDRESSTEXT,
C.COUNTRY, CT.CITY, T.TOWN, D.DISTRICT
FROM USERS AS U
JOIN ADRESS AS A    ON U.ID=A.USERID
JOIN COUNTRIES AS C ON C.ID=A.COUNTRYID
JOIN CITIES AS CT   ON CT.ID=A.CITYID
JOIN TOWNS AS T     ON T.ID=A.TOWNID
JOIN DISTRICTS AS D ON D.ID=A.DISTRICTID
--KOD OKUNURLU�U DAHA DA ARTTI VE GENEL KULLANIM BU �EK�LDE OLUR


