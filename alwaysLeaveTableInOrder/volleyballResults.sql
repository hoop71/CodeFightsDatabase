/*Please add ; after each select statement*/
CREATE PROCEDURE volleyballResults()
BEGIN
    select *
    from results
    ORDER BY wins;
END