select id_ang, nume, functie, data_ang
	from angajati
	where functie = '&1' and data_ang > '&2'
	order by data_ang;