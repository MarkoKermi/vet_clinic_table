/*Queries that provide answers to the questions from all projects.*/

SELECT * from animals WHERE name Like '%mon';
select name from animals WHERE date_of_birth between '2016-01-01' and '2019-01-01';
select name from animals WHERE neutered=true and escape_attempts<3;
select date_of_birth from animals WHERE name in ('Agumon', 'Pikachu');
select name, escape_attempts from animals WHERE weight_kg >10.5;
select * from animals WHERE neutered=true;
select * from animals WHERE name !='Gabumon';
select * from animals WHERE weight_kg >= 10.4 and weight_kg <= 17.3;
DELETE from animals;
UPDATE animals SET weight_kg = weight_kg * -1 WHERE weight_kg <0;
select count(*) from animals;
select count(*) from animals where escape_attempts = 0;
select avg(weight_kg) from animals;
select neutered, count(neutered) as result from animals group by neutered order by result desc limit 1;
select species, MAX(weight_kg) as max_weight, MIN(weight_kg) as min_weight from animals group by species;
select species,avg(escape_attempts) from animals where date_of_birth between '1900-01-01' and '2000-12-31' group by species;
