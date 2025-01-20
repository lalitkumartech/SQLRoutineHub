SELECT * FROM public.bowler_career;


--Create a variable name with Datatype
CREATE TABLE bowler_career(
   --dynamic id number
   id SERIAL NOT NULL PRIMARY KEY,
   matches int,
   innings int,
   runs int,
   wickets numeric,
   avg int
);

ALTER TABLE bowler_career
ALTER COLUMN wickets TYPE int USING wickets::numeric;



--insert the data
INSERT INTO bowler_career(matches, innings, runs, wickets, avg) VALUES (2,4,54,7,132.3);
INSERT INTO bowler_career(matches, innings, runs, wickets, avg) VALUES (2,3,80,4,152.0);
INSERT INTO bowler_career(matches, innings, runs, wickets, avg) VALUES (5,1,66,4,122.0);

--update single column value
UPDATE bowler_career SET matches='100' WHERE id='7';

--update multiple column value
UPDATE bowler_career SET matches='50', innings='5', runs='50' WHERE id='2';

--update table select single column all values change 
UPDATE bowler_career SET innings='10';

--delete table row select single column
DELETE FROM bowler_career WHERE ID='2';

--delete all recode in table;
DELETE FROM bowler_career ;

--this query work to delete table
DROP TABLE bowler_career;
