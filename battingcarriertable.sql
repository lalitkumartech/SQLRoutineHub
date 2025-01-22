SELECT * FROM public.batting_career;


--update single column value
UPDATE batting_career SET matches='100' WHERE id='7';

--update multiple column value
UPDATE batting_career SET matches='50', innings='5', runs='50' WHERE id='2';

--update table select single column all values change 
UPDATE batting_career SET innings='10';

--insert Data
INSERT INTO batting_career(matches,inning,runs,avg) VALUES (123,210,9230,46.85);
INSERT INTO batting_career(matches,inning,runs,avg) VALUES (125,117,4188,48.7);
INSERT INTO batting_career(matches,inning,runs,avg) VALUES (295,283,13906,58.18);

--delete table row select single column
DELETE FROM batting_career WHERE ID='2';

--delete all recode in table;
DELETE FROM batting_career ;

--this query work to delete table
DROP TABLE batting_career;