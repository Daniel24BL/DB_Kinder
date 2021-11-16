select 
	extract (year from detalle_prof.fecha_inicio_prog) as Año_Lectivo,
	profesional.genero_prof as Genero_del_Profesional, 
	count(profesional.genero_prof) as Cantidad
from detalle_prof
	inner join profesional on profesional.id_prof = detalle_prof.id_prof
	group by extract (year from detalle_prof.fecha_inicio_prog),  genero_prof     