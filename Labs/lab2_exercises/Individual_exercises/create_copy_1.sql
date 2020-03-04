create table copy1_angajati (
	nume VARCHAR(20),
	id_sef NUMBER(4),
	salariu NUMBER(7,2)
);

INSERT INTO copy1_angajati select nume, id_sef, salariu from angajati;