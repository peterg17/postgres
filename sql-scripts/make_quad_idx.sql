
-- given some table with name quad and shape quad(id int, b box), will create region quad index --
CREATE INDEX box_quad_idx ON quad USING spgist(b);