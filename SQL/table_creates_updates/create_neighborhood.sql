create table Neighborhood as(
   SELECT DISTINCT neighborhood, zipcode FROM Listings
);

ALTER TABLE Neighborhood RENAME COLUMN neighborhood TO neighborhood_name;

DELETE FROM Neighborhood WHERE neighborhood_name IS NULL;
DELETE FROM Neighborhood WHERE zipcode IS NULL;

ALTER TABLE Neighborhood ADD PRIMARY KEY (neighborhood_name, zipcode);

DROP TABLE Neighbourhoods;