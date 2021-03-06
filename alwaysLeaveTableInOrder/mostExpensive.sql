/*Please add ; after each select statement*/
CREATE PROCEDURE mostExpensive()
BEGIN
    SELECT r.name
    FROM(
        SELECT id, name, price, quantity, (price * quantity) as res
        FROM Products
        ORDER BY res desc, name asc LIMIT 1
    ) r;
END
