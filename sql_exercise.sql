-- 1. Брой на потребители.

SELECT count(id) FROM users; 


-- 2. Най-стария потребител.

SELECT Min(birthDate) FROM users;


-- 3. Най-младия потребител.

SELECT Max(birthDate) FROM users;


-- 4. Колко юзъра са регистрирани с мейли от abv и колко от gmail и колко с
-- различни от двата.


SELECT count(email) FROM users
WHERE email LIKE '%abv.bg' union
SELECT count(email) FROM users
WHERE email LIKE '%gmail.com' union
SELECT count(email) FROM users
WHERE email NOT LIKE '%abv.bg' and email NOT LIKE '%gmail.com';


-- 5. Кои юзъри са banned.

SELECT count(*) FROM users
Where isbanned=1;


-- 6. Изкарайте всички потребители от базата като ги наредите по име в азбучен
-- ред и дата на раждане(от най-младия към най-възрастния).

SELECT username, birthDate 
FROM users
ORDER BY username asc, birthDate DESC;


-- 7. Изкарайте всички потребители от базата, на които потребителското име
-- започва с.

Select username from users where username LIKE 'a%';


-- 8. Изкарайте всички потребители от базата, които съдържат
-- "а" username името си.

Select username from users where username LIKE '%a%';


-- 9. Изкарайте всички потребители от базата, чието име се състои от 2 имена.

SELECT username FROM users 
WHERE username LIKE '% %';

