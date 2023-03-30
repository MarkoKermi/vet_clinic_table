/* Database schema to keep the structure of entire database. */

CREATE TABLE animals (
    id integer primary key NOT NULL,
    name text,
    date_of_birth date,
    escape_attempts integer,
    neutered boolean,
    weight_kg decimal,
    species text
);

ALTER TABLE animals ADD COLUMN species VARCHAR(50);


CREATE TABLE owners (
    id integer GENERATED ALWAYS AS IDENTITY,
    full_name varchar(100) not NULL,
    age integer NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE species (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name varchar(100) NOT NULL
);

ALTER TABLE animals DROP COLUMN species;
ALTER TABLE animals ADD COLUMN species_id INT, ADD CONSTRAINT fk_species_id FOREIGN KEY (species_id) REFERENCES species(id);
ALTER TABLE animals ADD COLUMN owner_id INT, ADD CONSTRAINT fk_owner_id FOREIGN KEY (owner_id) REFERENCES owners(id);

-- Table Vets
CREATE TABLE vets (
    id integer GENERATED ALWAYS AS IDENTITY,
    name varchar(250) NOT NULL,
    age integer NOT NULL,
    date_of_birth data
);

-- Table specializations
CREATE TABLE specializations (
    id integer GENERATED ALWAYS AS IDENTITY,
    vets_id INT,
    species_id INT,
    CONSTRAINT  vets_fk FOREIGN KEY(vets_id) REFERENCES vets(id),
    CONSTRAINT species_fk FOREIGN KEY(species_id) REFERENCES species(id)
);

-- Table Visits
CREATE TABLE visits (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    animals_id INT,
    vets_id INT,
    date_of_visit data,
    CONSTRAINT  vets_fk FOREIGN KEY(vets_id) REFERENCES vets(id),
    CONSTRAINT species_fk FOREIGN KEY(species_id) REFERENCES species(id)
);
