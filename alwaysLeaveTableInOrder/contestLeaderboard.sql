/*Please add ; after each select statement*/
CREATE PROCEDURE contestLeaderboard()
BEGIN
    SELECT name
    FROM leaderboard
    order by score desc 
    LIMIT 5 OFFSET
    3;
END