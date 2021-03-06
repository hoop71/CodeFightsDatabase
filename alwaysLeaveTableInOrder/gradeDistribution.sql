/*Please add ; after each select statement*/
CREATE PROCEDURE gradeDistribution()
BEGIN
    SELECT t.name as Name, t.ID as ID
    FROM (
        SELECT name, ID, (Midterm1 * 25 / 100) + (Midterm2 * 25 / 100) + (Final * 50/100) as option_1, (Midterm1 * 50 / 100) + (Midterm2 * 50 / 100) as option_2, Final as option_3
        FROM Grades
        ) t
    WHERE t.option_3 > t.option_2 and t.option_3 > t.option_1
    ORDER by LEFT(name,3) asc, ID ASC
;
END