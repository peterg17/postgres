
DROP TABLE IF EXISTS quad;
CREATE TABLE quad(
    id int UNIQUE,
    b box 
);


INSERT INTO quad(id, b)
SELECT
id, box(point(500*random(),500*random()), point(100*random()+500,100*random()+500)) 
FROM generate_series(1, 1000) id;