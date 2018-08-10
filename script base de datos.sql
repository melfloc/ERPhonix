CREATE DATABASE ERPHONIX
-- CREACION DE LA BASE DE DATOS
USE ERPHONIX
-- CREACION DE TABLAS
CREATE TABLE FACTURA (
FAC_UUID VARCHAR(36) PRIMARY KEY NOT NULL,
-- FAC_FACTURA BINARY, -- 0 = RECIBIDA, 1 = EMITIDA * (calculado)
FAC_VERSION VARCHAR(3),
FAC_SERIE VARCHAR(25),
FAC_FOLIO VARCHAR(40),
FAC_FECHAEMISION DATE,
FAC_FORMAPAGO VARCHAR(2),
FAC_CONDICIONESPAGO VARCHAR(1000),
FAC_SUBTOTAL NUMERIC(10,2),
FAC_DESCUENTO NUMERIC(10,2),
FAC_MONEDA VARCHAR(3),
FAC_TIPOCAMBIO NUMERIC(8,6),
FAC_TOTAL NUMERIC(10,2),
FAC_TIPOCOMPROBANTE VARCHAR(1),
FAC_METODOPAGO VARCHAR(3),
FAC_LUGAREXPEDICION VARCHAR(5),
FAC_RFCEMISOR VARCHAR(13),
FAC_NOMBREEMISOR VARCHAR(254),
FAC_REGIMENFISCAL VARCHAR(3),
FAC_RFCRECEPTOR VARCHAR(13),
FAC_NOMBRERECEPTOR VARCHAR(254),
FAC_RESIDENCIAFISCAL VARCHAR(3),
FAC_NUMREGIDTRIB VARCHAR(40),
FAC_USOCFDI VARCHAR(3),
FAC_CONCEPTOS VARCHAR(1000),
FAC_RETENIDOIVA NUMERIC(10,2),
FAC_RETENIDOISR NUMERIC(10,2),
FAC_IVA NUMERIC (10,2),
FAC_TOTALIEPS NUMERIC (10,2),
FAC_FECHATIMBRADO DATETIME,
)

CREATE TABLE NOMINA (
NOM_UUID VARCHAR(36), PRIMARY KEY NOT NULL,
NOM_FECHA DATE,
NOM_SERIE VARCHAR(25),
NOM_FOLIO VARCHAR(40),
NOM_RFCRECEPTOR VARCHAR(13),
NOM_NOMBRERECEPTOR VARCHAR(254),
NOM_RFCEMISOR VARCHAR(13),
NOM_NOMBREEMISOR VARCHAR(254),
NOM_REGISTROPATRONAL VARCHAR(20),
NOM_TIPONOMINA VARCHAR(1),
NOM_FECHAPAGO DATE,
NOM_FECHAINICIALPAGO DATE,
NOM_FECHAFINALPAGO DATE,
NOM_NUMDIASPAGADOS NUMERIC(5,3),
NOM_SUBTOTAL NUMERIC(10,2),
NOM_DESCUENTO NUMERIC(10,2),
NOM_TOTAL NUMERIC(10,2),
NOM_METODOPAGO VARCHAR(3),
NOM_REGIMENFISCAL VARCHAR(3),
NOM_CONCEPTOS VARCHAR(1000),
NOM_TIPOCOMPROBANTE VARCHAR(1),
NOM_VERSION VARCHAR(3),
NOM_MONEDA VARCHAR(3),
NOM_TIPOCAMBIO NUMERIC(8,6),
NOM_RECEPTORCURP VARCHAR(18),
NOM_NUMSEGSOCIAL VARCHAR(15),
NOM_FECHAINIRELLAB DATE,
NOM_ANTIGUEDAD VARCHAR(10),
NOM_TIPOCONTRATO VARCHAR(2),
NOM_SINDICALIZADO VARCHAR(2),
NOM_TIPOJORNADA VARCHAR(2),
NOM_TIPOREGIMEN VARCHAR(2),
NOM_NUMEMPLEADO VARCHAR(15),
NOM_DEPARTAMENTO VARCHAR(100),
NOM_PUESTO VARCHAR(100),
NOM_RIESGOPUESTO VARCHAR(2),
NOM_PERIOINIPAGO VARCHAR(2),
NOM_BANCO VARCHAR(3),
NOM_CTABANCARIA INT(18),
NOM_SALDOBACOAP NUMERIC(20,2),
NOM_SALARIODI NUMERIC(20,2),
NOM_CVEENTFED VARCHAR(3),
NOM_TOTALSUELDOSPER NUMERIC(10,2),
NOM_TOTALSEPINDPER NUMERIC(10,2),
NOM_TOTALJUBPENSRET NUMERIC(10,2),
NOM_TOTALEXENTOPER NUMERIC(10,2),
NOM_TOTALOTRASDED NUMERIC(10,2),
NOM_TOTALIMPRETEN NUMERIC(10,2),
NOM_P01_SUE_SA_EX NUMERIC(20,2),
NOM_P01_SUE_SA_GR NUMERIC(20,2),
NOM_P02_AGUIN_EX NUMERIC(20,2),
NOM_P02_AGUIN_GR NUMERIC(20,2),
NOM_P03_UTIL_EX NUMERIC(20,2),
NOM_P03_UTIL_GR NUMERIC(20,2),
NOM_P04_GASMED_EX NUMERIC(20,2),
NOM_P04_GASMED_GR NUMERIC(20,2),
NOM_P05_FONAHO_EX NUMERIC(20,2),
NOM_P05_FONAHO_EX NUMERIC(20,2),
NOM_P06_CAJDH_EX NUMERIC(20,2),
NOM_P06_CAJDH_GR NUMERIC(20,2),
NOM_P09_CONT_EX NUMERIC(20,2),
NOM_P10_PRPUN_EX NUMERIC(20,2),
NOM_P10_PRPUN_GR NUMERIC(20,2),
NOM_P11_PRISEG_EX NUMERIC(20,2),
NOM_P11_PRISEG_GR NUMERIC(20,2),
NOM_P12_GASMED_EX NUMERIC(20,2),
NOM_P12_GASMED_GR NUMERIC(20,2),
NOM_P13_CUOSIN_EX NUMERIC(20,2),
NOM_P13_CUOSIN_GR NUMERIC(20,2),
NOM_P14_INCAP_EX NUMERIC(20,2),
NOM_P14_INCAP_GR NUMERIC(20,2),
NOM_P15_BECAS_EX NUMERIC(20,2),
NOM_P15_BECAS_GR NUMERIC(20,2),
NOM_P19_HRSEXT_EX NUMERIC(20,2),
NOM_P19_HRSEXT_GR NUMERIC(20,2),
NOM_P20_PRMDOM_EX NUMERIC(20,2),
NOM_P20_PRMDOM_GR NUMERIC(20,2),
NOM_P21_PRMVAC_EX NUMERIC(20,2),
NOM_P21_PRMVAC_GR NUMERIC(20,2),
NOM_P22_PRMANT_EX NUMERIC(20,2),
NOM_P22_PRMANT_GR NUMERIC(20,2),
NOM_P23_PSEPAR_EX NUMERIC(20,2),
NOM_P23_PSEPAR_GR NUMERIC(20,2),
NOM_P24_SGRETI_EX NUMERIC(20,2),
NOM_P24_SGRETI_GR NUMERIC(20,2),
NOM_P25_INDEMN_EX NUMERIC(20,2),
NOM_P25_INDEMN_GR NUMERIC(20,2),
NOM_P26_RFUNER_EX NUMERIC(20,2),
NOM_P26_RFUNER_GR NUMERIC(20,2),
NOM_P27_CUOSEG_EX NUMERIC(20,2),
NOM_P27_CUOSEG_GR NUMERIC(20,2),
NOM_P28_COMIS_EX NUMERIC(20,2),
NOM_P28_COMIS_GR NUMERIC(20,2),
NOM_P29_VALDSP_EX NUMERIC(20,2),
NOM_P29_VALDSP_GR NUMERIC(20,2),
NOM_P30_VALRES_EX NUMERIC(20,2),
NOM_P30_VALRES_GR NUMERIC(20,2),
NOM_P31_VALGAS_EX NUMERIC(20,2),
NOM_P31_VALGAS_GR NUMERIC(20,2),
NOM_P32_VALROP_EX NUMERIC(20,2),
NOM_P32_VALROP_GR NUMERIC(20,2),
NOM_P33_AYRENT_EX NUMERIC(20,2),
NOM_P33_AYRENT_GR NUMERIC(20,2),
NOM_P34_ARTESC_EX NUMERIC(20,2),
NOM_P34_ARTESC_GR NUMERIC(20,2),
NOM_P35_AYLENT_EX NUMERIC(20,2),
NOM_P35_AYLENT_GR NUMERIC(20,2),
NOM_P36_TRANSP_EX NUMERIC(20,2),
NOM_P36_TRANSP_GR NUMERIC(20,2),
NOM_P37_GFUNER_EX NUMERIC(20,2),
NOM_P37_GFUNER_GR NUMERIC(20,2),
NOM_P38_OTRING_EX NUMERIC(20,2),
NOM_P38_OTRING_GR NUMERIC(20,2),
NOM_P39_JUBILA_EX NUMERIC(20,2),
NOM_P39_JUBILA_GR NUMERIC(20,2),
NOM_P44_JUBPAR_EX NUMERIC(20,2),
NOM_P44_JUBPAR_GR NUMERIC(20,2),
NOM_P45_BIENES_EX NUMERIC(20,2),
NOM_P45_BIENES_GR NUMERIC(20,2),
NOM_P46_ASIMIL_EX NUMERIC(20,2),
NOM_P46_ASIMIL_GR NUMERIC(20,2),
NOM_P47_ALIMEN_EX NUMERIC(20,2),
NOM_P47_ALIMEN_GR NUMERIC(20,2),
NOM_P48_HABIT_EX NUMERIC(20,2),
NOM_P48_HABIT_GR NUMERIC(20,2),
NOM_P49_ASIST_EX NUMERIC(20,2),
NOM_P49_ASIST_GR NUMERIC(20,2),
NOM_P50_VIATIC_EX NUMERIC(20,2),
NOM_P50_VIATIC_GR NUMERIC(20,2),
NOM_D01_SEGSOC NUMERIC(20,2),
NOM_D02_ISR NUMERIC(20,2),
NOM_D03_APRETI NUMERIC(20,2),
NOM_D04_OTROS NUMERIC(20,2),
NOM_D05_FONVIV NUMERIC(20,2),
NOM_D06_DESINC NUMERIC(20,2),
NOM_D07_PNALIM NUMERIC(20,2),
NOM_D08_RENTA NUMERIC(20,2),
NOM_D09_INFONAVIT NUMERIC(20,2),
NOM_D10_CRVIV NUMERIC(20,2),
NOM_D11_INFONACOT NUMERIC(20,2),
NOM_D12_ANTSAL NUMERIC(20,2),
NOM_D13_EXCESO NUMERIC(20,2),
NOM_D14_ERRORES NUMERIC(20,2),
NOM_D15_PERDIDA NUMERIC(20,2),
NOM_D16_AVERIAS NUMERIC(20,2),
NOM_D17_AAPPEE NUMERIC(20,2),
NOM_D18_CCFSCCA NUMERIC(20,2),
NOM_D19_CUOSIND NUMERIC(20,2),
NOM_D20_AUSENC NUMERIC(20,2),
NOM_D21_CUOBPA NUMERIC(20,2),
NOM_D22_IMPLOC NUMERIC(20,2),
NOM_D23_APOVOL NUMERIC(20,2),
NOM_D24_AGUINEX NUMERIC(20,2),
NOM_D25_AGUINGR NUMERIC(20,2),
NOM_D26_APTUEX NUMERIC(20,2),
NOM_D27_APTUGR NUMERIC(20,2),
NOM_D28_GASMEDEX NUMERIC(20,2),
NOM_D29_FONAHOEX NUMERIC(20,2),
NOM_D30_CAJAHOEX NUMERIC(20,2),
NOM_D31_ACCTPPEX NUMERIC(20,2),
NOM_D32_PUNTGR NUMERIC(20,2),
NOM_D33_SEGVIDEX NUMERIC(20,2),
NOM_D34_GASMEDEX NUMERIC(20,2),
NOM_D35_COUSINEX NUMERIC(20,2),
NOM_D71_SUBSEE NUMERIC(20,2),
NOM_OP002_SUBSEM NUMERIC(20,2),
)

CREATE TABLE EMPRESA (
EMP_RFC VARCHAR(13) NOT NULL PRIMARY KEY,
EMP_NOMBRE VARCHAR(254),
EMP_CORREO VARCHAR(120),
EMP_CVESAT VARCHAR(8)
-- EMP_DIRECCION VARCHAR(254)* 
)

CREATE TABLE BANCOS (
)

-- AVANCE HASTA 2018-08-10--