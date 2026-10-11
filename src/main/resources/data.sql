-- Dane startowe aplikacji. Tabele tworzy Hibernate z encji, a ten plik Spring Boot uruchamia zaraz potem.
-- LAB 01: dopiszcie tu konta wszystkich osób z zespołu (reguła R1.03).
-- LAB 02: dopiszcie dane do swoich tabel (kolejność: najpierw tabele, na które wskazują klucze obce).
insert into user_account (email, display_name, role, created_at) values
    ('ola@student.merito.pl',   'Ola',   'USER',    current_timestamp),
    ('kuba@student.merito.pl',  'Kuba',  'USER',    current_timestamp),
    ('firma@example.com',       'Firma', 'PARTNER', current_timestamp),
    ('admin@example.com',       'Admin', 'ADMIN',   current_timestamp);

-- LAB 01: konta zespołu
insert into user_account (email, display_name, role, created_at) values
    ('wrx59590@student.wroclaw.merito.pl', 'Slawomir Marcinkowski', 'USER', current_timestamp),
    ('wrx81887@student.wroclaw.merito.pl', 'Filip Michałczyk',      'USER', current_timestamp),
    ('john.malkovich@localhost',           'John Malkovich',        'USER', current_timestamp);
