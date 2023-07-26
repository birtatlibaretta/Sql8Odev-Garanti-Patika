-- Step 1: Veritabanınızı oluşturur
CREATE DATABASE IF NOT EXISTS my_database;
USE my_database;

-- Step 2: "employee" tablosunu oluşturur
CREATE TABLE IF NOT EXISTS employee (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    birthday DATE,
    email VARCHAR(100)
);

-- Step 3: "employee" tablosuna 50 adet rastgele veri ekleyin 
INSERT INTO employee (name, birthday, email)
VALUES
    ('Berat ARSLAN', '1997-1997-1997', 'berat.arslan@example.com'),
    ('ARSLAN  BERAT', '1990-08-23', 'arslan.berat@example.com'),
    -- ... diğer verileri buraya ekleyin ...
    ('Berat', '1988-11-30', 'berat@example.com');

-- Step 4: Sütunları güncelleyecek 5 adet UPDATE işlemi yapalım (örnek olarak ilk 5 satırı güncelleyelim)
UPDATE employee SET name = 'New Name 1' WHERE id = 1;
UPDATE employee SET email = 'new.email@example.com' WHERE id = 2;
-- ... diğer güncelleme işlemlerini buraya ekleyin ...

-- Step 5: Sütunlarına göre ilgili satırı silecek 5 adet DELETE işlemi yapalım (örnek olarak son 5 satırı silelim)
DELETE FROM employee WHERE id = (SELECT MAX(id) FROM employee);
DELETE FROM employee WHERE name = 'ARSLAN BERAT';
