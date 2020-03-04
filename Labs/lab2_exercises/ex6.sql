accept functie_ang char prompt 'Introduceti functia angajatului:'

select nume, salariu, comision
from angajati
where functie = '&functie_ang';

undefine functie_ang