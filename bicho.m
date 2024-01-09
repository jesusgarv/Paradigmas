classdef bicho
    properties
        nombreComun
        nombreCientifico
        caracteristicas
        tiempoDeVida
        tipoOrganismo
        reino
        phyllum
        clase
        orden
        genero
        especie
        familia
        imagen
    end

    methods
        function obj = bicho(nombreComun, nombreCientifico, caracteristicas, tiempoDeVida, tipoOrganismo, reino, phyllum, clase, orden, genero, especie, familia, imagen)
            obj.nombreComun = nombreComun;
            obj.nombreCientifico = nombreCientifico;
            obj.caracteristicas = caracteristicas;
            obj.tiempoDeVida = tiempoDeVida;
            obj.tipoOrganismo = tipoOrganismo;
            obj.reino = reino;
            obj.phyllum = phyllum;
            obj.clase = clase;
            obj.orden = orden;
            obj.genero = genero;
            obj.especie = especie;
            obj.familia = familia;
            obj.imagen = imagen;
        end

        function isthis = compareName(obj, nombreComun)
            isthis = strcmp(obj.nombreComun, nombreComun);
        end

        function nombreComun = get.nombreComun(obj)
            nombreComun = obj.nombreComun;
        end

        function nombreCientifico = get.nombreCientifico(obj)
            nombreCientifico = obj.nombreCientifico;
        end

        function caracteristicas = get.caracteristicas(obj)
            caracteristicas = obj.caracteristicas;
        end

        function tiempoDeVida = get.tiempoDeVida(obj)
            tiempoDeVida = obj.tiempoDeVida;
        end
        
        function reino = get.reino(obj)
            reino = obj.reino;
        end

        function phyllum = get.phyllum(obj)
            phyllum = obj.phyllum;
        end

        function clase = get.clase(obj)
            clase = obj.clase;
        end

        function orden = get.orden(obj)
            orden = obj.orden;
        end

        function genero = get.genero(obj)
            genero = obj.genero;
        end

        function especie = get.especie(obj)
            especie = obj.especie;
        end

        function familia = get.familia(obj)
            familia = obj.familia;
        end
    end
end