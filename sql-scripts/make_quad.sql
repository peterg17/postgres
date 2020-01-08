
DROP TABLE IF EXISTS quad;
CREATE TABLE quad(
    id int UNIQUE,
    b box 
);


INSERT INTO quad(id, b)
VALUES
(1, box(point(1,1), point(3,3))),
(2, box(point(2,2), point(4,4))),
(3, box(point(3,3), point(5,5)));