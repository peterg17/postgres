
DROP TABLE IF EXISTS quad;
CREATE TABLE quad(
    id int UNIQUE,
    b box 
);


INSERT INTO quad(id, b)
SELECT
id, box(point(100*random(),100*random()), point(100*random()+200,100*random()+200)) 
FROM generate_series(1, 5000) id;