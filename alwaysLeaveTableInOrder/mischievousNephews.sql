/*Please add ; after each select statement*/
CREATE PROCEDURE mischievousNephews()
BEGIN
    SELECT Weekday(mischief_date) as weekday, mischief_date, author, title
    from mischief
    ORDER BY weekday, field(author,"Huey", "Dewey","Louie"),
     mischief_date, title;
END