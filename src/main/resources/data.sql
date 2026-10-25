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

-- ===== LAB 02 · movie =====
insert into movie (title, original_title, release_year, director, genre) values
    ('Władca Pierścieni: Drużyna Pierścienia', 'The Lord of the Rings: The Fellowship of the Ring', 2001, 'Peter Jackson',    'FANTASY'),
    ('Harry Potter i Komnata Tajemnic',        'Harry Potter and the Chamber of Secrets',           2002, 'Chris Columbus',   'FANTASY'),
    ('Lista Schindlera',                       'Schindler''s List',                                 1993, 'Steven Spielberg', 'HISTORICAL'),
    ('Gwiezdne wojny: część IV – Nowa nadzieja', 'Star Wars',                                       1977, 'George Lucas',     'SCI_FI');

-- ===== LAB 02 · filming_location =====
insert into filming_location (name, description, city, country, type, public_access, latitude, longitude) values
    ('Hobbiton',               'Wioska hobbitów zbudowana na farmie owiec',          'Matamata',  'Nowa Zelandia',    'OUTDOOR',  true,  -37.857900, 175.680200),
    ('Wiadukt Glenfinnan',     'Kamienny wiadukt kolejowy w szkockich Highlands',    'Glenfinnan', 'Wielka Brytania', 'OUTDOOR',  true,   56.876400,  -5.431700),
    ('Kazimierz',              'Dawna dzielnica żydowska Krakowa',                   'Kraków',    'Polska',           'OUTDOOR',  true,   50.051600,  19.948300),
    ('Hotel Sidi Driss',       'Podziemny dom troglodytów, dom Luke''a Skywalkera',  'Matmata',   'Tunezja',          'BUILDING', true,   33.542500,   9.968400),
    ('Leavesden Studios',      'Studio filmowe, w którym powstały filmy o Harrym Potterze', 'Watford', 'Wielka Brytania', 'STUDIO', true, 51.690000, -0.418000);

-- ===== LAB 02 · scene =====
insert into scene (title, description, start_second, duration_seconds, filmed_on) values
    ('Gandalf przybywa do Hobbitonu',  'Gandalf wjeżdża wozem do Shire na urodziny Bilba',          960, 180, null),
    ('Latający Ford Anglia',           'Harry i Ron lecą samochodem nad wiaduktem za pociągiem',   1260, 120, null),
    ('Likwidacja getta',               'Schindler obserwuje ze wzgórza likwidację getta',          3600, 420, null),
    ('Dwa słońca Tatooine',            'Luke patrzy na zachód dwóch słońc przed domem',            1800,  60, '1976-03-22');

-- ===== LAB 02 · actor =====
insert into actor (first_name, last_name, birth_date, nationality) values
    ('Elijah', 'Wood',     '1981-01-28', 'amerykańska'),
    ('Ian',    'McKellen', '1939-05-25', 'brytyjska'),
    ('Daniel', 'Radcliffe', '1989-07-23', 'brytyjska'),
    ('Rupert', 'Grint',    '1988-08-24', 'brytyjska'),
    ('Liam',   'Neeson',   '1952-06-07', 'brytyjska'),
    ('Mark',   'Hamill',   '1951-09-25', 'amerykańska');
