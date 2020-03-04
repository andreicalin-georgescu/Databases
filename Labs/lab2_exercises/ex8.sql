define procent_prima = 0.15
define id_dep = 20

select nume, salariu, salariu*&procent_prima prima
from angajati
where id_dep = &id_dep;

undefine procent_prima
undefine id_dep