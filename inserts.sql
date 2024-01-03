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
insert into Organismos values (null, 'Test', 'Test data', 'E. coli es la bacteria anaerobia facultativa comensal más abundante de la microbiota del tracto gastrointestinal en donde junto con otros microorganismos es esencial para el funcionamiento correcto del proceso digestivo.', 20.0, 1,2,3,1,1,1,1,1);

select O.nombre_comun, O.nombre_cientifico, O.caracteristicas, O.tiempo_de_vida, TOr.tipo_organismo, R.nombreReino, P.Phyllumnombre, C.Clasenombre, Ord.Ordennombre, G.GeneroNombre, E.Especienombre, F.FamiliaGenero 
from Organismos O 
left join Tipo_Organismo TOr on O.Tipo_Organismo_id_tipo_organismo = TOr.id_tipo_organismo
left join Reino R on O.Reino_idReino = R.idReino
left join Phyllum P on O.Phyllum_idPhyllum = P.idPhyllum
left join Clase C on O.Clase_idClase = C.idClase
left join Orden Ord on O.Orden_idOrden = Ord.idOrden
left join Familia F on O.Familia_idFamilia = F.idFamilia
left join Genero G on O.Genero_idGenero = G.idGenero
left join Especie E on O.Especie_idEspecie = E.idEspecie;