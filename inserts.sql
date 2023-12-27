show databases;

use bichos;

show tables;

insert into Reino values (null, 'Fungi'), (null,'Bacteria');

insert into Phyllum values (null, 'N/A'), (null, 'Firmicutes'), (null,'Proteobacteria');

insert into Clase values (null, 'Agaricomycetes'), (null, 'Ascomycetes'), (null, 'Bacilli'), (null, 'Gammaproteobacteria');

insert into Orden values (null, 'Agaricales'), (null, 'Pezizales'), (null, 'Bacillales'), (null,'Enterobacteriales');

insert into Familia values (null, 'Agaricaceae'), (null,'Pezizaceae'), (null, 'Bacillaceae'), (null,'Enterobacteriaceae');

insert into Genero values (1, 'Agaricus'), (2,'Morchella'), (3,'Bacillus'), (4, 'Escherichia');

insert into Especie values (1, 'Agaricus bisporus'), (2, 'Morchella esculenta'), (3, 'Bacillus subtilis'), (4, 'Escherichia coli');

select * from Tipo_Organismo;

describe Organismos;

insert into Organismos values (null, 'E. Coli', 'Escherichia coli', 'E. coli es la bacteria anaerobia facultativa comensal más abundante de la microbiota del tracto gastrointestinal en donde junto con otros microorganismos es esencial para el funcionamiento correcto del proceso digestivo.', 50.0, 1,2,3,4,4,4,4,4);
