------- PRATICA SQL MARIA LOURDES RAMOS --------
------------------------------------------------

--CREO EL ESQUEMA

create schema practica_SQL_ML_Ramos authorization kfjvfmcr;


--CREO LA TABLA DEE COLORES
create table practica_SQL_ML_Ramos.colors (
	id_color varchar(20) not null, --PK
	name varchar(50) not null, 
	description varchar(512) null
) ;

--PRIMARY KEY
alter table practica_SQL_ML_Ramos.colors
add constraint colors_PK primary key (id_color) ;


--AGREGO DATOS A LA TABLA COLORES
insert into practica_SQL_ML_Ramos.colors
(id_color, name, description)
VALUES ('0001', 'BLANCO', '') ;

insert into practica_SQL_ML_Ramos.colors
(id_color, name, description)
VALUES ('0002', 'NEGRO', '') ;

insert into practica_SQL_ML_Ramos.colors
(id_color, name, description)
VALUES ('0003', 'ROJO', '') ;

insert into practica_SQL_ML_Ramos.colors
(id_color, name, description)
VALUES ('0004', 'VERDE', '') ;

insert into practica_SQL_ML_Ramos.colors
(id_color, name, description)
VALUES ('0005', 'AZUL', '') ;

insert into practica_SQL_ML_Ramos.colors
(id_color, name, description)
VALUES ('0006', 'AMARILLO', '') ;



-- CREO TABLA DE COCHES

create table practica_SQL_ML_Ramos.coches (
	id_coche varchar(20) not null, --PK
	matricula varchar(50) not null, 
	km_total integer not null,
	dt_compra date not null, 
	id_color varchar(20) not null --FK ->colors ->id_color
);

-- PRIMAY KEY Y FOREIGN KEY
alter table practica_SQL_ML_Ramos.coches
add constraint coches_PK primary key (id_coche) ;

alter table practica_SQL_ML_Ramos.coches
add constraint colors_FK foreign key (id_color)
references practica_SQL_ML_Ramos.colors(id_color) ;



--AGREGO DATOS A LA TABLA COCHES
insert into practica_SQL_ML_Ramos.coches
(id_coche, matricula, km_total, dt_compra , id_color)
VALUES ('00001', '0000 AAA', 10000, '2021-10-10', '0001') ;

insert into practica_SQL_ML_Ramos.coches
(id_coche, matricula, km_total, dt_compra,  id_color)
VALUES ('00002', '0001 AAA', 89000, '2019-10-11', '0002') ;

insert into practica_SQL_ML_Ramos.coches
(id_coche, matricula, km_total, dt_compra,  id_color)
VALUES ('00003', '0002 AAA', 150000, '2015-10-10',  '0003') ;

insert into practica_SQL_ML_Ramos.coches
(id_coche, matricula, km_total, dt_compra,  id_color)
VALUES ('00004', '0003 AAA', 15000, '2021-10-10',  '0001') ;

insert into practica_SQL_ML_Ramos.coches
(id_coche, matricula, km_total, dt_compra,  id_color)
VALUES ('00005', '0004 AAA', 8000, '2022-10-10', '0005') ;

insert into practica_SQL_ML_Ramos.coches
(id_coche, matricula, km_total, dt_compra,  id_color)
VALUES ('00006', '0005 AAA', 120000, '2018-10-10',  '0006') ;

insert into practica_SQL_ML_Ramos.coches
(id_coche, matricula, km_total, dt_compra,  id_color)
VALUES ('00007', '0006 AAA', 130000, '2018-10-10',  '0002') ;

insert into practica_SQL_ML_Ramos.coches
(id_coche, matricula, km_total, dt_compra,id_color)
VALUES ('00008', '0007 AAA', 140000, '2017-10-10','0002') ;

insert into practica_SQL_ML_Ramos.coches
(id_coche, matricula, km_total, dt_compra,  id_color)
VALUES ('00009', '0008 AAA', 100000, '2019-10-10', '0003') ;

insert into practica_SQL_ML_Ramos.coches
(id_coche, matricula, km_total, dt_compra,  id_color)
VALUES ('00010', '0009 AAA', 10000, '2022-01-10','0001') ;

insert into practica_SQL_ML_Ramos.coches
(id_coche, matricula, km_total, dt_compra,  id_color)
VALUES ('00011', '0010 AAA', 5000, '2022-10-10','0004') ;

insert into practica_SQL_ML_Ramos.coches
(id_coche, matricula, km_total, dt_compra,  id_color)
VALUES ('00012', '0011 AAA', 98000, '2019-10-10', '0002') ;

insert into practica_SQL_ML_Ramos.coches
(id_coche, matricula, km_total, dt_compra,  id_color)
VALUES ('00013', '0012 AAA', 80000, '2019-10-10', '0001') ;

insert into practica_SQL_ML_Ramos.coches
(id_coche, matricula, km_total, dt_compra, id_color)
VALUES ('00014', '0013 AAA', 130000, '2017-10-10', '0001') ;

insert into practica_SQL_ML_Ramos.coches
(id_coche, matricula, km_total, dt_compra, id_color)
VALUES ('00015', '0014 AAA', 2000, '2022-10-10',  '0003') ;






--CREO TABLA DE ASEGURADORAS
create table practica_SQL_ML_Ramos.aseguradora (
	id_coche varchar(20) not null, --PK y FK -> coches -> id_coches
	id_aseguradora varchar(20) not null, --PK 
	num_poliza integer not null,
	name varchar(50) not null
);

--PRIMARY KEY
alter table practica_SQL_ML_Ramos.aseguradora
add constraint aseguradora_PK primary key (id_coche, id_aseguradora) ;

alter table practica_SQL_ML_Ramos.aseguradora
add constraint coche_aseguradora_FK foreign key (id_coche)
references practica_SQL_ML_Ramos.coches(id_coche) ;


--AGREGO DATOS A TABLA ASEGURADORAS

insert into practica_SQL_ML_Ramos.aseguradora(id_coche, id_aseguradora, num_poliza, name)VALUES ('00001','01', 10000111, 'MAPFRE') ;
insert into practica_SQL_ML_Ramos.aseguradora(id_coche, id_aseguradora, num_poliza, name)VALUES ('00002','02', 20000112, 'ALLIANZ') ;
insert into practica_SQL_ML_Ramos.aseguradora(id_coche, id_aseguradora, num_poliza, name)VALUES ('00003','03', 30000113, 'MUTUA MADRILEÑA') ;
insert into practica_SQL_ML_Ramos.aseguradora(id_coche, id_aseguradora, num_poliza, name)VALUES ('00004','04', 40000114, 'GENERALI') ;
insert into practica_SQL_ML_Ramos.aseguradora(id_coche, id_aseguradora, num_poliza, name)VALUES ('00005','05', 50000115, 'AXA') ;
insert into practica_SQL_ML_Ramos.aseguradora(id_coche, id_aseguradora, num_poliza, name)VALUES ('00006','03', 30000116, 'MUTUA MADRILEÑA') ;
insert into practica_SQL_ML_Ramos.aseguradora(id_coche, id_aseguradora, num_poliza, name)VALUES ('00007','01', 10000112, 'MAPFRE') ;
insert into practica_SQL_ML_Ramos.aseguradora(id_coche, id_aseguradora, num_poliza, name)VALUES ('00008','02', 20000114, 'ALLIANZ') ;
insert into practica_SQL_ML_Ramos.aseguradora(id_coche, id_aseguradora, num_poliza, name)VALUES ('00009','03', 30000115, 'MUTUA MADRILEÑA') ;
insert into practica_SQL_ML_Ramos.aseguradora(id_coche, id_aseguradora, num_poliza, name)VALUES ('00010','04', 40000116, 'GENERALI') ;
insert into practica_SQL_ML_Ramos.aseguradora(id_coche, id_aseguradora, num_poliza, name)VALUES ('00011','05', 50000117, 'AXA') ;
insert into practica_SQL_ML_Ramos.aseguradora(id_coche, id_aseguradora, num_poliza, name)VALUES ('00012','03', 30000118, 'MUTUA MADRILEÑA') ;
insert into practica_SQL_ML_Ramos.aseguradora(id_coche, id_aseguradora, num_poliza, name)VALUES ('00013','05', 50000119, 'AXA') ;
insert into practica_SQL_ML_Ramos.aseguradora(id_coche, id_aseguradora, num_poliza, name)VALUES ('00014','01', 10001000, 'MAPFRE') ;
insert into practica_SQL_ML_Ramos.aseguradora(id_coche, id_aseguradora, num_poliza, name)VALUES ('00015','01', 10000300, 'MAPFRE') ;







--CREO TABLA DE GRUPOS
create table practica_SQL_ML_Ramos.grupos (
	id_grupo varchar(20) not null, --PK 
	name varchar (50) not null,
	description varchar(512) null
);

--PK
alter table practica_SQL_ML_Ramos.grupos
add constraint grupos_PK primary key (id_grupo) ;


--AGREGO DATOS A TABLA DE GRUPOS

insert into practica_SQL_ML_Ramos.grupos
(id_grupo, name, description)
VALUES ('001', 'GRUPO_1', '') ;

insert into practica_SQL_ML_Ramos.grupos
(id_grupo, name, description)
VALUES ('002', 'GRUPO_2', '') ;

insert into practica_SQL_ML_Ramos.grupos
(id_grupo, name, description)
VALUES ('003', 'GRUPO_3', '') ;



-- CREO TABLA DE MARCAS
create table practica_SQL_ML_Ramos.marcas (
	id_marca varchar(20) not null, --PK
	name varchar (50) not null,
	id_grupo varchar(20) not null --FK -> grupos -> id_grupo
);


-- PK and FK
alter table practica_SQL_ML_Ramos.marcas
add constraint marcas_PK primary key (id_marca) ;

alter table practica_SQL_ML_Ramos.marcas
add constraint grupo_FK foreign key (id_grupo)
references practica_SQL_ML_Ramos.grupos(id_grupo) ;

--AGREGO DATOS A TABLA MARCAS

insert into practica_SQL_ML_Ramos.marcas
(id_marca, name, id_grupo)
VALUES ('01', 'VW', '001') ;

insert into practica_SQL_ML_Ramos.marcas
(id_marca, name, id_grupo)
VALUES ('02', 'FORD', '001') ;

insert into practica_SQL_ML_Ramos.marcas
(id_marca, name, id_grupo)
VALUES ('03', 'SEAT', '001') ;

insert into practica_SQL_ML_Ramos.marcas
(id_marca, name, id_grupo)
VALUES ('04', 'AUDI', '002') ;

insert into practica_SQL_ML_Ramos.marcas
(id_marca, name, id_grupo)
VALUES ('05', 'MERCEDES_BENZ', '002') ;

insert into practica_SQL_ML_Ramos.marcas
(id_marca, name, id_grupo)
VALUES ('06', 'HYUNDAI', '002') ;

insert into practica_SQL_ML_Ramos.marcas
(id_marca, name, id_grupo)
VALUES ('07', 'TOYOTA', '003') ;

insert into practica_SQL_ML_Ramos.marcas
(id_marca, name, id_grupo)
VALUES ('08', 'RENAULT', '003') ;

insert into practica_SQL_ML_Ramos.marcas
(id_marca, name, id_grupo)
VALUES ('09', 'KIA', '003') ;




--CREO TABLA MODELOS
create table practica_SQL_ML_Ramos.modelos (
	id_coche varchar(20) not null, --PK y FK -> coches -> id_coche
	id_modelo varchar (50) not null, -- PK 
	name varchar (50) not null, 
	id_marca varchar(20) not null -- FK -> marcas -> id_marca
);

-- PK and FK

alter table practica_SQL_ML_Ramos.modelos
add constraint id_coches_PK primary key (id_coche, id_modelo) ;

alter table practica_SQL_ML_Ramos.modelos
add constraint modelo_coches_FK foreign key (id_coche)
references practica_SQL_ML_Ramos.coches (id_coche) ;

alter table practica_SQL_ML_Ramos.modelos
add constraint marca_FK foreign key (id_marca)
references practica_SQL_ML_Ramos.marcas(id_marca) ;

--AGREGO DATOS A TABLA MODELOS

insert into practica_SQL_ML_Ramos.modelos(id_coche, id_modelo, name, id_marca)VALUES ( '00001',  '00001',  ' modelo1', '01') ; 
insert into practica_SQL_ML_Ramos.modelos(id_coche, id_modelo, name, id_marca)VALUES ( '00002',  '00002',  ' modelo2', '02') ; 
insert into practica_SQL_ML_Ramos.modelos(id_coche, id_modelo, name, id_marca)VALUES ( '00003',  '00003',  ' modelo3', '03') ; 
insert into practica_SQL_ML_Ramos.modelos(id_coche, id_modelo, name, id_marca)VALUES ( '00004',  '00004',  ' modelo4', '04') ; 
insert into practica_SQL_ML_Ramos.modelos(id_coche, id_modelo, name, id_marca)VALUES ( '00005',  '00005',  ' modelo5', '05') ; 
insert into practica_SQL_ML_Ramos.modelos(id_coche, id_modelo, name, id_marca)VALUES ( '00006',  '00006',  ' modelo6', '06') ; 
insert into practica_SQL_ML_Ramos.modelos(id_coche, id_modelo, name, id_marca)VALUES ( '00007',  '00007',  ' modelo7', '07') ; 
insert into practica_SQL_ML_Ramos.modelos(id_coche, id_modelo, name, id_marca)VALUES ( '00008',  '00008',  ' modelo8', '08') ; 
insert into practica_SQL_ML_Ramos.modelos(id_coche, id_modelo, name, id_marca)VALUES ( '00009',  '00009',  ' modelo9', '09') ; 
insert into practica_SQL_ML_Ramos.modelos(id_coche, id_modelo, name, id_marca)VALUES ( '00010',  '00010',  ' modelo10', '09') ; 
insert into practica_SQL_ML_Ramos.modelos(id_coche, id_modelo, name, id_marca)VALUES ( '00011',  '00011',  ' modelo11', '08') ; 
insert into practica_SQL_ML_Ramos.modelos(id_coche, id_modelo, name, id_marca)VALUES ( '00012',  '00012',  ' modelo12', '07') ; 
insert into practica_SQL_ML_Ramos.modelos(id_coche, id_modelo, name, id_marca)VALUES ( '00013',  '00001',  ' modelo1', '01') ; 
insert into practica_SQL_ML_Ramos.modelos(id_coche, id_modelo, name, id_marca)VALUES ( '00014',  '00001',  ' modelo1', '01') ; 
insert into practica_SQL_ML_Ramos.modelos(id_coche, id_modelo, name, id_marca)VALUES ( '00015',  '00004',  ' modelo4', '04') ; 




--CREO TABLA DE MONEDA
create table practica_SQL_ML_Ramos.currency (
	id_currency varchar (50) not null, -- PK and FK -> currencies -> id_currency
	name varchar (50) not null, 
	description varchar(512) null
);

alter table practica_SQL_ML_Ramos.currency
add constraint id_currency_PK primary key (id_currency) ;

--AGREGO DATOS A TABLA MONEDA
insert into practica_SQL_ML_Ramos.currency
(id_currency, name, description)
VALUES ('001', 'EURO', 'MONEDA EURO') ;

insert into practica_SQL_ML_Ramos.currency
(id_currency, name, description)
VALUES ('002', 'DOLAR', 'MONEDA DOLAR') ;

insert into practica_SQL_ML_Ramos.currency
(id_currency, name, description)
VALUES ('003', 'LIBRA', 'MONEDA LIBRA') ;




-- CREO TABLA REVISIONES COCHES

create table practica_SQL_ML_Ramos.revisiones_coches (
	id_revision varchar (50) not null, --PK 
	id_coche varchar(20) not null, --PK y FK ->id_coches ->id_coche
	km_momento integer  null,
	dt date  null,
	id_currency varchar(50) null, --FK -> currency -> id_currency
	costo integer  null
);

alter table practica_SQL_ML_Ramos.revisiones_coches
add constraint revision_PK primary key (id_revision, id_coche) ;


alter table practica_SQL_ML_Ramos.revisiones_coches
add constraint coche_FK foreign key (id_coche)
references practica_SQL_ML_Ramos.coches(id_coche) ;

alter table practica_SQL_ML_Ramos.revisiones_coches
add constraint currency_FK foreign key (id_currency)
references practica_SQL_ML_Ramos.currency(id_currency) ;

--AGREGO LOS DATOS DE LA TABLA DE REVISIONES COCHES

insert into practica_SQL_ML_Ramos.revisiones_coches(id_revision, id_coche, km_momento, dt, id_currency, costo)VALUES ( '1',  '00002', 30000,  '2019-10-11', '001', 80) ;
insert into practica_SQL_ML_Ramos.revisiones_coches(id_revision, id_coche, km_momento, dt, id_currency, costo)VALUES ( '2',  '00002', 65000,  '2020-10-11', '001', 80) ;
insert into practica_SQL_ML_Ramos.revisiones_coches(id_revision, id_coche, km_momento, dt, id_currency, costo)VALUES ( '3',  '00003', 30000,  '2016-01-12', '001', 80) ;
insert into practica_SQL_ML_Ramos.revisiones_coches(id_revision, id_coche, km_momento, dt, id_currency, costo)VALUES ( '4',  '00003', 70000,  '2017-01-12', '001', 80) ;
insert into practica_SQL_ML_Ramos.revisiones_coches(id_revision, id_coche, km_momento, dt, id_currency, costo)VALUES ( '5',  '00003', 120000,  '2019-01-13', '001', 80) ;
insert into practica_SQL_ML_Ramos.revisiones_coches(id_revision, id_coche, km_momento, dt, id_currency, costo)VALUES ( '6',  '00004', 15000,  '2022-01-13', '003', 70) ;
insert into practica_SQL_ML_Ramos.revisiones_coches(id_revision, id_coche, km_momento, dt, id_currency, costo)VALUES ( '7',  '00006', 30000,  '2019-01-15', '001', 80) ;
insert into practica_SQL_ML_Ramos.revisiones_coches(id_revision, id_coche, km_momento, dt, id_currency, costo)VALUES ( '8',  '00006', 70000,  '2020-01-15', '001', 80) ;
insert into practica_SQL_ML_Ramos.revisiones_coches(id_revision, id_coche, km_momento, dt, id_currency, costo)VALUES ( '9',  '00007', 30000,  '2019-01-16', '001', 80) ;
insert into practica_SQL_ML_Ramos.revisiones_coches(id_revision, id_coche, km_momento, dt, id_currency, costo)VALUES ( '10',  '00007', 65000,  '2020-01-16', '002', 78) ;
insert into practica_SQL_ML_Ramos.revisiones_coches(id_revision, id_coche, km_momento, dt, id_currency, costo)VALUES ( '11',  '00007', 120000,  '2021-01-16', '002', 78) ;
insert into practica_SQL_ML_Ramos.revisiones_coches(id_revision, id_coche, km_momento, dt, id_currency, costo)VALUES ( '12',  '00008', 30000,  '2018-01-17', '001', 80) ;
insert into practica_SQL_ML_Ramos.revisiones_coches(id_revision, id_coche, km_momento, dt, id_currency, costo)VALUES ( '13',  '00008', 65000,  '2019-01-17', '001', 80) ;
insert into practica_SQL_ML_Ramos.revisiones_coches(id_revision, id_coche, km_momento, dt, id_currency, costo)VALUES ( '14',  '00008', 110000,  '2020-01-17', '001', 80) ;
insert into practica_SQL_ML_Ramos.revisiones_coches(id_revision, id_coche, km_momento, dt, id_currency, costo)VALUES ( '15',  '00008', 140000,  '2021-01-17', '001', 80) ;
insert into practica_SQL_ML_Ramos.revisiones_coches(id_revision, id_coche, km_momento, dt, id_currency, costo)VALUES ( '16',  '00009', 30000,  '2020-01-18', '001', 80) ;
insert into practica_SQL_ML_Ramos.revisiones_coches(id_revision, id_coche, km_momento, dt, id_currency, costo)VALUES ( '17',  '00009', 60000,  '2021-01-18', '001', 80) ;
insert into practica_SQL_ML_Ramos.revisiones_coches(id_revision, id_coche, km_momento, dt, id_currency, costo)VALUES ( '18',  '00009', 90000,  '2022-01-18', '001', 80) ;
insert into practica_SQL_ML_Ramos.revisiones_coches(id_revision, id_coche, km_momento, dt, id_currency, costo)VALUES ( '19',  '00012', 30000,  '2020-01-21', '002', 78) ;
insert into practica_SQL_ML_Ramos.revisiones_coches(id_revision, id_coche, km_momento, dt, id_currency, costo)VALUES ( '20',  '00012', 60000,  '2021-01-21', '002', 78) ;
insert into practica_SQL_ML_Ramos.revisiones_coches(id_revision, id_coche, km_momento, dt, id_currency, costo)VALUES ( '21',  '00012', 90000,  '2022-01-21', '002', 78) ;
insert into practica_SQL_ML_Ramos.revisiones_coches(id_revision, id_coche, km_momento, dt, id_currency, costo)VALUES ( '22',  '00013', 30000,  '2020-01-22', '001', 80) ;
insert into practica_SQL_ML_Ramos.revisiones_coches(id_revision, id_coche, km_momento, dt, id_currency, costo)VALUES ( '23',  '00013', 60000,  '2021-01-21', '001', 80) ;
insert into practica_SQL_ML_Ramos.revisiones_coches(id_revision, id_coche, km_momento, dt, id_currency, costo)VALUES ( '24',  '00014', 30000,  '2018-01-23', '002', 78) ;
insert into practica_SQL_ML_Ramos.revisiones_coches(id_revision, id_coche, km_momento, dt, id_currency, costo)VALUES ( '25',  '00014', 60000,  '2019-01-23', '002', 78) ;
insert into practica_SQL_ML_Ramos.revisiones_coches(id_revision, id_coche, km_momento, dt, id_currency, costo)VALUES ( '26',  '00014', 90000,  '2020-01-23', '002', 78) ;
insert into practica_SQL_ML_Ramos.revisiones_coches(id_revision, id_coche, km_momento, dt, id_currency, costo)VALUES ( '27',  '00014', 120000,  '2021-01-23', '002', 78) ;
insert into practica_SQL_ML_Ramos.revisiones_coches(id_revision, id_coche, km_momento, dt, id_currency, costo)VALUES ( '28',  '00001', null,  null, null, null ) ;
insert into practica_SQL_ML_Ramos.revisiones_coches(id_revision, id_coche, km_momento, dt, id_currency, costo)VALUES ( '29',  '00005', null ,  null, null, null ) ;
insert into practica_SQL_ML_Ramos.revisiones_coches(id_revision, id_coche, km_momento, dt, id_currency, costo)VALUES ( '30',  '00010', null ,  null , null ,null) ;
insert into practica_SQL_ML_Ramos.revisiones_coches(id_revision, id_coche, km_momento, dt, id_currency, costo)VALUES ( '31',  '00011', null ,  null , null, null) ;
insert into practica_SQL_ML_Ramos.revisiones_coches(id_revision, id_coche, km_momento, dt, id_currency, costo)VALUES ( '32',  '00015', null ,  null, null, null) 


