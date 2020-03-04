accept boss_id number prompt 'Introduceti id_sef:'

SELECT nume, salariu, id_sef
FROM copy1_angajati
WHERE id_sef = &boss_id
ORDER BY salariu asc;

undefine boss_id