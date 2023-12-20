from connection import connect_to_mysql

## Aquí se ponen las configuraciones para conectar con la base
## es lo mismo con lo que conectamos en workbench
config = {
    "host": "mon-db.cj9lkipykqqs.us-east-1.rds.amazonaws.com",
    "user": "root",
    "password": "rootroot",
    "database": "bichos",
}

## Accedemos a la función de conectar que se creó en el archivo connection
cnx = connect_to_mysql(config, attempts=3)

## ya creada la conexión, verificamos que haya sido exitosa
if cnx and cnx.is_connected():

    ## En la librería se usa el metodo cursor para poder ejecutar consultas y actividades
    ## como inserts etc. en este caso solo será la consulta
    with cnx.cursor() as cursor:
        
        ## Aquí se realiza la consulta y se obtiene un arreglo con la información
        result = cursor.execute("SELECT * FROM Organismos LIMIT 5")
        rows = cursor.fetchall()

        ## Se opera en el arreglo de filas
        for rows in rows:

            print(rows)

    ## Por último se cierra la conexión a la base de datos
    cnx.close()

else:
    ## Si no imprime en la consola que no se pudo establecer la conexión
    print("No se pudo establecer la conexión")