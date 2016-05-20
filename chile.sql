/**********************************************************
* Este archivo contiene el Script de creación de la base de
* datos de los códigos territoriales para Chile 
* (actualizados a la fecha 13/09/2011)
*
* La base de datos está basada en el último documento
* oficial publicado por el 'Sistema nacional de información
* municipal Chileno' (SINIM) el cual a su vez se basa en el
* Decreto Exento Nº 817 del Ministerio del Interior,
* publicado en el Diario Oficial el día 26 de Marzo de 2010 .
*
* Este Script está adaptado para PostgreSQL 
* Autor original: Gustavo Lacoste gustavo@lacosox.org
* 
* Script orginal
* http://www.lacosox.org
* Dirección del proyecto en GitHub:
*						https://github.com/knxroot/BDCUT_CL
*
* Este Script está adaptado para PostgreSQL 9.4
* Autor adaptación: Pablo Morales pablo3512@hotmail.com
*
**********************************************************/
--
-- PostgreSQL database dump
--

SET statement_timeout = '0';
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: comuna; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE comuna (
  id integer NOT NULL DEFAULT 0,
  nombre character varying(20),
  id_provincia integer NOT NULL
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.comuna OWNER TO postgres;

--
-- Name: provincia; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE provincia (
  id integer NOT NULL DEFAULT 0,
  nombre character varying(23),
  id_region integer
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.provincia OWNER TO postgres;

--
-- Name: region; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE region (
  id integer NOT NULL DEFAULT 0,
  nombre character varying(50),
  iso_3166_2_cl character varying(5)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.region OWNER TO postgres;

--
-- Data for Name: comuna; Type: TABLE DATA; Schema: public; Owner: postgres
--

insert into comuna values (1101,'Iquique',11);
insert into comuna values (1107,'Alto Hospicio',11);
insert into comuna values (1401,'Pozo Almonte',14);
insert into comuna values (1402,'Camiña',14);
insert into comuna values (1403,'Colchane',14);
insert into comuna values (1404,'Huara',14);
insert into comuna values (1405,'Pica',14);
insert into comuna values (2101,'Antofagasta',21);
insert into comuna values (2102,'Mejillones',21);
insert into comuna values (2103,'Sierra Gorda',21);
insert into comuna values (2104,'Taltal',21);
insert into comuna values (2201,'Calama',22);
insert into comuna values (2202,'Ollagüe',22);
insert into comuna values (2203,'San Pedro de Atacama',22);
insert into comuna values (2301,'Tocopilla',23);
insert into comuna values (2302,'María Elena',23);
insert into comuna values (3101,'Copiapó',31);
insert into comuna values (3102,'Caldera',31);
insert into comuna values (3103,'Tierra Amarilla',31);
insert into comuna values (3201,'Chañaral',32);
insert into comuna values (3202,'Diego de Almagro',32);
insert into comuna values (3301,'Vallenar',33);
insert into comuna values (3302,'Alto del Carmen',33);
insert into comuna values (3303,'Freirina',33);
insert into comuna values (3304,'Huasco',33);
insert into comuna values (4101,'La Serena',41);
insert into comuna values (4102,'Coquimbo',41);
insert into comuna values (4103,'Andacollo',41);
insert into comuna values (4104,'La Higuera',41);
insert into comuna values (4105,'Paihuano',41);
insert into comuna values (4106,'Vicuña',41);
insert into comuna values (4201,'Illapel',42);
insert into comuna values (4202,'Canela',42);
insert into comuna values (4203,'Los Vilos',42);
insert into comuna values (4204,'Salamanca',42);
insert into comuna values (4301,'Ovalle',43);
insert into comuna values (4302,'Combarbalá',43);
insert into comuna values (4303,'Monte Patria',43);
insert into comuna values (4304,'Punitaqui',43);
insert into comuna values (4305,'Río Hurtado',43);
insert into comuna values (5101,'Valparaíso',51);
insert into comuna values (5102,'Casablanca',51);
insert into comuna values (5103,'Concón',51);
insert into comuna values (5104,'Juan Fernández',51);
insert into comuna values (5105,'Puchuncaví',51);
insert into comuna values (5107,'Quintero',51);
insert into comuna values (5109,'Viña del Mar',51);
insert into comuna values (5201,'Isla de Pascua',52);
insert into comuna values (5301,'Los Andes',53);
insert into comuna values (5302,'Calle Larga',53);
insert into comuna values (5303,'Rinconada',53);
insert into comuna values (5304,'San Esteban',53);
insert into comuna values (5401,'La Ligua',54);
insert into comuna values (5402,'Cabildo',54);
insert into comuna values (5403,'Papudo',54);
insert into comuna values (5404,'Petorca',54);
insert into comuna values (5405,'Zapallar',54);
insert into comuna values (5501,'Quillota',55);
insert into comuna values (5502,'La Calera',55);
insert into comuna values (5503,'Hijuelas',55);
insert into comuna values (5504,'La Cruz',55);
insert into comuna values (5506,'Nogales',55);
insert into comuna values (5601,'San Antonio',56);
insert into comuna values (5602,'Algarrobo',56);
insert into comuna values (5603,'Cartagena',56);
insert into comuna values (5604,'El Quisco',56);
insert into comuna values (5605,'El Tabo',56);
insert into comuna values (5606,'Santo Domingo',56);
insert into comuna values (5701,'San Felipe',57);
insert into comuna values (5702,'Catemu',57);
insert into comuna values (5703,'Llay Llay',57);
insert into comuna values (5704,'Panquehue',57);
insert into comuna values (5705,'Putaendo',57);
insert into comuna values (5706,'Santa María',57);
insert into comuna values (5801,'Quilpué',58);
insert into comuna values (5802,'Limache',58);
insert into comuna values (5803,'Olmué',58);
insert into comuna values (5804,'Villa Alemana',58);
insert into comuna values (6101,'Rancagua',61);
insert into comuna values (6102,'Codegua',61);
insert into comuna values (6103,'Coinco',61);
insert into comuna values (6104,'Coltauco',61);
insert into comuna values (6105,'Doñihue',61);
insert into comuna values (6106,'Graneros',61);
insert into comuna values (6107,'Las Cabras',61);
insert into comuna values (6108,'Machalí',61);
insert into comuna values (6109,'Malloa',61);
insert into comuna values (6110,'Mostazal',61);
insert into comuna values (6111,'Olivar',61);
insert into comuna values (6112,'Peumo',61);
insert into comuna values (6113,'Pichidegua',61);
insert into comuna values (6114,'Quinta de Tilcoco',61);
insert into comuna values (6115,'Rengo',61);
insert into comuna values (6116,'Requínoa',61);
insert into comuna values (6117,'San Vicente',61);
insert into comuna values (6201,'Pichilemu',62);
insert into comuna values (6202,'La Estrella',62);
insert into comuna values (6203,'Litueche',62);
insert into comuna values (6204,'Marchihue',62);
insert into comuna values (6205,'Navidad',62);
insert into comuna values (6206,'Paredones',62);
insert into comuna values (6301,'San Fernando',63);
insert into comuna values (6302,'Chépica',63);
insert into comuna values (6303,'Chimbarongo',63);
insert into comuna values (6304,'Lolol',63);
insert into comuna values (6305,'Nancagua',63);
insert into comuna values (6306,'Palmilla',63);
insert into comuna values (6307,'Peralillo',63);
insert into comuna values (6308,'Placilla',63);
insert into comuna values (6309,'Pumanque',63);
insert into comuna values (6310,'Santa Cruz',63);
insert into comuna values (7101,'Talca',71);
insert into comuna values (7102,'Constitución',71);
insert into comuna values (7103,'Curepto',71);
insert into comuna values (7104,'Empedrado',71);
insert into comuna values (7105,'Maule',71);
insert into comuna values (7106,'Pelarco',71);
insert into comuna values (7107,'Pencahue',71);
insert into comuna values (7108,'Río Claro',71);
insert into comuna values (7109,'San Clemente',71);
insert into comuna values (7110,'San Rafael',71);
insert into comuna values (7201,'Cauquenes',72);
insert into comuna values (7202,'Chanco',72);
insert into comuna values (7203,'Pelluhue',72);
insert into comuna values (7301,'Curicó',73);
insert into comuna values (7302,'Hualañé',73);
insert into comuna values (7303,'Licantén',73);
insert into comuna values (7304,'Molina',73);
insert into comuna values (7305,'Rauco',73);
insert into comuna values (7306,'Romeral',73);
insert into comuna values (7307,'Sagrada Familia',73);
insert into comuna values (7308,'Teno',73);
insert into comuna values (7309,'Vichuquén',73);
insert into comuna values (7401,'Linares',74);
insert into comuna values (7402,'Colbún',74);
insert into comuna values (7403,'Longaví',74);
insert into comuna values (7404,'Parral',74);
insert into comuna values (7405,'Retiro',74);
insert into comuna values (7406,'San Javier',74);
insert into comuna values (7407,'Villa Alegre',74);
insert into comuna values (7408,'Yerbas Buenas',74);
insert into comuna values (8101,'Concepción',81);
insert into comuna values (8102,'Coronel',81);
insert into comuna values (8103,'Chiguayante',81);
insert into comuna values (8104,'Florida',81);
insert into comuna values (8105,'Hualqui',81);
insert into comuna values (8106,'Lota',81);
insert into comuna values (8107,'Penco',81);
insert into comuna values (8108,'San Pedro de la Paz',81);
insert into comuna values (8109,'Santa Juana',81);
insert into comuna values (8110,'Talcahuano',81);
insert into comuna values (8111,'Tomé',81);
insert into comuna values (8112,'Hualpén',81);
insert into comuna values (8201,'Lebu',82);
insert into comuna values (8202,'Arauco',82);
insert into comuna values (8203,'Cañete',82);
insert into comuna values (8204,'Contulmo',82);
insert into comuna values (8205,'Curanilahue',82);
insert into comuna values (8206,'Los Álamos',82);
insert into comuna values (8207,'Tirúa',82);
insert into comuna values (8301,'Los Ángeles',83);
insert into comuna values (8302,'Antuco',83);
insert into comuna values (8303,'Cabrero',83);
insert into comuna values (8304,'Laja',83);
insert into comuna values (8305,'Mulchén',83);
insert into comuna values (8306,'Nacimiento',83);
insert into comuna values (8307,'Negrete',83);
insert into comuna values (8308,'Quilaco',83);
insert into comuna values (8309,'Quilleco',83);
insert into comuna values (8310,'San Rosendo',83);
insert into comuna values (8311,'Santa Bárbara',83);
insert into comuna values (8312,'Tucapel',83);
insert into comuna values (8313,'Yumbel',83);
insert into comuna values (8314,'Alto Biobío',83);
insert into comuna values (8401,'Chillán',84);
insert into comuna values (8402,'Bulnes',84);
insert into comuna values (8403,'Cobquecura',84);
insert into comuna values (8404,'Coelemu',84);
insert into comuna values (8405,'Coihueco',84);
insert into comuna values (8406,'Chillán Viejo',84);
insert into comuna values (8407,'El Carmen',84);
insert into comuna values (8408,'Ninhue',84);
insert into comuna values (8409,'Ñiquén',84);
insert into comuna values (8410,'Pemuco',84);
insert into comuna values (8411,'Pinto',84);
insert into comuna values (8412,'Portezuelo',84);
insert into comuna values (8413,'Quillón',84);
insert into comuna values (8414,'Quirihue',84);
insert into comuna values (8415,'Ránquil',84);
insert into comuna values (8416,'San Carlos',84);
insert into comuna values (8417,'San Fabián',84);
insert into comuna values (8418,'San Ignacio',84);
insert into comuna values (8419,'San Nicolás',84);
insert into comuna values (8420,'Treguaco',84);
insert into comuna values (8421,'Yungay',84);
insert into comuna values (9101,'Temuco',91);
insert into comuna values (9102,'Carahue',91);
insert into comuna values (9103,'Cunco',91);
insert into comuna values (9104,'Curarrehue',91);
insert into comuna values (9105,'Freire',91);
insert into comuna values (9106,'Galvarino',91);
insert into comuna values (9107,'Gorbea',91);
insert into comuna values (9108,'Lautaro',91);
insert into comuna values (9109,'Loncoche',91);
insert into comuna values (9110,'Melipeuco',91);
insert into comuna values (9111,'Nueva Imperial',91);
insert into comuna values (9112,'Padre las Casas',91);
insert into comuna values (9113,'Perquenco',91);
insert into comuna values (9114,'Pitrufquén',91);
insert into comuna values (9115,'Pucón',91);
insert into comuna values (9116,'Saavedra',91);
insert into comuna values (9117,'Teodoro Schmidt',91);
insert into comuna values (9118,'Toltén',91);
insert into comuna values (9119,'Vilcún',91);
insert into comuna values (9120,'Villarrica',91);
insert into comuna values (9121,'Cholchol',91);
insert into comuna values (9201,'Angol',92);
insert into comuna values (9202,'Collipulli',92);
insert into comuna values (9203,'Curacautín',92);
insert into comuna values (9204,'Ercilla',92);
insert into comuna values (9205,'Lonquimay',92);
insert into comuna values (9206,'Los Sauces',92);
insert into comuna values (9207,'Lumaco',92);
insert into comuna values (9208,'Purén',92);
insert into comuna values (9209,'Renaico',92);
insert into comuna values (9210,'Traiguén',92);
insert into comuna values (9211,'Victoria',92);
insert into comuna values (10101,'Puerto Montt',101);
insert into comuna values (10102,'Calbuco',101);
insert into comuna values (10103,'Cochamó',101);
insert into comuna values (10104,'Fresia',101);
insert into comuna values (10105,'Frutillar',101);
insert into comuna values (10106,'Los Muermos',101);
insert into comuna values (10107,'Llanquihue',101);
insert into comuna values (10108,'Maullín',101);
insert into comuna values (10109,'Puerto Varas',101);
insert into comuna values (10201,'Castro',102);
insert into comuna values (10202,'Ancud',102);
insert into comuna values (10203,'Chonchi',102);
insert into comuna values (10204,'Curaco de Vélez',102);
insert into comuna values (10205,'Dalcahue',102);
insert into comuna values (10206,'Puqueldón',102);
insert into comuna values (10207,'Queilén',102);
insert into comuna values (10208,'Quellón',102);
insert into comuna values (10209,'Quemchi',102);
insert into comuna values (10210,'Quinchao',102);
insert into comuna values (10301,'Osorno',103);
insert into comuna values (10302,'Puerto Octay',103);
insert into comuna values (10303,'Purranque',103);
insert into comuna values (10304,'Puyehue',103);
insert into comuna values (10305,'Río Negro',103);
insert into comuna values (10306,'San Juan de la Costa',103);
insert into comuna values (10307,'San Pablo',103);
insert into comuna values (10401,'Chaitén',104);
insert into comuna values (10402,'Futaleufú',104);
insert into comuna values (10403,'Hualaihué',104);
insert into comuna values (10404,'Palena',104);
insert into comuna values (11101,'Coyhaique',111);
insert into comuna values (11102,'Lago Verde',111);
insert into comuna values (11201,'Aysén',112);
insert into comuna values (11202,'Cisnes',112);
insert into comuna values (11203,'Guaitecas',112);
insert into comuna values (11301,'Cochrane',113);
insert into comuna values (11302,'O Higgins',113);
insert into comuna values (11303,'Tortel',113);
insert into comuna values (11401,'Chile Chico',114);
insert into comuna values (11402,'Río Ibáñez',114);
insert into comuna values (12101,'Punta Arenas',121);
insert into comuna values (12102,'Laguna Blanca',121);
insert into comuna values (12103,'Río Verde',121);
insert into comuna values (12104,'San Gregorio',121);
insert into comuna values (12201,'Cabo de Hornos',122);
insert into comuna values (12202,'Antártica',122);
insert into comuna values (12301,'Porvenir',123);
insert into comuna values (12302,'Primavera',123);
insert into comuna values (12303,'Timaukel',123);
insert into comuna values (12401,'Natales',124);
insert into comuna values (12402,'Torres del Paine',124);
insert into comuna values (13101,'Santiago',131);
insert into comuna values (13102,'Cerrillos',131);
insert into comuna values (13103,'Cerro Navia',131);
insert into comuna values (13104,'Conchalí',131);
insert into comuna values (13105,'El Bosque',131);
insert into comuna values (13106,'Estación Central',131);
insert into comuna values (13107,'Huechuraba',131);
insert into comuna values (13108,'Independencia',131);
insert into comuna values (13109,'La Cisterna',131);
insert into comuna values (13110,'La Florida',131);
insert into comuna values (13111,'La Granja',131);
insert into comuna values (13112,'La Pintana',131);
insert into comuna values (13113,'La Reina',131);
insert into comuna values (13114,'Las Condes',131);
insert into comuna values (13115,'Lo Barnechea',131);
insert into comuna values (13116,'Lo Espejo',131);
insert into comuna values (13117,'Lo Prado',131);
insert into comuna values (13118,'Macul',131);
insert into comuna values (13119,'Maipú',131);
insert into comuna values (13120,'Ñuñoa',131);
insert into comuna values (13121,'Pedro Aguirre Cerda',131);
insert into comuna values (13122,'Peñalolén',131);
insert into comuna values (13123,'Providencia',131);
insert into comuna values (13124,'Pudahuel',131);
insert into comuna values (13125,'Quilicura',131);
insert into comuna values (13126,'Quinta Normal',131);
insert into comuna values (13127,'Recoleta',131);
insert into comuna values (13128,'Renca',131);
insert into comuna values (13129,'San Joaquín',131);
insert into comuna values (13130,'San Miguel',131);
insert into comuna values (13131,'San Ramón',131);
insert into comuna values (13132,'Vitacura',131);
insert into comuna values (13201,'Puente Alto',132);
insert into comuna values (13202,'Pirque',132);
insert into comuna values (13203,'San José de Maipo',132);
insert into comuna values (13301,'Colina',133);
insert into comuna values (13302,'Lampa',133);
insert into comuna values (13303,'Tiltil',133);
insert into comuna values (13401,'San Bernardo',134);
insert into comuna values (13402,'Buin',134);
insert into comuna values (13403,'Calera de Tango',134);
insert into comuna values (13404,'Paine',134);
insert into comuna values (13501,'Melipilla',135);
insert into comuna values (13502,'Alhué',135);
insert into comuna values (13503,'Curacaví',135);
insert into comuna values (13504,'María Pinto',135);
insert into comuna values (13505,'San Pedro',135);
insert into comuna values (13601,'Talagante',136);
insert into comuna values (13602,'El Monte',136);
insert into comuna values (13603,'Isla de Maipo',136);
insert into comuna values (13604,'Padre Hurtado',136);
insert into comuna values (13605,'Peñaflor',136);
insert into comuna values (14101,'Valdivia',141);
insert into comuna values (14102,'Corral',141);
insert into comuna values (14103,'Lanco',141);
insert into comuna values (14104,'Los Lagos',141);
insert into comuna values (14105,'Máfil',141);
insert into comuna values (14106,'Mariquina',141);
insert into comuna values (14107,'Paillaco',141);
insert into comuna values (14108,'Panguipulli',141);
insert into comuna values (14201,'La Unión',142);
insert into comuna values (14202,'Futrono',142);
insert into comuna values (14203,'Lago Ranco',142);
insert into comuna values (14204,'Río Bueno',142);
insert into comuna values (15101,'Arica',151);
insert into comuna values (15102,'Camarones',151);
insert into comuna values (15201,'Putre',152);
insert into comuna values (15202,'General Lagos',152);

INSERT INTO provincia VALUES (11,'Iquique',1);
INSERT INTO provincia VALUES (14,'Tamarugal',1);
INSERT INTO provincia VALUES (21,'Antofagasta',2);
INSERT INTO provincia VALUES (22,'El Loa',2);
INSERT INTO provincia VALUES (23,'Tocopilla',2);
INSERT INTO provincia VALUES (31,'Copiapó',3);
INSERT INTO provincia VALUES (32,'Chañaral',3);
INSERT INTO provincia VALUES (33,'Huasco',3);
INSERT INTO provincia VALUES (41,'Elqui',4);
INSERT INTO provincia VALUES (42,'Choapa',4);
INSERT INTO provincia VALUES (43,'Limarí',4);
INSERT INTO provincia VALUES (51,'Valparaíso',5);
INSERT INTO provincia VALUES (52,'Isla de Pascua',5);
INSERT INTO provincia VALUES (53,'Los Andes',5);
INSERT INTO provincia VALUES (54,'Petorca',5);
INSERT INTO provincia VALUES (55,'Quillota',5);
INSERT INTO provincia VALUES (56,'San Antonio',5);
INSERT INTO provincia VALUES (57,'San Felipe de Aconcagua',5);
INSERT INTO provincia VALUES (58,'Marga Marga',5);
INSERT INTO provincia VALUES (61,'Cachapoal',6);
INSERT INTO provincia VALUES (62,'Cardenal Caro',6);
INSERT INTO provincia VALUES (63,'Colchagua',6);
INSERT INTO provincia VALUES (71,'Talca',7);
INSERT INTO provincia VALUES (72,'Cauquenes',7);
INSERT INTO provincia VALUES (73,'Curicó',7);
INSERT INTO provincia VALUES (74,'Linares',7);
INSERT INTO provincia VALUES (81,'Concepción',8);
INSERT INTO provincia VALUES (82,'Arauco',8);
INSERT INTO provincia VALUES (83,'Biobío',8);
INSERT INTO provincia VALUES (84,'Ñuble',8);
INSERT INTO provincia VALUES (91,'Cautín',9);
INSERT INTO provincia VALUES (92,'Malleco',9);
INSERT INTO provincia VALUES (101,'Llanquihue',10);
INSERT INTO provincia VALUES (102,'Chiloé',10);
INSERT INTO provincia VALUES (103,'Osorno',10);
INSERT INTO provincia VALUES (104,'Palena',10);
INSERT INTO provincia VALUES (111,'Coihaique',11);
INSERT INTO provincia VALUES (112,'Aisén',11);
INSERT INTO provincia VALUES (113,'Capitán Prat',11);
INSERT INTO provincia VALUES (114,'General Carrera',11);
INSERT INTO provincia VALUES (121,'Magallanes',12);
INSERT INTO provincia VALUES (122,'Antártica Chilena',12);
INSERT INTO provincia VALUES (123,'Tierra del Fuego',12);
INSERT INTO provincia VALUES (124,'Última Esperanza',12);
INSERT INTO provincia VALUES (131,'Santiago',13);
INSERT INTO provincia VALUES (132,'Cordillera',13);
INSERT INTO provincia VALUES (133,'Chacabuco',13);
INSERT INTO provincia VALUES (134,'Maipo',13);
INSERT INTO provincia VALUES (135,'Melipilla',13);
INSERT INTO provincia VALUES (136,'Talagante',13);
INSERT INTO provincia VALUES (141,'Valdivia',14);
INSERT INTO provincia VALUES (142,'Ranco',14);
INSERT INTO provincia VALUES (151,'Arica',15);
INSERT INTO provincia VALUES (152,'Parinacota',15);


INSERT INTO region VALUES (1,'Tarapacá','CL-TA');
INSERT INTO region VALUES (2,'Antofagasta','CL-AN');
INSERT INTO region VALUES (3,'Atacama','CL-AT');
INSERT INTO region VALUES (4,'Coquimbo','CL-CO');
INSERT INTO region VALUES (5,'Valparaíso','CL-VS');
INSERT INTO region VALUES (6,'Región del Libertador Gral. Bernardo O’Higgins','CL-LI');
INSERT INTO region VALUES (7,'Región del Maule','CL-ML');
INSERT INTO region VALUES (8,'Región del Biobío','CL-BI');
INSERT INTO region VALUES (9,'Región de la Araucanía','CL-AR');
INSERT INTO region VALUES (10,'Región de Los Lagos','CL-LL');
INSERT INTO region VALUES (11,'Región Aisén del Gral. Carlos Ibáñez del Campo','CL-AI');
INSERT INTO region VALUES (12,'Región de Magallanes y de la Antártica Chilena','CL-MA');
INSERT INTO region VALUES (13,'Región Metropolitana de Santiago','CL-RM');
INSERT INTO region VALUES (14,'Región de Los Ríos','CL-LR');
INSERT INTO region VALUES (15,'Arica y Parinacota','CL-AP');
--
-- Name: comuna_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--
ALTER TABLE ONLY comuna
  ADD CONSTRAINT id_pk PRIMARY KEY (id);
--
-- Name: provincia_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--
ALTER TABLE ONLY provincia
    ADD CONSTRAINT provincia_pkey PRIMARY KEY (id);
--
-- Name: region_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--
ALTER TABLE ONLY region
    ADD CONSTRAINT region_pkey PRIMARY KEY (id);
--
-- Name: id_provincia; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--
CREATE INDEX id_provincia ON comuna USING btree (id_provincia);
--
-- Name: id_region; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--
CREATE INDEX id_region ON provincia USING btree (id_region);
--
-- Name: comuna_id_provincia_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY comuna
    ADD CONSTRAINT comuna_id_provincia_fkey FOREIGN KEY (id_provincia) REFERENCES provincia(id);
--
-- Name: provincia_id_region_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY provincia
    ADD CONSTRAINT provincia_id_region_fkey FOREIGN KEY (id_region) REFERENCES region(id);
--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;
--
-- PostgreSQL database dump complete
--
