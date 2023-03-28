/*Queries that provide answers to the questions from all projects.*/

SELECT * from animals WHERE name Like '%mon';
select name from animals WHERE date_of_birth between '2016-01-01' and '2019-01-01';
select name from animals WHERE neutered=true and escape_attempts<3;
select date_of_birth from animals WHERE name in ('Agumon', 'Pikachu');
select name, escape_attempts from animals WHERE weight_kg >10.5;
select * from animals WHERE neutered=true;
select * from animals WHERE name !='Gabumon';
select * from animals WHERE weight_kg >= 10.4 and weight_kg <= 17.3;

