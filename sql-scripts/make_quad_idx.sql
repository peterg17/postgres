
DROP EXTENSION IF EXISTS loose_quadtree;
CREATE EXTENSION loose_quadtree;
-- given some table with name quad and shape quad(id int, b box), will create region quad index --
CREATE INDEX box_quad_idx ON quad USING spgist(b loose_quad_ops);