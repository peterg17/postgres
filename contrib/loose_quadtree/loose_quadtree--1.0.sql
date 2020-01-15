
-- complain if script is sourced in psql, rather than via CREATE EXTENSION
\echo Use "CREATE EXTENSION loose_quadtree" to load this file. \quit

CREATE FUNCTION spg_loose_quad_config(internal, internal)
    RETURNS void
    AS 'MODULE_PATHNAME'
    LANGUAGE C IMMUTABLE STRICT;

CREATE FUNCTION spg_loose_quad_choose(internal, internal)
    RETURNS void
    AS 'MODULE_PATHNAME'
    LANGUAGE C IMMUTABLE STRICT;

CREATE FUNCTION spg_loose_quad_picksplit(internal, internal)
    RETURNS void
    AS 'MODULE_PATHNAME'
    LANGUAGE C IMMUTABLE STRICT;

CREATE FUNCTION spg_loose_quad_inner_consistent(internal, internal)
    RETURNS void
    AS 'MODULE_PATHNAME'
    LANGUAGE C IMMUTABLE STRICT;

CREATE FUNCTION spg_loose_quad_leaf_consistent(internal, internal)
    RETURNS void
    AS 'MODULE_PATHNAME'
    LANGUAGE C IMMUTABLE STRICT;


CREATE OPERATOR CLASS loose_quad_ops
    FOR TYPE box USING spgist AS
        OPERATOR 1 << (box, box) ,
        OPERATOR 2 &< (box, box) ,
        OPERATOR 3 && (box, box) ,
        OPERATOR 4 &> (box, box) ,
        OPERATOR 5 >> (box, box) ,
        OPERATOR 6 ~= (box, box) ,
        OPERATOR 7 @> (box, box) ,
        OPERATOR 8 <@ (box, box) ,
        OPERATOR 9 &<| (box, box) ,
        OPERATOR 10 <<| (box, box) ,
        OPERATOR 11 |>> (box, box) ,
        OPERATOR 12 |&> (box, box) ,
        FUNCTION 1 spg_loose_quad_config(internal, internal) ,
        FUNCTION 2 spg_loose_quad_choose(internal, internal) ,
        FUNCTION 3 spg_loose_quad_picksplit(internal, internal) ,
        FUNCTION 4 spg_loose_quad_inner_consistent(internal, internal) ,
        FUNCTION 5 spg_loose_quad_leaf_consistent(internal, internal) ;
