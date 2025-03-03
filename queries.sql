------------ Comentários com apenas 'X' caracteres -----------------

SELECT count(body), body
FROM places_reviewcomment pr 
WHERE (LENGTH(body) <= 3) and (body not like '<3' and body not like ':)' and body not like 'Ok' and body not like 'ok')
group by body
order by count(body) desc;

SELECT count(*)
FROM places_reviewcomment pr 
WHERE (LENGTH(body) <= 2) and (body not like '<3' and body not like ':)' and body not like 'Ok' and body not like 'ok') and pr.created between '2023-01-01' and '2023-03-31';

--- 3 caracteres, excluindo alguns padrões

SELECT *
FROM places_reviewcomment pr 
WHERE (LENGTH(body) <= 3) and 
(body not like '<3' and body not like ':)'
and body not like 'Ok' and body not like 'ok'
and body not like 'Amo' and body not like 'Top' and body not like 'Bom'
and body not like 'amo' and body not like 'top' and body not like 'bom'
and body not like 'AMO' and body not like 'TOP' and body not like 'BOM');

SELECT count(*)
FROM places_reviewcomment pr 
WHERE (LENGTH(body) <= 3) and 
(body not like '<3' and body not like ':)'
and body not like 'Ok' and body not like 'ok'
and body not like 'Amo' and body not like 'Top' and body not like 'Bom'
and body not like 'amo' and body not like 'top' and body not like 'bom'
and body not like 'AMO' and body not like 'TOP' and body not like 'BOM');


SELECT count(body)
FROM places_reviewcomment pr;


-------------- Comentários Fakes -------------------------------

and pr.created between '2023-01-18' and '2023-01-19'

-- Ordenando por usuário

SELECT pr.user_id, up.name, up.ethnicity, up.gender, up.sexuality, pr.body as comentário, count(pr.user_id) as total
FROM places_reviewcomment pr
inner join user_profile up on up.user_id = pr.user_id
WHERE (LENGTH(pr.body) <= 3) and 
(body not like '<3' and body not like ':)'
and pr.body not like 'Ok' and pr.body not like 'ok'
and pr.body not like 'Amo' and pr.body not like 'Top' and pr.body not like 'Bom'
and pr.body not like 'amo' and pr.body not like 'top' and pr.body not like 'bom'
and pr.body not like 'AMO' and pr.body not like 'TOP' and pr.body not like 'BOM')
group by pr.user_id, pr.body, pr.user_id, up.name, up.ethnicity, up.gender, up.sexuality
order by pr.user_id desc;

-- Agrupando pelo conteúdo dos comentários
-- e ordenando por total

SELECT pr.user_id, up.name, up.ethnicity, up.gender, up.sexuality, pr.body as comentário, count(pr.user_id) as total, pr.created
FROM places_reviewcomment pr
inner join user_profile up on up.user_id = pr.user_id
WHERE (LENGTH(pr.body) <= 3) and 
(body not like '<3' and body not like ':)'
and pr.body not like 'Ok' and pr.body not like 'ok'
and pr.body not like 'Amo' and pr.body not like 'Top' and pr.body not like 'Bom'
and pr.body not like 'amo' and pr.body not like 'top' and pr.body not like 'bom'
and pr.body not like 'AMO' and pr.body not like 'TOP' and pr.body not like 'BOM') 
group by pr.user_id, pr.body, pr.user_id, up.name, up.ethnicity, up.gender, up.sexuality, pr.created
order by total desc;

-- Exemplo lojas Colombo

SELECT pr.user_id, up.name, up.ethnicity, up.gender, up.sexuality, pr.body as comentário, count(pr.user_id) as total, pr.created
FROM places_reviewcomment pr
inner join user_profile up on up.user_id = pr.user_id
inner join places_placereview pp on pp.id = pr.review_id
inner join places_place pp2 on pp2.id = pp.place_id
WHERE (LENGTH(pr.body) <= 3) and 
(body not like '<3' and body not like ':)'
and pr.body not like 'Ok' and pr.body not like 'ok'
and pr.body not like 'Amo' and pr.body not like 'Top' and pr.body not like 'Bom'
and pr.body not like 'amo' and pr.body not like 'top' and pr.body not like 'bom'
and pr.body not like 'AMO' and pr.body not like 'TOP' and pr.body not like 'BOM')
and pp2.name like '%Colombo'
group by pr.user_id, pr.body, pr.user_id, up.name, up.ethnicity, up.gender, up.sexuality, pr.created
order by total desc;


select * from places_reviewcomment pr2;
SELECT count(*)                                              ----- [9024]
FROM places_reviewcomment pr
inner join user_profile up on up.user_id = pr.user_id
WHERE (LENGTH(pr.body) <= 3) and 
(body not like '<3' and body not like ':)'
and pr.body not like 'Ok' and pr.body not like 'ok'
and pr.body not like 'Amo' and pr.body not like 'Top' and pr.body not like 'Bom'
and pr.body not like 'amo' and pr.body not like 'top' and pr.body not like 'bom'
and pr.body not like 'AMO' and pr.body not like 'TOP' and pr.body not like 'BOM');


---------------------------- USUARIOS -------------------

----------- Cadastros com "Nao sei" ---------------------

select * from user_profile up
where gender = '';

select count(*) from user_profile up   -- [21]
where gender = '';

select count(gender), gender from user_profile up
group by gender;

select count(sexuality), sexuality from user_profile up
group by sexuality;

select count(ethnicity), ethnicity from user_profile up
group by ethnicity;

---------- Cadastros com "Outro" em etnia e sexualidade ---------

and up.created between '2023-01-18' and '2023-01-19'


select count(user_id) as usuarios from user_profile up 
where ethnicity = 'OU' and up.created between '2023-01-01' and '2023-03-31';

select count(user_id) as usuarios from user_profile up 
where sexuality = 'other' and up.created between '2023-01-01' and '2023-03-31';

select count(user_id) as usuarios from user_profile up 
where gender = 'not-informed' and sexuality = 'other' and up.created between '2023-01-01' and '2023-03-31';

select count(user_id) as usuarios from user_profile up 
where sexuality = 'other';

select up.user_id, up.name, up.gender, up.ethnicity, up.sexuality, uu.email, up.created
from user_profile up
inner join user_user uu on uu.id = up.user_id
where ethnicity = 'OU' and sexuality = 'other'
order by up.created desc;

select * from user_profile up;

select count(gender), gender from user_profile up
group by gender;

-- Nome 

select * from user_profile up  -- [21]
where up.name = 'Unknown';

select up.name, uu.email, up.created from user_profile up
inner join user_user uu on up.user_id = uu.id
where up.name = 'Unknown'
order by up.created desc;

-- Comentários

select up.user_id, up.name, pr.body, pp.name from places_reviewcomment pr
inner join user_profile up on up.user_id = pr.user_id
inner join places_placereview pp2 on pp2.id = pr.review_id
inner join places_place pp on pp.id = pp2.place_id
where up.name = 'Unknown';


------------ Usuários que mais avaliaram --------------

select up.user_id, up.name, up.birth_date, up.ethnicity, up.gender, up.sexuality, count(pr.id), uu.created
from user_profile up 
inner join places_placereview pr on up.user_id = pr.user_id
inner join user_user uu on uu.id = up.user_id
group by up.user_id, up.name, up.ethnicity, up.gender, up.sexuality, up.birth_date, uu.created
order by count(pr.id) desc, uu.created desc;

------------- Usuários que mais comentaram -------------

select up.user_id, up.name, up.birth_date, up.ethnicity, up.gender, up.sexuality, count(pr2.id), uu.created, uu.email
from user_profile up 
inner join places_placereview pr on up.user_id = pr.user_id
inner join places_reviewcomment pr2 on pr2.review_id = pr.id
inner join user_user uu on uu.id = up.user_id
group by up.user_id, up.name, up.ethnicity, up.gender, up.sexuality, up.birth_date, uu.created, uu.email
order by count(pr2.id) desc, uu.created desc;

------------- Comentários apenas com consoantes ---------

-- body ~ '^[a-zA-Z0-9][a-zA-Z][a-zA-Z0-9]$';

and pr.created between '2023-01-18' and '2023-01-19'

SELECT count(*) FROM places_reviewcomment pr  WHERE body = '.';

SELECT count(body)
FROM places_reviewcomment pr  
WHERE body ~ '^[^aeiouAEIOU]+$' and body not like '%lgbt%' and body not like '%Lgbt%' and body not like '%LGBT%';

SELECT body as comentário, count(body) as Total
FROM places_reviewcomment pr  
WHERE body ~ '^[^aeiouAEIOU]+$' and body not like '%lgbt%' and body not like '%Lgbt%' and body not like '%LGBT%'
group by body
order by count(body) desc;

SELECT count(body)            
FROM places_reviewcomment pr  
WHERE body ~ '^[^aeiouAEIOU]+$' and body not like '%lgbt%' and body not like '%Lgbt%' and body not like '%LGBT%';

select up.user_id, up.name as nome, pp.name as estabelecimento, pr.body as comentário from places_reviewcomment pr
inner join places_placereview pp2 on pr.review_id = pp2.id
inner join user_user uu on uu.id = pr.user_id
inner join user_profile up on up.user_id = uu.id
inner join places_place pp on pp.id = pp2.place_id
WHERE body ~ '^[^aeiouAEIOU]+$' and body not like '%lgbt%' and body not like '%Lgbt%' and body not like '%LGBT%';


----------------- Comentários iniciando com 3 consoantes seguidas ------------------------------

SELECT count(body)
FROM places_reviewcomment pr  
WHERE body ~ '^[bcdfghjklmnpqrstvwxyz]{3,}';

SELECT body as comentário, count(body) as Total
FROM places_reviewcomment pr  
WHERE body ~ '^[bcdfghjklmnpqrstvwxyz]{3,}'
group by body
order by count(body) desc;

-- Vogais

SELECT body
FROM places_reviewcomment pr  
WHERE body ~ '^[aeiou]{3,}';


----------------- Usuários que iniciam com 3 consoantes seguidas --------------------------------
--- (78)

select * from user_profile up;

select count(user_id)
from user_profile up 
WHERE name ~ '^[bcdfghjklmnpqrstvwxyz]{3,}';

select user_id, name, ethnicity, gender, sexuality, state, created
from user_profile up 
WHERE name ~ '^[bcdfghjklmnpqrstvwxyz]{3,}';

-- Vogais

select user_id, name, ethnicity, gender, sexuality, state, created
from user_profile up 
WHERE name ~ '^[aeiou]{3,}';

------------------- Comentários feitos por determinado usuário --------------------

select up.user_id, up.name as nome, pp.name as estabelecimento, pr.body as comentário, uu.email from places_reviewcomment pr
inner join places_placereview pp2 on pr.review_id = pp2.id
inner join user_user uu on uu.id = pr.user_id
inner join user_profile up on up.user_id = uu.id
inner join places_place pp on pp.id = pp2.place_id
where uu.id = 6030;

-- Daria pra selecionar esses usuários fakes e filtrar todos os comentários que foram feitos por eles e deletar
-- Exemplo:
select * from places_reviewcomment pr
where user_id in 
('753','754','755','756','757','758','761','763','4543','25100','25475','24802','25100','25109');


-------------- Total de comentários e avaliações feitos por usuários com 3 consoantes seguidas ---------------

--- Comentários (82)

SELECT count(body) 
FROM places_reviewcomment pr
inner join places_placereview pp2 on pr.review_id = pp2.id
inner join user_user uu on uu.id = pr.user_id
inner join user_profile up on up.user_id = uu.id
WHERE up.name ~ '^[bcdfghjklmnpqrstvwxyz]{3,}';

SELECT * 
FROM places_reviewcomment pr
inner join places_placereview pp2 on pr.review_id = pp2.id
inner join user_user uu on uu.id = pr.user_id
inner join user_profile up on up.user_id = uu.id
WHERE up.name ~ '^[bcdfghjklmnpqrstvwxyz]{3,}';

// Não são todos os usuários nessa condição que fizeram comentários fakes

--- Filtrando apenas usuários fakes ---
--- 65 comentários

SELECT up.name 
FROM places_reviewcomment pr
inner join places_placereview pp2 on pr.review_id = pp2.id
inner join user_user uu on uu.id = pr.user_id
inner join user_profile up on up.user_id = uu.id
WHERE up.name ~ '^[bcdfghjklmnpqrstvwxyz]{3,}' and up.user_id not in (
'40560',
'10358',
'16314',
'31583',  -- Aqui eu coloquei como exceção os usuários que têm 3 consoantes mas têm nome.
'33903',
'37172',
'38313',
'38382',
'45202',
'48933');

SELECT up.user_id, up.name, pr.body
FROM places_reviewcomment pr
inner join places_placereview pp2 on pr.review_id = pp2.id
inner join user_user uu on uu.id = pr.user_id
inner join user_profile up on up.user_id = uu.id
WHERE up.name ~ '^[bcdfghjklmnpqrstvwxyz]{3,}' and up.user_id not in (
'40560',
'10358',
'16314',
'31583',
'33903',
'37172',
'38313',
'38382',
'45202',
'48933');

--- Avaliações feitas por esses usuários (400)

SELECT count(pp2.id) 
FROM places_placereview pp2
inner join user_user uu on uu.id = pp2.user_id
inner join user_profile up on up.user_id = uu.id
WHERE up.name ~ '^[bcdfghjklmnpqrstvwxyz]{3,}';


select * from places_reviewcomment pr
inner join places_placereview pp on pp.id = pr.review_id
inner join places_place pp2 on pp2.id = pp.place_id 
where pp2.name =  'Barbearia Trindade - Barbearia Florianópolis'
order by pr.created desc;


select * from places_placereview pr
inner join places_place pp2 on pp2.id = pr.place_id 
where pp2.name = 'Barbearia Trindade - Barbearia Florianópolis'
order by pr.created desc;


select * from places_place pp
where name = 'Deli Trindade';


select * from places_reviewcomment pr; 

select up.user_id, up.name, up.birth_date, up.ethnicity, up.gender, up.sexuality, count(pr2.id), uu.created, uu.email
from user_profile up 
inner join places_placereview pr on up.user_id = pr.user_id
inner join places_reviewcomment pr2 on pr2.review_id = pr.id
inner join user_user uu on uu.id = up.user_id
inner join places_place pp on pp.id = up.user_id
group by up.user_id, up.name, up.ethnicity, up.gender, up.sexuality, up.birth_date, uu.created, uu.email
order by count(pr2.id) desc, uu.created desc;


select up.user_id, up.name as nome, pp.name as estabelecimento, pr.body as comentário, uu.email from places_reviewcomment pr
inner join places_placereview pp2 on pr.review_id = pp2.id
inner join user_user uu on uu.id = pr.user_id
inner join user_profile up on up.user_id = uu.id
inner join places_place pp on pp.id = pp2.place_id
where uu.id = 40067;

select * from places_place pp
where pp.name = 'Barbearia Trindade - Barbearia Florianópolis';

select up.user_id, up.name, up.birth_date, up.ethnicity, up.gender, up.sexuality, count(pr2.id), uu.created, uu.email
from user_profile up 
inner join places_placereview pr on up.user_id = pr.user_id
inner join places_reviewcomment pr2 on pr2.review_id = pr.id
inner join user_user uu on uu.id = up.user_id
inner join places_place pp on pp.id = up.user_id
where LENGTH(uu.email) <= 15
group by up.user_id, up.name, up.ethnicity, up.gender, up.sexuality, up.birth_date, uu.created, uu.email
order by count(pr2.id) desc, uu.created desc;

-- Usuários que comentaram apenas "emojis"

select distinct up.user_id from places_reviewcomment pr
inner join user_profile up on up.user_id = pr.user_id
where (body = '😍' or body ='♥︎' or body ='🥰' or body ='👏🏾' or body ='♡♡' or body ='♡' or body ='*' or body ='😉' or body ='♡♡♡' or body ='¤' or body ='❤️' or body = 'S2' or body ='<3')
and (up.created between '2023-01-01' and '2023-04-06');






select body, count(body) from places_reviewcomment pr
inner join user_profile up on up.user_id = pr.user_id
where (lower(body) ~ '^[bcdfghjklmnpqrstvwxyz]{3,}')
and (up.created between '2023-01-01' and '2023-04-06')
and (length(body) <=6)
group by body
order by count(body) asc;

select pr.body, count(pr.body), pp.tag_score, pr.created from places_reviewcomment pr
inner join places_placereview pp on pp.id = pr.review_id
inner join places_place pp2 on pp2.id = pp.place_id
where pp2.name = 'Barbearia Trindade - Barbearia Florianópolis'
group by pr.body, pp.tag_score, pr.created
order by count(pr.body) desc;
------------------------------------------------------------------------

select pp2.id, pr.body, count(pr.body) from places_reviewcomment pr
inner join places_placereview pp on pp.id = pr.review_id
inner join places_place pp2 on pp2.id = pp.place_id
where pp2.name = 'Barbearia Trindade - Barbearia Florianópolis'
group by pr.body, pp2.id
order by count(pr.body) desc;

select count(pp.id) from places_placereview pp
where place_id = '15787';

----

select pp2.id, pr.body, count(pr.body) from places_reviewcomment pr
inner join places_placereview pp on pp.id = pr.review_id
inner join places_place pp2 on pp2.id = pp.place_id
where pp2.name = 'Batido Lanches'
group by pr.body, pp2.id
order by count(pr.body) desc;

select count(pp.id) from places_placereview pp
where place_id = '18233';

----

select pp2.id, pr.body, count(pr.body) from places_reviewcomment pr
inner join places_placereview pp on pp.id = pr.review_id
inner join places_place pp2 on pp2.id = pp.place_id
where pp2.name = 'Center for Communication and Expression - CCE - Block B'
group by pr.body, pp2.id
order by count(pr.body) desc;

select count(pp.id) from places_placereview pp
where place_id = '189';

-----

select pp2.id, pr.body, count(pr.body) from places_reviewcomment pr
inner join places_placereview pp on pp.id = pr.review_id
inner join places_place pp2 on pp2.id = pp.place_id
where pp2.name = 'Centro Socioeconômico - CSE UFSC'
group by pr.body, pp2.id
order by count(pr.body) desc;

select count(pp.id) from places_placereview pp
where place_id = '18690';

-----

select pp2.id, pr.body, count(pr.body) from places_reviewcomment pr
inner join places_placereview pp on pp.id = pr.review_id
inner join places_place pp2 on pp2.id = pp.place_id
where pp2.name = 'Deli Trindade'
group by pr.body, pp2.id
order by count(pr.body) desc;

select count(pp.id) from places_placereview pp
where place_id = '126';

-----

select pp2.id, pr.body, count(pr.body) from places_reviewcomment pr
inner join places_placereview pp on pp.id = pr.review_id
inner join places_place pp2 on pp2.id = pp.place_id
where pp2.name = 'La Bohème Restaurante'
group by pr.body, pp2.id
order by count(pr.body) desc;

select count(pp.id) from places_placereview pp
where place_id = '5008';

-----

select pp2.id, pr.body, count(pr.body) from places_reviewcomment pr
inner join places_placereview pp on pp.id = pr.review_id
inner join places_place pp2 on pp2.id = pp.place_id
where pp2.name = 'Programa de Pós-Graduação em Direito - UFSC'
group by pr.body, pp2.id
order by count(pr.body) desc;

select count(pp.id) from places_placereview pp
where place_id = '18523';

-----

select pp2.id, pr.body, count(pr.body) from places_reviewcomment pr
inner join places_placereview pp on pp.id = pr.review_id
inner join places_place pp2 on pp2.id = pp.place_id
where pp2.name = 'Run Fitness Club'
group by pr.body, pp2.id
order by count(pr.body) desc;

select count(pp.id) from places_placereview pp
where place_id = '6426';

-----

select pp2.id, pr.body, count(pr.body) from places_reviewcomment pr
inner join places_placereview pp on pp.id = pr.review_id
inner join places_place pp2 on pp2.id = pp.place_id
where pp2.name = 'Trindade Shopping'
group by pr.body, pp2.id
order by count(pr.body) desc;

select count(pp.id) from places_placereview pp
where place_id = '13656';