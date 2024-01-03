conn = database('Project DB','root','rootroot');
query = ['select O.nombre_comun, O.nombre_cientifico, O.caracteristicas, ' ...
    'O.tiempo_de_vida, TOr.tipo_organismo, R.nombreReino, P.Phyllumnombre, ' ...
    'C.Clasenombre, Ord.Ordennombre, G.GeneroNombre, E.Especienombre, F.FamiliaGenero ' ...
    'from Organismos O ' ...
    'left join Tipo_Organismo TOr on O.Tipo_Organismo_id_tipo_organismo = TOr.id_tipo_organismo ' ...
    'left join Reino R on O.Reino_idReino = R.idReino ' ...
    'left join Phyllum P on O.Phyllum_idPhyllum = P.idPhyllum ' ...
    'left join Clase C on O.Clase_idClase = C.idClase ' ...
    'left join Orden Ord on O.Orden_idOrden = Ord.idOrden ' ...
    'left join Familia F on O.Familia_idFamilia = F.idFamilia ' ...
    'left join Genero G on O.Genero_idGenero = G.idGenero ' ...
    'left join Especie E on O.Especie_idEspecie = E.idEspecie'];
curs = exec(conn,query);
curs = fetch(curs);
data = curs.Data;

%% Close connection to database
close(conn)

%% Clear variables
clear conn query curs

bichos = bicho.empty(0,numel(data));

dimensions = size(data);

for i = 1:dimensions(1)
    instruction = strcat("python/scripts.py ", num2str(data{i,4}));

    result = pyrunfile(instruction, "result");

    result = cell(result);

    for n = 1:numel(result)
        result{n} = double(result{n});
    end

    clear n instruction

    bichos(i) = bicho(data{i,1}, data{i,2}, data{i,3}, result, data{i,5}, data{i,6}, data{i,7}, data{i,8}, data{i,9}, data{i,10}, data{1,11}, data{i,12});
end

clear i dimensions result data