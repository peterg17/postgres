
DROP TABLE IF EXISTS quad;
CREATE TABLE quad(
    id int UNIQUE,
    b box 
);


INSERT INTO quad(id, b)
SELECT
id, box(point(1000*random(),1000*random()), point(1000*random(),1000*random())) 
FROM generate_series(1, 1000) id;