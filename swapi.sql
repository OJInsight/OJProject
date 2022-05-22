/*There are several characters that we don't know their birth year, 
so we can't determine whether they are younger or older than the characters with a birth year.

There are 43 characters who were born before the battle of Yavin and 
there are no characters who were born after the battle of Yavin.*/

/*Transform and Load*/

DROP TABLE swapi_prod
CREATE TABLE swapi_prod AS
SELECT DISTINCT
        name,                                                      
		height,                                                      
		mass,                                                         
		hair_color,                                               
		skin_color,                                                
		eye_color,                                                 
		replace(replace(birth_year,'BBY',''),'unknown','0')birth_year,                                                  
		gender,                                                     
		homeworld,                      
		films,         
		species, 
		vehicles,
		starships,
		created,
		edited,
		url   
FROM  swapi_stage
/
SELECT * from swapi_stage


/* The oldest Character */

DROP TABLE oldest_character
CREATE TABLE oldest_character AS
SELECT *
FROM swapi_prod
ORDER BY TO_NUMBER(birth_year,'L9G999g999.99') desc
LIMIT 1
/
SELECT * from oldest_character;





