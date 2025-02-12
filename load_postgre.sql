'''
=================================================
Program ini dibuat untuk memasukan data Sneakers_Kick_Avenue.csv ke dalam postgreSQL 
=================================================
'''



CREATE TABLE Sneakers(
   id SERIAL PRIMARY KEY,
   nama_produk text, 
   harga int,
   gambar text,
   link_produk text
);

COPY Sneakers(nama_produk, harga, gambar, link_produk)
FROM 'C:\tmp\Sneakers_Kick_Avenue.csv'
DELIMITER ','
CSV HEADER;

SELECT * FROM Sneakers

-- database ini menurut saya sudah benar jadi tidak perlu dilakukan normalisasi