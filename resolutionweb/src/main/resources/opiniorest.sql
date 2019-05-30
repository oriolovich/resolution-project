-- ------------------------------------------------------
--  DDL for Table COMANDES
-- ------------------------------------------------------

CREATE TABLE `GESTIO`.`COMANDES`
   (	`COM_ID` VARCHAR(10) COMMENT,
	`COM_DATE` DATETIME COMMENT,
	`COM_TYPE` VARCHAR(1),
	`COM_TOTAL` DECIMAL(7,2)
   )
  ;
-- ------------------------------------------------------
--  DDL for Table LOG_COMANDES
-- ------------------------------------------------------

  CREATE TABLE `GESTIO`.`LOG_COMANDES`
   (	LOG_ID VARCHAR(10),
	LOG_USUA VARCHAR(100),
	LOG_DATA DATETIME,
	`LOG_TIPUS` VARCHAR(1),
	`LOG_DESCRIPCION` VARCHAR(100),
	`LOG_INV_ID` VARCHAR(10)
   )
  ;
-- ------------------------------------------------------
--  DDL for Table IMATGES
-- ------------------------------------------------------

  CREATE TABLE `GESTIO`.`IMATGES`
   (	`IMG_CODI` VARCHAR(3),
	`IMG_PATH` VARCHAR(30),
	`IMG_IMATGE` LONGBLOB,
	`IMG_RES_CODI` VARCHAR(3)
   )
  RETENTION
  NOCACHE LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
-- ------------------------------------------------------
--  DDL for Table TREBALLADORS
-- ------------------------------------------------------

  CREATE TABLE `GESTIO`.`TREBALLADORS`
   (	`TRE_CODI_RES` VARCHAR(6),
	`TRE_NOM_RES` VARCHAR(20),
	`TRE_CODI` VARCHAR(8),
	`TRE_NOM` VARCHAR(20),
	`TRE_LLINATGE` VARCHAR(20),
	`TRE_EMAIL` VARCHAR(20),
	`TRE_TELEFON` VARCHAR(20),
	`TRE_EXPERIENCIA` DATETIME (6)
   )
  ;
-- ------------------------------------------------------
--  DDL for Table OPINIONS
-- ------------------------------------------------------

  CREATE TABLE `GESTIO`.`OPINIONS`
   (	`OPI_CODI` VARCHAR(3),
	`OPI_OBSERVACIO` VARCHAR(3000),
	`OPI_PUNTUACIO` DECIMAL(5,2),
	`OPI_OPINIO_REVISADA` VARCHAR(1),
	`OPI_RES_CODI` VARCHAR(3),
	`OPI_USU_CODI` VARCHAR(3)
   )
  ;

   ALTER TABLE `GESTIO`.`OPINIONS`  COMMENT 'Opinions';
-- ------------------------------------------------------
--  DDL for Table FACTURES
-- ------------------------------------------------------

  CREATE TABLE `GESTIO`.`FACTURES`
   (	`FAC_CODI` VARCHAR(3),
	`FAC_DATA_FACTURA` DATETIME,
	`FAC_TOTAL_A_PAGAR` DECIMAL(7,2),
	`FAC_RES_CODI` VARCHAR(3),
	`FAC_IMPRESA` VARCHAR(1) DEFAULT 'N'
   )
  ;

   ALTER TABLE `GESTIO`.`FACTURES`  COMMENT 'Factures';
-- ------------------------------------------------------
--  DDL for Table POPINIONS
-- ------------------------------------------------------

  CREATE TABLE `GESTIO`.`POPINIONS`
   (	`POP_CODI` VARCHAR(3),
	`POP_OBSERVACIO` VARCHAR(3000),
	`POP_PUNTUACIO` DECIMAL(5,2),
	`POP_OPINIO_REVISADA` VARCHAR(1),
	`POP_RES_CODI` VARCHAR(3),
	`POP_PROV_CODI` VARCHAR(3)
   )
  ;
-- ------------------------------------------------------
--  DDL for Table PROVEIDORS
-- ------------------------------------------------------

  CREATE TABLE `GESTIO`.`PROVEIDORS`
   (	`PRO_CODI` VARCHAR(6),
	`PRO_CIF` VARCHAR(9),
	`PRO_NOM` VARCHAR(20),
	`PRO_LLINATGE` VARCHAR(20),
	`PRO_EMAIL` VARCHAR(20),
	`PRO_TELEFON` VARCHAR(20),
	`PRO_EXPERIENCIA` DATETIME (6)
   )
  ;
-- ------------------------------------------------------
--  DDL for Table RESTAURANTS
-- ------------------------------------------------------

  CREATE TABLE `GESTIO`.`RESTAURANTS`
   (	`RES_CODI` VARCHAR(3),
	`RES_NOM` VARCHAR(30),
	`RES_ADRECA` VARCHAR(100),
	`RES_MITJANA` DECIMAL(5,2),
	`RES_LATITUD` VARCHAR(30),
	`RES_LONGITUD` VARCHAR(30),
	`RES_WEB` VARCHAR(30),
	`RES_TELEFON` VARCHAR(30),
	`RES_TRS_CODI` VARCHAR(3),
	`RES_DESCRIP` VARCHAR(300)
   )
  ;

   ALTER TABLE `GESTIO`.`RESTAURANTS`  COMMENT 'Clients';
-- ------------------------------------------------------
--  DDL for Table TICKETS
-- ------------------------------------------------------

  CREATE TABLE `GESTIO`.`TICKETS`
   (	`TCK_CODI` VARCHAR(3),
	`TCK_DATA_TICKET` DATETIME,
	`TCK_TOTAL_IMPOSTS` DECIMAL(7,2),
	`TCK_FAC_CODI` VARCHAR(3),
	`TCK_RES_CODI` VARCHAR(3),
	`TCK_DESCRIPCIO` VARCHAR(30),
	`TCK_UNITATS` DECIMAL(5,2)
   )
  ;

   ALTER TABLE `GESTIO`.`TICKETS`  COMMENT 'Tickets';
-- ------------------------------------------------------
--  DDL for Table TOPINIONS
-- ------------------------------------------------------

  CREATE TABLE `GESTIO`.`TOPINIONS`
   (	`TOP_CODI` VARCHAR(3) COMMENT '',
	`TOP_OBSERVACIO` VARCHAR(3000) COMMENT '',
	`TOP_PUNTUACIO` DECIMAL(5,2) COMMENT '',
	`TOP_OPINIO_REVISADA` VARCHAR(1) COMMENT '',
	`TOP_RES_CODI` VARCHAR(3) COMMENT '',
	`TOP_USU_CODI` VARCHAR(3) COMMENT ''
   )
  ;

   /* Moved to CREATE TABLE
COMMENT ON COLUMN `GESTIO`.`TOPINIONS`.`TOP_CODI` IS ''; */
/* Moved to CREATE TABLE
COMMENT ON COLUMN `GESTIO`.`TOPINIONS`.`TOP_OBSERVACIO` IS ''; */
/* Moved to CREATE TABLE
COMMENT ON COLUMN `GESTIO`.`TOPINIONS`.`TOP_PUNTUACIO` IS ''; */
/* Moved to CREATE TABLE
COMMENT ON COLUMN `GESTIO`.`TOPINIONS`.`TOP_OPINIO_REVISADA` IS ''; */
/* Moved to CREATE TABLE
COMMENT ON COLUMN `GESTIO`.`TOPINIONS`.`TOP_RES_CODI` IS ''; */
/* Moved to CREATE TABLE
COMMENT ON COLUMN `GESTIO`.`TOPINIONS`.`TOP_USU_CODI` IS ''; */
ALTER TABLE `GESTIO`.`TOPINIONS`  COMMENT 'Opinions';
-- ------------------------------------------------------
--  DDL for Table USUARIS
-- ------------------------------------------------------

CREATE TABLE `GESTIO`.`USUARIS`
(	`USU_CODI` VARCHAR(3),
`USU_PASSWORD` VARCHAR(30),
`USU_NOM` VARCHAR(30),
`USU_ADRECA_ELECTRONICA` VARCHAR(30)
)
;
-- ------------------------------------------------------
--  DDL for Index COM_PK
-- ------------------------------------------------------

CREATE UNIQUE INDEX `GESTIO`.`COM_PK` ON `GESTIO`.`COMANDES` (`COM_ID`)
;
-- ------------------------------------------------------
--  DDL for Index LOG_PK
-- ------------------------------------------------------

CREATE UNIQUE INDEX `GESTIO`.`LOG_PK` ON `GESTIO`.`LOG_COMANDES` (`LOG_ID`)
;
-- ------------------------------------------------------
--  DDL for Index IMATGES_IMG_CODI_IDX
-- ------------------------------------------------------

CREATE UNIQUE INDEX `GESTIO`.`IMATGES_IMG_CODI_IDX` ON `GESTIO`.`IMATGES` (`IMG_CODI`)
;
-- ------------------------------------------------------
--  DDL for Index IMATGES_IMG_RES_CODI_IDX
-- ------------------------------------------------------

CREATE INDEX `GESTIO`.`IMATGES_IMG_RES_CODI_IDX` ON `GESTIO`.`IMATGES` (`IMG_RES_CODI`)
;
-- ------------------------------------------------------
--  DDL for Index TRE_CODI_RES
-- ------------------------------------------------------

CREATE UNIQUE INDEX `GESTIO`.`TRE_CODI_RES` ON `GESTIO`.`TREBALLADORS` (`TRE_CODI_RES`)
;
-- ------------------------------------------------------
--  DDL for Index OPINIONS_OPI_CODI_IDX
-- ------------------------------------------------------

CREATE UNIQUE INDEX `GESTIO`.`OPINIONS_OPI_CODI_IDX` ON `GESTIO`.`OPINIONS` (`OPI_CODI`)
;
-- ------------------------------------------------------
--  DDL for Index OPINIONS_OPI_RES_CODI_IDX
-- ------------------------------------------------------

CREATE INDEX `GESTIO`.`OPINIONS_OPI_RES_CODI_IDX` ON `GESTIO`.`OPINIONS` (`OPI_RES_CODI`)
;
-- ------------------------------------------------------
--  DDL for Index OPINIONS_OPI_USU_CODI_IDX
-- ------------------------------------------------------

CREATE INDEX `GESTIO`.`OPINIONS_OPI_USU_CODI_IDX` ON `GESTIO`.`OPINIONS` (`OPI_USU_CODI`)
;
-- ------------------------------------------------------
--  DDL for Index FACTURES_FAC_CODI_IDX
-- ------------------------------------------------------

CREATE UNIQUE INDEX `GESTIO`.`FACTURES_FAC_CODI_IDX` ON `GESTIO`.`FACTURES` (`FAC_CODI`)
;
-- ------------------------------------------------------
--  DDL for Index FACTURES_FAC_RES_CODI_IDX
-- ------------------------------------------------------

CREATE INDEX `GESTIO`.`FACTURES_FAC_RES_CODI_IDX` ON `GESTIO`.`FACTURES` (`FAC_RES_CODI`)
;
-- ------------------------------------------------------
--  DDL for Index POPINIONS_PK
-- ------------------------------------------------------

CREATE UNIQUE INDEX `GESTIO`.`POPINIONS_PK` ON `GESTIO`.`POPINIONS` (`POP_PROV_CODI`)
;
-- ------------------------------------------------------
--  DDL for Index PROV_CODI_PK
-- ------------------------------------------------------

CREATE UNIQUE INDEX `GESTIO`.`PROV_CODI_PK` ON `GESTIO`.`PROVEIDORS` (`PRO_CODI`)
;
-- ------------------------------------------------------
--  DDL for Index RESTAURANTS_RES_CODI_IDX
-- ------------------------------------------------------

CREATE UNIQUE INDEX `GESTIO`.`RESTAURANTS_RES_CODI_IDX` ON `GESTIO`.`RESTAURANTS` (`RES_CODI`)
;
-- ------------------------------------------------------
--  DDL for Index RESTAURANTS_RES_TRS_CODI_IDX
-- ------------------------------------------------------

CREATE INDEX `GESTIO`.`RESTAURANTS_RES_TRS_CODI_IDX` ON `GESTIO`.`RESTAURANTS` (`RES_TRS_CODI`)
;
-- ------------------------------------------------------
--  DDL for Index TICKETS_TCK_CODI_IDX
-- ------------------------------------------------------

CREATE UNIQUE INDEX `GESTIO`.`TICKETS_TCK_CODI_IDX` ON `GESTIO`.`TICKETS` (`TCK_CODI`)
;
-- ------------------------------------------------------
--  DDL for Index TICKETS_TCK_FAC_CODI_IDX
-- ------------------------------------------------------

CREATE INDEX `GESTIO`.`TICKETS_TCK_FAC_CODI_IDX` ON `GESTIO`.`TICKETS` (`TCK_FAC_CODI`)
;
-- ------------------------------------------------------
--  DDL for Index TICKETS_TCK_RES_CODI_IDX
-- ------------------------------------------------------

CREATE INDEX `GESTIO`.`TICKETS_TCK_RES_CODI_IDX` ON `GESTIO`.`TICKETS` (`TCK_RES_CODI`)
;
-- ------------------------------------------------------
--  DDL for Index TOP_CODI_PK
-- ------------------------------------------------------

CREATE UNIQUE INDEX `GESTIO`.`TOP_CODI_PK` ON `GESTIO`.`TOPINIONS` (`TOP_CODI`)
;
-- ------------------------------------------------------
--  DDL for Index USUARIS_USU_CODI_IDX
-- ------------------------------------------------------

CREATE UNIQUE INDEX `GESTIO`.`USUARIS_USU_CODI_IDX` ON `GESTIO`.`USUARIS` (`USU_CODI`)
;
--
-- ------------------------------------------------------
--  DDL for Trigger TRIG_LOG
-- ------------------------------------------------------

CREATE OR REPLACE TRIGGER `GESTIO`.`TRIG_LOG`
BEFORE INSERT ON LOG_COMANDES
FOR EACH ROW
BEGIN
Set :new.log_id =seq_log.NEXTVAL;
END;
/
ALTER TRIGGER `GESTIO`.`TRIG_LOG` ENABLE;
-- ------------------------------------------------------
--  DDL for Trigger TRG_OPI
-- ------------------------------------------------------

CREATE OR REPLACE TRIGGER `GESTIO`.`TRG_OPI`
BEFORE INSERT OR UPDATE OR DELETE ON opinions
FOR EACH ROW

DECLARE v_numopis DOUBLE;
DECLARE v_mitjana DOUBLE;
DECLARE v_calcul  DOUBLE;
BEGIN
IF INSERTING THEN
SET :new.opi_codi = SEQ_OPI.NEXTVAL;
END IF;
--
SELECT IFNULL(res_trs_codi,0), IFNULL(res_mitjana,0) INTO v_numopis, v_mitjana
FROM restaurants
WHERE res_codi = IFNULL(:old.opi_res_codi,:new.opi_res_codi);
--
BEGIN
SET v_calcul = ((v_mitjana * v_numopis) + (:new.opi_puntuacio)) / (v_numopis + 1);
--
UPDATE restaurants
SET res_trs_codi = res_trs_codi + 1,
res_mitjana = v_calcul
WHERE res_codi = IFNULL(:old.opi_res_codi,:new.opi_res_codi);
END;
END;
/
ALTER TRIGGER `GESTIO`.`TRG_OPI` ENABLE;
-- ------------------------------------------------------
--  DDL for Trigger TRG_RES
-- ------------------------------------------------------

CREATE OR REPLACE TRIGGER `GESTIO`.`TRG_RES`
BEFORE INSERT
  ON RESTAURANTS
FOR EACH ROW
BEGIN
Set :new.res_codi=seq_res.NEXTVAL;

END;
/
ALTER TRIGGER `GESTIO`.`TRG_RES` ENABLE;
-- ------------------------------------------------------
--  DDL for Trigger TRG_USU
-- ------------------------------------------------------

CREATE OR REPLACE TRIGGER `GESTIO`.`TRG_USU`
BEFORE INSERT
  ON USUARIS
FOR EACH ROW
BEGIN
Set :new.usu_codi=seq_usu.NEXTVAL;

END;
/
ALTER TRIGGER `GESTIO`.`TRG_USU` ENABLE;
-- ------------------------------------------------------
--  Constraints for Table COMANDES
-- ------------------------------------------------------

ALTER TABLE `GESTIO`.`COMANDES` ADD CONSTRAINT `INV_PK` PRIMARY KEY (`COM_ID`)
10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
TABLESPACE `SYSTEM`  ENABLE;
-- ------------------------------------------------------
--  Constraints for Table LOG_COMANDES
-- ------------------------------------------------------

ALTER TABLE `GESTIO`.`LOG_COMANDES` ADD CONSTRAINT `LOG_PK` PRIMARY KEY (`LOG_ID`)
10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
TABLESPACE `SYSTEM`  ENABLE;
-- ------------------------------------------------------
--  Constraints for Table IMATGES
-- ------------------------------------------------------

ALTER TABLE `GESTIO`.`IMATGES` ADD CONSTRAINT `IMG_IMATGES_PK` PRIMARY KEY (`IMG_CODI`)
10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
TABLESPACE `SYSTEM`  ENABLE;
ALTER TABLE `GESTIO`.`IMATGES` MODIFY (`IMG_RES_CODI` NOT NULL ENABLE);
ALTER TABLE `GESTIO`.`IMATGES` MODIFY (`IMG_CODI` NOT NULL ENABLE);
-- ------------------------------------------------------
--  Constraints for Table TREBALLADORS
-- ------------------------------------------------------

ALTER TABLE `GESTIO`.`TREBALLADORS` ADD CONSTRAINT `TRE_CODI_RES` PRIMARY KEY (`TRE_CODI_RES`)
10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
TABLESPACE `SYSTEM`  ENABLE;
ALTER TABLE `GESTIO`.`TREBALLADORS` MODIFY (`TRE_LLINATGE` NOT NULL ENABLE);
ALTER TABLE `GESTIO`.`TREBALLADORS` MODIFY (`TRE_NOM` NOT NULL ENABLE);
ALTER TABLE `GESTIO`.`TREBALLADORS` MODIFY (`TRE_CODI` NOT NULL ENABLE);
ALTER TABLE `GESTIO`.`TREBALLADORS` MODIFY (`TRE_NOM_RES` NOT NULL ENABLE);
ALTER TABLE `GESTIO`.`TREBALLADORS` MODIFY (`TRE_CODI_RES` NOT NULL ENABLE);
-- ------------------------------------------------------
--  Constraints for Table OPINIONS
-- ------------------------------------------------------

ALTER TABLE `GESTIO`.`OPINIONS` ADD CONSTRAINT `CK_OPI` CHECK (opi_opinio_revisada IN ('S','N'));
ALTER TABLE `GESTIO`.`OPINIONS` ADD CONSTRAINT `OPI_OPINIONS_PK` PRIMARY KEY (`OPI_CODI`)
10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
TABLESPACE `SYSTEM`  ENABLE;
ALTER TABLE `GESTIO`.`OPINIONS` MODIFY (`OPI_USU_CODI` NOT NULL ENABLE);
ALTER TABLE `GESTIO`.`OPINIONS` MODIFY (`OPI_RES_CODI` NOT NULL ENABLE);
ALTER TABLE `GESTIO`.`OPINIONS` MODIFY (`OPI_OPINIO_REVISADA` NOT NULL ENABLE);
ALTER TABLE `GESTIO`.`OPINIONS` MODIFY (`OPI_PUNTUACIO` NOT NULL ENABLE);
ALTER TABLE `GESTIO`.`OPINIONS` MODIFY (`OPI_OBSERVACIO` NOT NULL ENABLE);
ALTER TABLE `GESTIO`.`OPINIONS` MODIFY (`OPI_CODI` NOT NULL ENABLE);
-- ------------------------------------------------------
--  Constraints for Table FACTURES
-- ------------------------------------------------------

ALTER TABLE `GESTIO`.`FACTURES` ADD CONSTRAINT `CK_FAC` CHECK (fac_impresa IN ('S','N'));
ALTER TABLE `GESTIO`.`FACTURES` MODIFY (`FAC_IMPRESA` NOT NULL ENABLE);
ALTER TABLE `GESTIO`.`FACTURES` ADD CONSTRAINT `FAC_FACTURES_PK` PRIMARY KEY (`FAC_CODI`)
10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
TABLESPACE `SYSTEM`  ENABLE;
ALTER TABLE `GESTIO`.`FACTURES` MODIFY (`FAC_RES_CODI` NOT NULL ENABLE);
ALTER TABLE `GESTIO`.`FACTURES` MODIFY (`FAC_TOTAL_A_PAGAR` NOT NULL ENABLE);
ALTER TABLE `GESTIO`.`FACTURES` MODIFY (`FAC_DATA_FACTURA` NOT NULL ENABLE);
ALTER TABLE `GESTIO`.`FACTURES` MODIFY (`FAC_CODI` NOT NULL ENABLE);
-- ------------------------------------------------------
--  Constraints for Table POPINIONS
-- ------------------------------------------------------

ALTER TABLE `GESTIO`.`POPINIONS` ADD CONSTRAINT `POPINIONS_PK` PRIMARY KEY (`POP_PROV_CODI`)
10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
TABLESPACE `SYSTEM`  ENABLE;
ALTER TABLE `GESTIO`.`POPINIONS` MODIFY (`POP_PROV_CODI` NOT NULL ENABLE);
ALTER TABLE `GESTIO`.`POPINIONS` MODIFY (`POP_RES_CODI` NOT NULL ENABLE);
ALTER TABLE `GESTIO`.`POPINIONS` MODIFY (`POP_OPINIO_REVISADA` NOT NULL ENABLE);
ALTER TABLE `GESTIO`.`POPINIONS` MODIFY (`POP_PUNTUACIO` NOT NULL ENABLE);
ALTER TABLE `GESTIO`.`POPINIONS` MODIFY (`POP_OBSERVACIO` NOT NULL ENABLE);
ALTER TABLE `GESTIO`.`POPINIONS` MODIFY (`POP_CODI` NOT NULL ENABLE);
-- ------------------------------------------------------
--  Constraints for Table PROVEIDORS
-- ------------------------------------------------------

ALTER TABLE `GESTIO`.`PROVEIDORS` ADD CONSTRAINT `PROV_CODI_PK` PRIMARY KEY (`PRO_CODI`)
10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
TABLESPACE `SYSTEM`  ENABLE;
ALTER TABLE `GESTIO`.`PROVEIDORS` MODIFY (`PRO_LLINATGE` NOT NULL DISABLE VALIDATE);
ALTER TABLE `GESTIO`.`PROVEIDORS` MODIFY (`PRO_NOM` NOT NULL DISABLE VALIDATE);
ALTER TABLE `GESTIO`.`PROVEIDORS` MODIFY (`PRO_CIF` NOT NULL DISABLE VALIDATE);
ALTER TABLE `GESTIO`.`PROVEIDORS` MODIFY (`PRO_CODI` NOT NULL DISABLE VALIDATE);
-- ------------------------------------------------------
--  Constraints for Table RESTAURANTS
-- ------------------------------------------------------

ALTER TABLE `GESTIO`.`RESTAURANTS` ADD CONSTRAINT `RES_RESTAURANTS_PK` PRIMARY KEY (`RES_CODI`)
10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
TABLESPACE `SYSTEM`  ENABLE;
ALTER TABLE `GESTIO`.`RESTAURANTS` MODIFY (`RES_TRS_CODI` NOT NULL ENABLE);
ALTER TABLE `GESTIO`.`RESTAURANTS` MODIFY (`RES_ADRECA` NOT NULL ENABLE);
ALTER TABLE `GESTIO`.`RESTAURANTS` MODIFY (`RES_NOM` NOT NULL ENABLE);
ALTER TABLE `GESTIO`.`RESTAURANTS` MODIFY (`RES_CODI` NOT NULL ENABLE);
-- ------------------------------------------------------
--  Constraints for Table TICKETS
-- ------------------------------------------------------

ALTER TABLE `GESTIO`.`TICKETS` ADD CONSTRAINT `TCK_TICKETS_PK` PRIMARY KEY (`TCK_CODI`)
10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
TABLESPACE `SYSTEM`  ENABLE;
ALTER TABLE `GESTIO`.`TICKETS` MODIFY (`TCK_RES_CODI` NOT NULL ENABLE);
ALTER TABLE `GESTIO`.`TICKETS` MODIFY (`TCK_TOTAL_IMPOSTS` NOT NULL ENABLE);
ALTER TABLE `GESTIO`.`TICKETS` MODIFY (`TCK_DATA_TICKET` NOT NULL ENABLE);
ALTER TABLE `GESTIO`.`TICKETS` MODIFY (`TCK_CODI` NOT NULL ENABLE);
-- ------------------------------------------------------
--  Constraints for Table TOPINIONS
-- ------------------------------------------------------

ALTER TABLE `GESTIO`.`TOPINIONS` ADD CONSTRAINT `TOP_CODI_PK` PRIMARY KEY (`TOP_CODI`)
10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
TABLESPACE `SYSTEM`  ENABLE;
ALTER TABLE `GESTIO`.`TOPINIONS` MODIFY (`TOP_USU_CODI` NOT NULL ENABLE);
ALTER TABLE `GESTIO`.`TOPINIONS` MODIFY (`TOP_RES_CODI` NOT NULL ENABLE);
ALTER TABLE `GESTIO`.`TOPINIONS` MODIFY (`TOP_OPINIO_REVISADA` NOT NULL ENABLE);
ALTER TABLE `GESTIO`.`TOPINIONS` MODIFY (`TOP_PUNTUACIO` NOT NULL ENABLE);
ALTER TABLE `GESTIO`.`TOPINIONS` MODIFY (`TOP_OBSERVACIO` NOT NULL ENABLE);
ALTER TABLE `GESTIO`.`TOPINIONS` MODIFY (`TOP_CODI` NOT NULL ENABLE);
-- ------------------------------------------------------
--  Constraints for Table USUARIS
-- ------------------------------------------------------

ALTER TABLE `GESTIO`.`USUARIS` ADD CONSTRAINT `USU_USUARIS_PK` PRIMARY KEY (`USU_CODI`)
10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
TABLESPACE `SYSTEM`  ENABLE;
ALTER TABLE `GESTIO`.`USUARIS` MODIFY (`USU_ADRECA_ELECTRONICA` NOT NULL ENABLE);
ALTER TABLE `GESTIO`.`USUARIS` MODIFY (`USU_NOM` NOT NULL ENABLE);
ALTER TABLE `GESTIO`.`USUARIS` MODIFY (`USU_CODI` NOT NULL ENABLE);
