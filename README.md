# Analisis del servicio de internet fijo en Argentina

Se hace un analisis del servicio de internet en el mercado argentino.
Se enfoca a la Calidad del servicio y a la penetracion de internet fijo.

# Contenido
- "Datasets": Fuente de datos
- "Imagenes": Imagenes
- "ETL_DA_Miguel_Ramos.ipynb": notebook proceso ETL y SQL
- "EDA_DA_Miguel_Ramos.ipynb": notebook proceso EDA
- "DA_BD.sql": BD MYSQL, crecion de tablas y load de cssv

# Proceso ETL
Tareas realizadas en EDA
- Se importo cada dataset, usando el API:
- Se hizo un proceso de limpieza
- Se creo un datamart modelo estrella con los siguientes elementos
  * Tabla hecho: internet
  * Tabla dimensiones: Provincia y Calendario
- Se creo un BD MYSQL, se procedio a crear las tablas y el load correspondiente

# Proceso EDA

# EDA Calidad del servicio (velocidad)




Tareas realizadas en EDA
- Se importo cada dataset, usando el API:
- Se hizo un proceso de limpieza
- Se creo un datamart modelo estrella con los siguientes elementos
  * Tabla hecho: internet
  * Tabla dimensiones: Provincia y Calendario
- Se creo un BD MYSQL, se procedio a crear las tablas y el load correspondiente

# Proceso ML
Para este sistema de recomendacion, se uso Contenido basado en filtro. 
El contenido de la pelicula(reparto, descripcion, director, genero) se utiliza para encontrar similitud con otra peliculas. 
Entonces se recomienda las peliculas que tienen mas probabilidadas de ser similares
