select a.id_coche , d.name , e.name, f.name, a.dt_compra , a.matricula , a.km_total , b.name, c.name , c.num_poliza
from practica_sql_ml_ramos.coches a, practica_sql_ml_ramos.colors b, practica_sql_ml_ramos.aseguradora c, practica_sql_ml_ramos.modelos d, practica_sql_ml_ramos.marcas e, practica_sql_ml_ramos.grupos f
where a.id_coche = d.id_coche and d.id_marca = e.id_marca and e.id_grupo  = f.id_grupo and a.id_color = b.id_color and a.id_coche = c.id_coche

