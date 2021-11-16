SELECT
	periodo.anio_lectivo,
	programa.nombre_programa,
	calificacion.calificacion,  
	count (calificacion.calificacion) as Cantidad  
FROM detalle_prof
	inner join public.periodo on detalle_prof.id_periodo = periodo.id_periodo
	inner join public.programa on detalle_prof.id_programa = programa.id_programa
	inner join public.calificacion on detalle_prof.id_matricula = calificacion.id_matricula
	group by anio_lectivo, nombre_programa, calificacion
	order by anio_lectivo desc