import logging
import time
import mysql.connector

# Logger es un medio para rastrear eventos al ejecutar un código
## Aquí se empieza su configuración inicial
logger = logging.getLogger(__name__)
logger.setLevel(logging.INFO)
formatter = logging.Formatter("%(asctime)s - %(name)s - %(levelname)s - %(message)s")

# Cuando ocurre un evento imprime el evento en la consola
handler = logging.StreamHandler()
handler.setFormatter(formatter)
logger.addHandler(handler)

# Aquí también se hace la configuración de los eventos pero en el archivo cpy-errors.log
file_handler = logging.FileHandler("cpy-errors.log")
file_handler.setFormatter(formatter)
logger.addHandler(file_handler) 

## Función para conectarse con la base de datos
## Recibe el objeto de configuración (un diccionario con la info que se usa en workbench)
## un número de intentos y el número de segundos de retraso entre intentos
def connect_to_mysql(config, attempts=3, delay=2):
    attempt = 1
    # Aquí se hace una rutina para intentar conectar con la base
    while attempt < attempts + 1:
        try:
            ## si la conexión es correcta, se regresa el objeto conexión
            return mysql.connector.connect(**config)
        except (mysql.connector.Error, IOError) as err:
            ## en caso de ser el último intento, lo especifica
            if (attempts is attempt):
                # Regresa None e imprime el evento en consola
                logger.info("Fallo al conectar, procediendo sin conexión: %s", err)
                return None
            logger.info(
                "Conexión fallida: %s. Reintentando (%d/%d)...",
                err,
                attempt,
                attempts-1,
            )
            # Después de un intento coloca el retraso
            time.sleep(delay ** attempt)
            attempt += 1
    return None