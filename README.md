# MarvelSQL
Les titres et les dates de sorties du plus recent au plus ancien
>> SELECT movies.Title,movies.Release_date 
   FROM movies 
   ORDER BY Release_date DESC

Les noms, prénoms et ages des acteurs de plus de 30ans dans l'ordre alphabetique
>> SELECT actors.Name,actors.Firstname,(YEAR(NOW()) - YEAR(`Birthdate`)) AS AGE
   FROM actors
   WHERE Birthdate < '1991-01-01'
   ORDER BY actors.Name ASC

La liste des acteurs pour un film donné
>>SELECT movies.Title,actors.Name,actors.Firstname
  FROM jointure
  JOIN movies ON jointure.ID_Movie=movies.ID
  JOIN actors ON jointure.ID_Actor=actors.ID
  WHERE movies.Title='Avengers'

La liste des films pour un acteur donbné
>> SELECT actors.Name,actors.Firstname,movies.Title 
   FROM jointure 
   JOIN actors ON jointure.ID_Actor=actors.ID 
   JOIN movies ON jointure.ID_Movie=movies.ID 
   WHERE actors.Name='Evans' AND actors.Firstname='Chris'

Requete pour ajouter un film
>>INSERT INTO `movies`(`Title`, `Release_date`, `Running_time`, `Director`) 
  VALUES ("Black Widow","2021/07/09","134","Cate Shortland")

Requete pour ajouter un acteur
>>INSERT INTO `actors`(`Name`, `Firstname`, `Birthdate`) 
  VALUES ("Lee","Stan","1922/12/28")
