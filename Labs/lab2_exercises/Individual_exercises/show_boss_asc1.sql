SELECT nume, salariu, id_sef
FROM copy1_angajati
WHERE id_sef = &boss_id
ORDER BY salariu asc;