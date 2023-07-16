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
![Image text](https://github.com/miguelramoscanari/dashboard-acceso-internet/blob/main/Imagenes/01acceso_a%C3%B1o.png)

Se hizo un analisis solo hasta el 2021, porque el periodo 2022 estaba incompleto hasta el 3 trimestre, en otros casos hasta el 1 bimestre.

Observamos el acceso a internet fijo cada va aumentado año, es decir la gente va solicitando cada vez mas el servico de internet.

![Image text](https://github.com/miguelramoscanari/dashboard-acceso-internet/blob/main/Imagenes/02acceso_prov.png)

Solo analizando las 3 provincias que tienen mas acceso.

En el caso de Provincia de Buenos Aires, cada año hubo aumento considerable del servicio de internet.

En el caso de Provincia de Capita Federal, en el 2017 hubo mayor cantidad de acceso de internet, hubo un estancamiento en el servicio.

En cambio en la Provincia de Cordova, hubo un aumento de acceso a internet cada año.

![Image text](https://github.com/miguelramoscanari/dashboard-acceso-internet/blob/main/Imagenes/03acceso_velocidad.png)

Observamos que desde 2014 hasta 2019, la velocidad mas usado fue de hasta 10 Mbps.

Pero el 2021 aumento considerablemente el internet de mas de 30 Mbps, esto se debe el abaratamiento del costo del servicio de internet. Por la tanto al tendencia es ofrecer el internet de mas de 30 Mbps

![Image text](https://github.com/miguelramoscanari/dashboard-acceso-internet/blob/main/Imagenes/04acceso_velocidad_prov.png)

Observamos en las ciudades que tienen mas acceso a internet, la tendencia es que la velocidad debe ser mayor a 30 Mbps, como se dijo es porque es debido a la disminucion del costo del internet.

![Image text](https://github.com/miguelramoscanari/dashboard-acceso-internet/blob/main/Imagenes/05penetracion_pareto.png)

De acuerdo al porcentaje acumulado en algunas provincias tiene mas del 60% del servicio internet. Por lo tanto no es recomendable contratar un nuevo proveedor de servio de internet

Pero en algunas provincias tenemos menos del 30% del servio de internet, por lo que es un oportunidad aprovechar ese mercado. Tenemos como ejemplo las provincias de Misiones, Santa Fruz, Mendoza, Corrientes, Chaco, Santiago del Estero, San Juan y Formosa.

![Image text](https://github.com/miguelramoscanari/dashboard-acceso-internet/blob/main/Imagenes/06penetracion_hab.png)

Observamos que tantao el Acceso por Cada 100 habitantes, esta en correlacion con Acceso por cada 100 hogares.

# KPI INDICADORES

## Acceso por cada 100 habitantes
Indicador utilizado más ampliamente para comparar la penetración del servicio telefónico.

Formula = Líneas principales por habitante / población * 100

## Acceso por cada 100 hogares
Indicador utilizado más ampliamente para comparar la penetración del servicio de internet

Formula = Líneas internet por hogar / población hogares * 100

## Velocidad promedio de bajada de internet fijo

Hasta el tercer trimestre de 2017 los operadores del servicio de Internet fijo reportaban a ENACOM (antes AFTIC y CNC) el número de accesos entre los siguientes rangos de velocidad:

Hasta 512 kbps
Entre 512 kbps y 1 Mbps
Entre 1 Mbps y 6 Mbps
Entre 6 Mbps y 10 Mbps
Entre 10 Mbps y 20 Mbps
Entre 20 Mbps y 30 Mbps
Más de 30 Mbps

Velociad Promedio de bajada de Internet fijo  = (0,512*AR1 + 0,7512*AR2 + 3,5*AR3 + 8*AR4 + 15*AR5 + 25*AR6 + 30*AR7)/Total de accesos reportados

Donde AR1 es el total de accesos reportados para el primer rango (Hasta 512 kbps); AR2 es el total de accesos reportados para el segundo rango (Entre 512 kbps y 1 Mbps) y así sucesivamente.

En argentina con respecto al servicio de datos en redes de acceso fijas, la velocidad de transferencia de datos de bajada debe ser mayor al 60% de la velocidad de transferencia nominal.
Aclaración sobre el cálculo de la velocidad promedio de bajada de Internet fijo en Argentina.

# CONCLUSIONES

## Calidad del servicio (velocidad)
Observamos que desde 2014 hasta 2019, la velocidad mas usado fue de hasta 10 Mbps. 

Pero el 2021 aumento considerablemente el internet de mas de 30 Mbps, esto se debe el abaratamiento del costo del servicio de internet. Por la tanto al tendencia es ofrecer el internet de mas de 30 Mbps

## Penetracion del mercado
De acuerdo al porcentaje acumulado en algunas provincias tiene mas del 60% del servicio internet. Por lo tanto no es recomendable contratar un nuevo proveedor de servio de internet

Pero en algunas provincias tenemos menos del 30% del servio de internet, por lo que es un oportunidad aprovechar ese mercado. Tenemos como ejemplo las provincias de Misiones, Santa Fruz, Mendoza, Corrientes, Chaco, Santiago del Estero, San Juan y Formosa.
