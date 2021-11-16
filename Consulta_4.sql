Select 
	periodo.anio_lectivo,
	matricula.valor_matricula,
	sum (matricula.valor_matricula) AS Valores_Recaudados
From periodo
	inner join matricula on periodo.id_periodo = matricula.id_periodo
	group by anio_lectivo, valor_matricula