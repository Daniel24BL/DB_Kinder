select 
	periodo.anio_lectivo,
	count (estudiante.id_est) as Num_Matriculados,
	count (distinct calificacion.estado_est ='Activo') as Cantidad_Retirados 
From matricula 
	Inner join periodo on matricula.id_periodo = periodo.id_periodo
	Inner join estudiante on matricula.id_est= estudiante.id_est
	Inner join calificacion on matricula.id_matricula = calificacion.id_matricula
	group by anio_lectivo