 SELECT * FROM spgist_print('box_quad_idx') as t
		(
			tid tid,
			allthesame bool,
			node_n int, 
			level int, 
			tid_pointer tid, 
			prefix int, 
			node_label int, 
			leaf_value box
		) where level = 2;