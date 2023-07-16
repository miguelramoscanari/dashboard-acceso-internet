-- ---------------------------------------
-- CREANDO TABLAS
-- ---------------------------------------
DROP TABLE IF EXISTS `dim_calendario`;
CREATE TABLE IF NOT EXISTS `dim_calendario` (
  	`Año` 			INTEGER,
  	`Trimestre` 	INTEGER
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;	

DROP TABLE IF EXISTS `dim_provincia`;
CREATE TABLE IF NOT EXISTS `dim_provincia` (
  `Provincia`			VARCHAR(50),
  `ProvinciaPais`		VARCHAR(100)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

DROP TABLE IF EXISTS `internet`;
CREATE TABLE IF NOT EXISTS `internet` (
  	`Año` 						INTEGER,
  	`Trimestre` 				INTEGER,
  	`Provincia`					VARCHAR(100),
	`+ 0 Mbps - 10 Mbps`		INTEGER,
	`+ 10 Mbps - 20 Mbps`		INTEGER,
	`+ 20 Mbps - 30 Mbps`		INTEGER,
	`+ 30 Mbps`					INTEGER,
	`Otros`						DECIMAL(10,2),
	`Total`						INTEGER,
	`Accesos por cada 100 hab`		INTEGER,
	`Accesos por cada 100 hogares`	DECIMAL(10,2),
	`Mbps (Media de bajada)`		INTEGER
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

ALTER TABLE dim_calendario ADD PRIMARY KEY (`Año`, `Trimestre`);
ALTER TABLE dim_provincia ADD PRIMARY KEY (`Provincia`);
ALTER TABLE internet ADD PRIMARY KEY (`Año`, `Trimestre`, `Provincia`);



-- ---------------------------------------
-- LOAD CSV A TABLAS
-- ---------------------------------------

SELECT @@global.secure_file_priv; -- Para ver la ruta de origen donde poner los csv.

LOAD DATA INFILE 'csv\\da_internet\\dim_calendario.csv'
INTO TABLE dim_calendario  
CHARACTER SET utf8mb4 -- Si no colocamos esta línea, no reconoce la codificación adecuada ANSI
FIELDS TERMINATED BY ';' ENCLOSED BY '' ESCAPED BY '' 
LINES TERMINATED BY '\n' IGNORE 1 LINES;

SELECT * FROM dim_calendario;

LOAD DATA INFILE 'csv\\da_internet\\dim_provincia.csv'
INTO TABLE dim_provincia  
CHARACTER SET utf8mb4 -- Si no colocamos esta línea, no reconoce la codificación adecuada ANSI
FIELDS TERMINATED BY ';' ENCLOSED BY '' ESCAPED BY '' 
LINES TERMINATED BY '\n' IGNORE 1 LINES;

SELECT * FROM dim_provincia;

LOAD DATA INFILE 'csv\\da_internet\\internet.csv'
INTO TABLE internet  
CHARACTER SET utf8mb4 -- Si no colocamos esta línea, no reconoce la codificación adecuada ANSI
FIELDS TERMINATED BY ';' ENCLOSED BY '"' ESCAPED BY '' 
LINES TERMINATED BY '\n' IGNORE 1 LINES;

SELECT * FROM internet;
