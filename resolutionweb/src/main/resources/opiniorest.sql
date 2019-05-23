----------------------------------------------------------
----  DDL for Table RESTAURANTS
----------------------------------------------------------
--
--  CREATE TABLE GESTIO.RESTAURANTS
--   (	"RES_CODI" VARCHAR(3),
--	"RES_NOM" VARCHAR(30),
--	"RES_ADRECA" VARCHAR(100),
--	"RES_MITJANA" DECIMAL(5,2),
--	"RES_LATITUD" VARCHAR(30),
--	"RES_LONGITUD" VARCHAR(30),
--	"RES_WEB" VARCHAR(30),
--	"RES_TELEFON" VARCHAR(30),
--	"RES_TRS_CODI" VARCHAR(3)
--   )
--  ON "SYSTEM" ;
--
--   COMMENT ON TABLE "GESTIO"."RESTAURANTS"  IS 'Clients';
----------------------------------------------------------
----  DDL for Table USUARIS
----------------------------------------------------------
--
--  CREATE TABLE "GESTIO"."USUARIS"
--   (	"USU_CODI" VARCHAR(3),
--	"USU_PASSWORD" VARCHAR(30),
--	"USU_NOM" VARCHAR(30),
--	"USU_ADRECA_ELECTRONICA" VARCHAR(30)
--   )
--  ON "SYSTEM" ;
----------------------------------------------------------
----  DDL for Table TRESTAURANTS
----------------------------------------------------------
--
--  CREATE TABLE "GESTIO"."TRESTAURANTS"
--   (	"TRS_CODI" VARCHAR(3),
--	"TRS_DESCRIPCIO" VARCHAR(30)
--   )
--  ON "SYSTEM" ;
--
--   COMMENT ON TABLE "GESTIO"."TRESTAURANTS"  IS 'Tipus de clients';
----------------------------------------------------------
----  DDL for Table TICKETS
----------------------------------------------------------
--
--  CREATE TABLE "GESTIO"."TICKETS"
--   (	"TCK_CODI" VARCHAR(3),
--	"TCK_DATA_TICKET" DATETIME,
--	"TCK_TOTAL_LTICKETS" DECIMAL(7,2),
--	"TCK_TOTAL_IMPOSTS" DECIMAL(7,2),
--	"TCK_FAC_CODI" VARCHAR(3),
--	"TCK_RES_CODI" VARCHAR(3)
--   )
--  ON "SYSTEM" ;
--
--   COMMENT ON TABLE "GESTIO"."TICKETS"  IS 'Tickets';
----------------------------------------------------------
----  DDL for Table OPINIONS
----------------------------------------------------------
--
--  CREATE TABLE "GESTIO"."OPINIONS"
--   (	"OPI_CODI" VARCHAR(3),
--	"OPI_OBSERVACIO" VARCHAR(3000),
--	"OPI_PUNTUACIO" DECIMAL(5,2),
--	"OPI_OPINIO_REVISADA" VARCHAR(1),
--	"OPI_RES_CODI" VARCHAR(3),
--	"OPI_USU_CODI" VARCHAR(3)
--   )
--  ON "SYSTEM" ;
--
--   COMMENT ON TABLE "GESTIO"."OPINIONS"  IS 'Opinions';
----------------------------------------------------------
----  DDL for Table LTICKETS
----------------------------------------------------------
--
--  CREATE TABLE "GESTIO"."LTICKETS"
--   (	"LTK_TCK_CODI" VARCHAR(3),
--	"LTK_CODI" VARCHAR(3),
--	"LTK_DESCRIPCIO" VARCHAR(30),
--	"LTK_UNITATS" DECIMAL(5,2),
--	"LTK_TOTAL_UNITARI" DECIMAL(5,2)
--   )
--  ON "SYSTEM" ;
--
--   COMMENT ON TABLE "GESTIO"."LTICKETS"  IS 'Linies de tickets';
----------------------------------------------------------
----  DDL for Table LOG_INVOICES
----------------------------------------------------------
--
--  CREATE TABLE "GESTIO"."LOG_INVOICES"
--   (	"LOG_ID" VARCHAR(10),
--	"LOG_USER" VARCHAR(100),
--	"LOG_DATE" DATETIME,
--	"LOG_TYPE" VARCHAR(1),
--	"LOG_DESCRIPTION" VARCHAR(100),
--	"LOG_INV_ID" VARCHAR(10)
--   )
--  ON "SYSTEM" ;
----------------------------------------------------------
----  DDL for Table FACTURES
----------------------------------------------------------
--
--  CREATE TABLE "GESTIO"."FACTURES"
--   (	"FAC_CODI" VARCHAR(3),
--	"FAC_DATA_FACTURA" DATETIME,
--	"FAC_TOTAL_A_PAGAR" DECIMAL(7,2),
--	"FAC_RES_CODI" VARCHAR(3),
--	"FAC_IMPRESA" VARCHAR(1) DEFAULT 'N'
--   )
--  ON "SYSTEM" ;
--
--   COMMENT ON TABLE "GESTIO"."FACTURES"  IS 'Factures';
----------------------------------------------------------
----  DDL for Table IMATGES
----------------------------------------------------------
--
--  CREATE TABLE "GESTIO"."IMATGES"
--   (	"IMG_CODI" VARCHAR(3),
--	"IMG_PATH" VARCHAR(30),
--	"IMG_IMATGE" VARBINARY(max),
--	"IMG_RES_CODI" VARCHAR(3)
--   )
--  ON "SYSTEM"
--  RETENTION
--  NOCACHE LOGGING
--  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
--  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
----------------------------------------------------------
----  DDL for Table IMPOSTS
----------------------------------------------------------
--
--  CREATE TABLE "GESTIO"."IMPOSTS"
--   (	"IMP_CODI" VARCHAR(3),
--	"IMP_DESCRIPCIO" VARCHAR(30),
--	"IMP_PERCENTATGE" DECIMAL(5,2)
--   )
--  ON "SYSTEM" ;
--
--   COMMENT ON TABLE "GESTIO"."IMPOSTS"  IS 'Imposts';
----------------------------------------------------------
----  DDL for Table IMPXLTCK
----------------------------------------------------------
--
--  CREATE TABLE "GESTIO"."IMPXLTCK"
--   (	"ILT_TCK_CODI" VARCHAR(3),
--	"ILT_LTK_CODI" VARCHAR(3),
--	"ILT_IMP_CODI" VARCHAR(3),
--	"ILT_BASE" DECIMAL(7,2)
--   )
--  ON "SYSTEM" ;
----------------------------------------------------------
----  DDL for Table INVOICES
----------------------------------------------------------
--
--  CREATE TABLE "GESTIO"."INVOICES"
--   (	"INV_ID" VARCHAR(10),
--	"INV_DATE" DATETIME,
--	"INV_TYPE" VARCHAR(1),
--	"INV_TOTAL" DECIMAL(7,2)
--   )
--  ON "SYSTEM" ;
----------------------------------------------------------
----  DDL for Table LINVOICES
----------------------------------------------------------
--
--  CREATE TABLE "GESTIO"."LINVOICES"
--   (	"LIN_INV_ID" VARCHAR(10),
--	"LIN_NUMBER" VARCHAR(10),
--	"LIN_SUBTOTAL" DECIMAL(5,2),
--	"LIN_DESCRIPTION" VARCHAR(100)
--   )
--  ON "SYSTEM" ;
----------------------------------------------------------
----  DDL for Index RESTAURANTS_RES_CODI_IDX
----------------------------------------------------------
--
--  CREATE UNIQUE INDEX "GESTIO"."RESTAURANTS_RES_CODI_IDX" ON "GESTIO"."RESTAURANTS" ("RES_CODI")
--  ON "SYSTEM" ;
----------------------------------------------------------
----  DDL for Index RESTAURANTS_RES_TRS_CODI_IDX
----------------------------------------------------------
--
--  CREATE INDEX "GESTIO"."RESTAURANTS_RES_TRS_CODI_IDX" ON "GESTIO"."RESTAURANTS" ("RES_TRS_CODI")
--  ON "SYSTEM" ;
----------------------------------------------------------
----  DDL for Index USUARIS_USU_CODI_IDX
----------------------------------------------------------
--
--  CREATE UNIQUE INDEX "GESTIO"."USUARIS_USU_CODI_IDX" ON "GESTIO"."USUARIS" ("USU_CODI")
--  ON "SYSTEM" ;
----------------------------------------------------------
----  DDL for Index TRESTAURANTS_TRS_CODI_IDX
----------------------------------------------------------
--
--  CREATE UNIQUE INDEX "GESTIO"."TRESTAURANTS_TRS_CODI_IDX" ON "GESTIO"."TRESTAURANTS" ("TRS_CODI")
--  ON "SYSTEM" ;
----------------------------------------------------------
----  DDL for Index TICKETS_TCK_CODI_IDX
----------------------------------------------------------
--
--  CREATE UNIQUE INDEX "GESTIO"."TICKETS_TCK_CODI_IDX" ON "GESTIO"."TICKETS" ("TCK_CODI")
--  ON "SYSTEM" ;
----------------------------------------------------------
----  DDL for Index TICKETS_TCK_FAC_CODI_IDX
----------------------------------------------------------
--
--  CREATE INDEX "GESTIO"."TICKETS_TCK_FAC_CODI_IDX" ON "GESTIO"."TICKETS" ("TCK_FAC_CODI")
--  ON "SYSTEM" ;
----------------------------------------------------------
----  DDL for Index TICKETS_TCK_RES_CODI_IDX
----------------------------------------------------------
--
--  CREATE INDEX "GESTIO"."TICKETS_TCK_RES_CODI_IDX" ON "GESTIO"."TICKETS" ("TCK_RES_CODI")
--  ON "SYSTEM" ;
----------------------------------------------------------
----  DDL for Index OPINIONS_OPI_CODI_IDX
----------------------------------------------------------
--
--  CREATE UNIQUE INDEX "GESTIO"."OPINIONS_OPI_CODI_IDX" ON "GESTIO"."OPINIONS" ("OPI_CODI")
--  ON "SYSTEM" ;
----------------------------------------------------------
----  DDL for Index OPINIONS_OPI_RES_CODI_IDX
----------------------------------------------------------
--
--  CREATE INDEX "GESTIO"."OPINIONS_OPI_RES_CODI_IDX" ON "GESTIO"."OPINIONS" ("OPI_RES_CODI")
--  ON "SYSTEM" ;
----------------------------------------------------------
----  DDL for Index OPINIONS_OPI_USU_CODI_IDX
----------------------------------------------------------
--
--  CREATE INDEX "GESTIO"."OPINIONS_OPI_USU_CODI_IDX" ON "GESTIO"."OPINIONS" ("OPI_USU_CODI")
--  ON "SYSTEM" ;
----------------------------------------------------------
----  DDL for Index LTICKETS_LTK_CODI_IDX
----------------------------------------------------------
--
--  CREATE UNIQUE INDEX "GESTIO"."LTICKETS_LTK_CODI_IDX" ON "GESTIO"."LTICKETS" ("LTK_TCK_CODI", "LTK_CODI")
--  ON "SYSTEM" ;
----------------------------------------------------------
----  DDL for Index LOG_PK
----------------------------------------------------------
--
--  CREATE UNIQUE INDEX "GESTIO"."LOG_PK" ON "GESTIO"."LOG_INVOICES" ("LOG_ID")
--  ON "SYSTEM" ;
----------------------------------------------------------
----  DDL for Index FACTURES_FAC_CODI_IDX
----------------------------------------------------------
--
--  CREATE UNIQUE INDEX "GESTIO"."FACTURES_FAC_CODI_IDX" ON "GESTIO"."FACTURES" ("FAC_CODI")
--  ON "SYSTEM" ;
----------------------------------------------------------
----  DDL for Index FACTURES_FAC_RES_CODI_IDX
----------------------------------------------------------
--
--  CREATE INDEX "GESTIO"."FACTURES_FAC_RES_CODI_IDX" ON "GESTIO"."FACTURES" ("FAC_RES_CODI")
--  ON "SYSTEM" ;
----------------------------------------------------------
----  DDL for Index IMATGES_IMG_CODI_IDX
----------------------------------------------------------
--
--  CREATE UNIQUE INDEX "GESTIO"."IMATGES_IMG_CODI_IDX" ON "GESTIO"."IMATGES" ("IMG_CODI")
--  ON "SYSTEM" ;
----------------------------------------------------------
----  DDL for Index IMATGES_IMG_RES_CODI_IDX
----------------------------------------------------------
--
--  CREATE INDEX "GESTIO"."IMATGES_IMG_RES_CODI_IDX" ON "GESTIO"."IMATGES" ("IMG_RES_CODI")
--  ON "SYSTEM" ;
----------------------------------------------------------
----  DDL for Index IMPOSTS_IMP_CODI_IDX
----------------------------------------------------------
--
--  CREATE UNIQUE INDEX "GESTIO"."IMPOSTS_IMP_CODI_IDX" ON "GESTIO"."IMPOSTS" ("IMP_CODI")
--  ON "SYSTEM" ;
----------------------------------------------------------
----  DDL for Index IMPXLTCK_TCK_IMP_CODI_IDX
----------------------------------------------------------
--
--  CREATE UNIQUE INDEX "GESTIO"."IMPXLTCK_TCK_IMP_CODI_IDX" ON "GESTIO"."IMPXLTCK" ("ILT_TCK_CODI", "ILT_LTK_CODI", "ILT_IMP_CODI")
--  ON "SYSTEM" ;
----------------------------------------------------------
----  DDL for Index IMPXLTCK_ILT_IMP_CODI_IDX
----------------------------------------------------------
--
--  CREATE INDEX "GESTIO"."IMPXLTCK_ILT_IMP_CODI_IDX" ON "GESTIO"."IMPXLTCK" ("ILT_IMP_CODI")
--  ON "SYSTEM" ;
----------------------------------------------------------
----  DDL for Index INV_PK
----------------------------------------------------------
--
--  CREATE UNIQUE INDEX "GESTIO"."INV_PK" ON "GESTIO"."INVOICES" ("INV_ID")
--  ON "SYSTEM" ;
----------------------------------------------------------
----  DDL for Index LIN_PK
----------------------------------------------------------
--
--  CREATE UNIQUE INDEX "GESTIO"."LIN_PK" ON "GESTIO"."LINVOICES" ("LIN_INV_ID", "LIN_NUMBER")
--  ON "SYSTEM" ;
----------------------------------------------------------
----  DDL for Trigger TRG_RES
----------------------------------------------------------
--
--  CREATE OR REPLACE TRIGGER "GESTIO"."TRG_RES" ON RESTAURANTS
--        INSTEAD OF INSERT
--         AS
--BEGIN
--        Set @:new.res_codi=seq_res.NEXTVAL;
--
--END
--END;
--GO
--ALTER TRIGGER "GESTIO"."TRG_RES" ENABLE;
----------------------------------------------------------
----  DDL for Trigger TRG_USU
----------------------------------------------------------
--
--  CREATE OR REPLACE TRIGGER "GESTIO"."TRG_USU" ON USUARIS
--        INSTEAD OF INSERT
--         AS
--BEGIN
--        Set @:new.usu_codi=seq_usu.NEXTVAL;
--
--END
--END;
--GO
--ALTER TRIGGER "GESTIO"."TRG_USU" ENABLE;
----------------------------------------------------------
----  DDL for Trigger TRG_TRS
----------------------------------------------------------
--
--  CREATE OR REPLACE TRIGGER "GESTIO"."TRG_TRS" ON TRESTAURANTS
--        INSTEAD OF INSERT
--         AS
--BEGIN
--        Set @:new.trs_codi=seq_trs.NEXTVAL;
--
--END
--END;
--GO
--ALTER TRIGGER "GESTIO"."TRG_TRS" ENABLE;
----------------------------------------------------------
----  DDL for Trigger TRG_TCK
----------------------------------------------------------
--
--  CREATE OR REPLACE TRIGGER "GESTIO"."TRG_TCK"
--        INSTEAD OF INSERT OR AS DELETE OR UPDATE
--        ON TICKETS
--        FOR EACH ROW
--        DECLARE @v_fac_impresa VARCHAR(4000) /* Use -meta option factures.fac_impresa%TYPE */;
--
--BEGIN
--        IF INSERTING BEGIN
--                SET @:new.tck_codi =seq_tck.NEXTVAL;
--        END
--        ELSE IF (UPDATING or DELETING) AND :OLD.tck_fac_codi IS NOT NULL BEGIN
--				SELECT @v_fac_impresa = fac_impresa
--				FROM factures
--				WHERE fac_codi = :old.tck_fac_codi;
--				--
--				IF @v_fac_impresa = 'S' BEGIN
--						RAISERROR ('-20001 Ticket facturat no modificable', 16, 1);
--				END
--				ELSE BEGIN
--						UPDATE factures
--						SET fac_total_a_pagar = fac_total_a_pagar
--																- :OLD.tck_total_ltickets
--																+ :NEW.tck_total_ltickets
--                        WHERE fac_codi = :old.tck_fac_codi;
--				END
--
--        END
--END;
--/
--ALTER TRIGGER "GESTIO"."TRG_TCK" ENABLE;
----------------------------------------------------------
----  DDL for Trigger TRG_OPI
----------------------------------------------------------
--
--  CREATE OR REPLACE TRIGGER "GESTIO"."TRG_OPI"
--        INSTEAD OF INSERT OR AS UPDATE OR DELETE ON opinions
--        FOR EACH ROW
--
--	DECLARE @v_numopis FLOAT;
--	DECLARE @v_mitjana FLOAT;
--	DECLARE @v_calcul  FLOAT;
--BEGIN
--	IF INSERTING BEGIN
--		SET @:new.opi_codi = SEQ_OPI.NEXTVAL;
--	END
--	--
--	SELECT @v_numopis = ISNULL(res_trs_codi,0), @v_mitjana = ISNULL(res_mitjana,0)
--	FROM restaurants
--	WHERE res_codi = ISNULL(:old.opi_res_codi,:new.opi_res_codi);
--	--
--	BEGIN
--		SET @v_calcul = ((@v_mitjana * @v_numopis) + (:new.opi_puntuacio)) / (@v_numopis + 1);
--		--
--		UPDATE restaurants
--		SET res_trs_codi = res_trs_codi + 1,
--		    res_mitjana = @v_calcul
--		WHERE res_codi = ISNULL(:old.opi_res_codi,:new.opi_res_codi);
--	END;
--END;
--/
--ALTER TRIGGER "GESTIO"."TRG_OPI" ENABLE;
----------------------------------------------------------
----  DDL for Trigger TRG_LTK
----------------------------------------------------------
--
--  CREATE OR REPLACE TRIGGER "GESTIO"."TRG_LTK" ON ltickets
--    INSTEAD OF INSERT
--     AS
--DECLARE @v_ltk_codi FLOAT;
--WHILE 1=0 BEGIN
--IF @@FETCH_STATUS <> 0 BREAK;
--BEGIN
--    SELECT @v_ltk_codi = ISNULL(MAX(ltk_codi),0) + 1 FROM ltickets WHERE ltk_tck_codi = :new.ltk_tck_codi;
--END;
--/
--ALTER TRIGGER "GESTIO"."TRG_LTK" ENABLE;
----------------------------------------------------------
----  DDL for Trigger TRIG_LOG
----------------------------------------------------------
--
--  CREATE OR REPLACE TRIGGER "GESTIO"."TRIG_LOG" ON LOG_INVOICES
--    INSTEAD OF INSERT
--     AS
--BEGIN
--    Set @:new.log_id =seq_log.NEXTVAL;
--END
--END;
--GO
--ALTER TRIGGER "GESTIO"."TRIG_LOG" ENABLE;
----------------------------------------------------------
----  DDL for Trigger TRG_INV2
----------------------------------------------------------
--
--  CREATE OR REPLACE TRIGGER "GESTIO"."TRG_INV2"
--	AFTER INSERT OR AS DELETE OR UPDATE
--	ON invoices
--	FOR EACH ROW
--	DECLARE @m_log_type VARCHAR(4000) /* Use -meta option log_invoices.log_type%TYPE */;
--BEGIN
--	IF INSERTING BEGIN
--		SET @m_log_type = 'I';
--	END
--	ELSE IF UPDATING BEGIN
--		SET @m_log_type = 'U';
--	END
--	ELSE IF DELETING BEGIN
--		SET @m_log_type = 'D';
--		--
--		--UPDATE invoices
--		--SET inv_type = 'D'
--		--WHERE inv_id = :old.inv_id;
--	END
--	--
--	INSERT INTO log_invoices
--		( log_id, log_user, log_date, log_type, log_description, log_inv_id )
--	VALUES
--		( NULL, SYSTEM_USER, GETDATE(), @m_log_type, '.', ISNULL(:old.inv_id, :new.inv_id) );
--END;
--/
--ALTER TRIGGER "GESTIO"."TRG_INV2" ENABLE;
----------------------------------------------------------
----  DDL for Trigger TRIG_INV
----------------------------------------------------------
--
--  CREATE OR REPLACE TRIGGER "GESTIO"."TRIG_INV" ON INVOICES
--    INSTEAD OF INSERT
--     AS
--BEGIN
--    Set @:new.inv_id =seq_inv.NEXTVAL;
--END
--END;
--GO
--ALTER TRIGGER "GESTIO"."TRIG_INV" ENABLE;
----------------------------------------------------------
----  DDL for Trigger TRI_LIN1
----------------------------------------------------------
--
--  CREATE OR REPLACE TRIGGER "GESTIO"."TRI_LIN1" ON LINVOICES
--    INSTEAD OF INSERT
--     AS
--        DECLARE @m_lin_number VARCHAR(4000) /* Use -meta option LINVOICES.LIN_NUMBER%TYPE */;
--WHILE 1=0 BEGIN
--IF @@FETCH_STATUS <> 0 BREAK;
--
--BEGIN
--        SELECT @m_lin_number = ISNULL(MAX(lin_number),0) + 1
--        FROM linvoices
--        WHERE lin_inv_id = :new.lin_inv_id;
--        Set @:new.lin_number = m_lin_number;
--END;
--/
--ALTER TRIGGER "GESTIO"."TRI_LIN1" ENABLE;
----------------------------------------------------------
----  DDL for Trigger TRI_LIN2
----------------------------------------------------------
--
--  CREATE OR REPLACE TRIGGER "GESTIO"."TRI_LIN2"
--    AFTER INSERT OR AS UPDATE OR DELETE
--    ON LINVOICES
--    FOR EACH ROW
--        DECLARE @m_inv_id VARCHAR(4000) /* Use -meta option LINVOICES.LIN_NUMBER%TYPE */;
--
--BEGIN
--       UPDATE INVOICES
--        SET (SELECT ISNULL(MAX(inv_id),0) + 1 INTO @m_inv_id
--            FROM linvoices
--            WHERE inv_id = :new.inv_id;)
--        WHERE SET @:new.lin_subtotal = lin_subtotal;
--END
--/
--ALTER TRIGGER "GESTIO"."TRI_LIN2" ENABLE;
----------------------------------------------------------
----  DDL for Trigger TRIG_LIN1
----------------------------------------------------------
--
--  CREATE OR REPLACE TRIGGER "GESTIO"."TRIG_LIN1"
--    INSTEAD OF INSERT OR AS UPDATE ON LINVOICES
--    FOR EACH ROW
--    DECLARE @v_lin_number VARCHAR(4000) /* Use -meta option linvoices.lin_number%TYPE */
--BEGIN
--    IF INSERTING BEGIN
--        SELECT NVL(MAX(lin_number,0) +1 INTO v_lin_number
--        FROM linvoices
--        WHERE lin_inv_id = :new.lin_inv_id;
--        --
--        SET @:new.lin_number =m_lin_number;
--    END
--    ELSE IF UPDATING BEGIN
--        UPDATE invoices
--        SET inv_total = inv_total -
--            (ISNULL(:OLD.lin_subtotal,0))+
--            (ISNULL(:NEW.lin_subtotal,0))
--        WHERE inv_id = ISNULL(:OLD.lin_inv_id, :NEW.lin_inv_id);
--    END
--END;
--/
--ALTER TRIGGER "GESTIO"."TRIG_LIN1" ENABLE;
----------------------------------------------------------
----  DDL for Trigger TRG_LIN1
----------------------------------------------------------
--
--  CREATE OR REPLACE TRIGGER "GESTIO"."TRG_LIN1" ON linvoices
--	INSTEAD OF INSERT
--  AS
--	DECLARE @m_lin_number VARCHAR(4000) /* Use -meta option linvoices.lin_number%TYPE */;
--WHILE 1=0 BEGIN
--IF @@FETCH_STATUS <> 0 BREAK;
--BEGIN
--	SELECT @m_lin_number = ISNULL(MAX(lin_number),0) + 1
--	FROM linvoices
--	WHERE lin_inv_id = :new.lin_inv_id;
--	--
--	Set @:new.lin_number = m_lin_number;
--END;
--/
--ALTER TRIGGER "GESTIO"."TRG_LIN1" ENABLE;
----------------------------------------------------------
----  DDL for Trigger TRG_LIN2
----------------------------------------------------------
--
--  CREATE OR REPLACE TRIGGER "GESTIO"."TRG_LIN2"
--	AFTER INSERT OR AS UPDATE OR DELETE
--	ON linvoices
--	FOR EACH ROW
--BEGIN
--	UPDATE invoices
--	SET inv_total = inv_total -
--		(ISNULL(:OLD.lin_subtotal, 0)) +
--		(ISNULL(:NEW.lin_subtotal, 0))
--	WHERE inv_id = ISNULL(:OLD.lin_inv_id, :NEW.lin_inv_id);
--END;
--/
--ALTER TRIGGER "GESTIO"."TRG_LIN2" ENABLE;
----------------------------------------------------------
----  Constraints for Table RESTAURANTS
----------------------------------------------------------
--
--  ALTER TABLE "GESTIO"."RESTAURANTS" ADD CONSTRAINT "RES_RESTAURANTS_PK" PRIMARY KEY ("RES_CODI")
--  10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
--  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
--  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
--  TABLESPACE "SYSTEM"  ENABLE;
--  ALTER TABLE "GESTIO"."RESTAURANTS" MODIFY ("RES_TRS_CODI" NOT NULL ENABLE);
--  ALTER TABLE "GESTIO"."RESTAURANTS" MODIFY ("RES_ADRECA" NOT NULL ENABLE);
--  ALTER TABLE "GESTIO"."RESTAURANTS" MODIFY ("RES_NOM" NOT NULL ENABLE);
--  ALTER TABLE "GESTIO"."RESTAURANTS" MODIFY ("RES_CODI" NOT NULL ENABLE);
----------------------------------------------------------
----  Constraints for Table USUARIS
----------------------------------------------------------
--
--  ALTER TABLE "GESTIO"."USUARIS" ADD CONSTRAINT "USU_USUARIS_PK" PRIMARY KEY ("USU_CODI")
--  10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
--  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
--  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
--  TABLESPACE "SYSTEM"  ENABLE;
--  ALTER TABLE "GESTIO"."USUARIS" MODIFY ("USU_ADRECA_ELECTRONICA" NOT NULL ENABLE);
--  ALTER TABLE "GESTIO"."USUARIS" MODIFY ("USU_NOM" NOT NULL ENABLE);
--  ALTER TABLE "GESTIO"."USUARIS" MODIFY ("USU_CODI" NOT NULL ENABLE);
----------------------------------------------------------
----  Constraints for Table TRESTAURANTS
----------------------------------------------------------
--
--  ALTER TABLE "GESTIO"."TRESTAURANTS" ADD CONSTRAINT "TRS_TRESTAURANTS_PK" PRIMARY KEY ("TRS_CODI")
--  10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
--  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
--  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
--  TABLESPACE "SYSTEM"  ENABLE;
--  ALTER TABLE "GESTIO"."TRESTAURANTS" MODIFY ("TRS_DESCRIPCIO" NOT NULL ENABLE);
--  ALTER TABLE "GESTIO"."TRESTAURANTS" MODIFY ("TRS_CODI" NOT NULL ENABLE);
----------------------------------------------------------
----  Constraints for Table TICKETS
----------------------------------------------------------
--
--  ALTER TABLE "GESTIO"."TICKETS" ADD CONSTRAINT "TCK_TICKETS_PK" PRIMARY KEY ("TCK_CODI")
--  10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
--  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
--  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
--  TABLESPACE "SYSTEM"  ENABLE;
--  ALTER TABLE "GESTIO"."TICKETS" MODIFY ("TCK_RES_CODI" NOT NULL ENABLE);
--  ALTER TABLE "GESTIO"."TICKETS" MODIFY ("TCK_TOTAL_IMPOSTS" NOT NULL ENABLE);
--  ALTER TABLE "GESTIO"."TICKETS" MODIFY ("TCK_TOTAL_LTICKETS" NOT NULL ENABLE);
--  ALTER TABLE "GESTIO"."TICKETS" MODIFY ("TCK_DATA_TICKET" NOT NULL ENABLE);
--  ALTER TABLE "GESTIO"."TICKETS" MODIFY ("TCK_CODI" NOT NULL ENABLE);
----------------------------------------------------------
----  Constraints for Table OPINIONS
----------------------------------------------------------
--
--  ALTER TABLE "GESTIO"."OPINIONS" ADD CONSTRAINT "CK_OPI" CHECK (opi_opinio_revisada IN ('S','N'));
--  ALTER TABLE "GESTIO"."OPINIONS" ADD CONSTRAINT "OPI_OPINIONS_PK" PRIMARY KEY ("OPI_CODI")
--  10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
--  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
--  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
--  TABLESPACE "SYSTEM"  ENABLE;
--  ALTER TABLE "GESTIO"."OPINIONS" MODIFY ("OPI_USU_CODI" NOT NULL ENABLE);
--  ALTER TABLE "GESTIO"."OPINIONS" MODIFY ("OPI_RES_CODI" NOT NULL ENABLE);
--  ALTER TABLE "GESTIO"."OPINIONS" MODIFY ("OPI_OPINIO_REVISADA" NOT NULL ENABLE);
--  ALTER TABLE "GESTIO"."OPINIONS" MODIFY ("OPI_PUNTUACIO" NOT NULL ENABLE);
--  ALTER TABLE "GESTIO"."OPINIONS" MODIFY ("OPI_OBSERVACIO" NOT NULL ENABLE);
--  ALTER TABLE "GESTIO"."OPINIONS" MODIFY ("OPI_CODI" NOT NULL ENABLE);
----------------------------------------------------------
----  Constraints for Table LTICKETS
----------------------------------------------------------
--
--  ALTER TABLE "GESTIO"."LTICKETS" ADD CONSTRAINT "LTK_LTICKETS_PK" PRIMARY KEY ("LTK_TCK_CODI", "LTK_CODI")
--  10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
--  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
--  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
--  TABLESPACE "SYSTEM"  ENABLE;
--  ALTER TABLE "GESTIO"."LTICKETS" MODIFY ("LTK_TOTAL_UNITARI" NOT NULL ENABLE);
--  ALTER TABLE "GESTIO"."LTICKETS" MODIFY ("LTK_UNITATS" NOT NULL ENABLE);
--  ALTER TABLE "GESTIO"."LTICKETS" MODIFY ("LTK_DESCRIPCIO" NOT NULL ENABLE);
--  ALTER TABLE "GESTIO"."LTICKETS" MODIFY ("LTK_CODI" NOT NULL ENABLE);
--  ALTER TABLE "GESTIO"."LTICKETS" MODIFY ("LTK_TCK_CODI" NOT NULL ENABLE);
----------------------------------------------------------
----  Constraints for Table LOG_INVOICES
----------------------------------------------------------
--
--  ALTER TABLE "GESTIO"."LOG_INVOICES" ADD CONSTRAINT "LOG_PK" PRIMARY KEY ("LOG_ID")
--  10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
--  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
--  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
--  TABLESPACE "SYSTEM"  ENABLE;
----------------------------------------------------------
----  Constraints for Table FACTURES
----------------------------------------------------------
--
--  ALTER TABLE "GESTIO"."FACTURES" ADD CONSTRAINT "CK_FAC" CHECK (fac_impresa IN ('S','N'));
--  ALTER TABLE "GESTIO"."FACTURES" MODIFY ("FAC_IMPRESA" NOT NULL ENABLE);
--  ALTER TABLE "GESTIO"."FACTURES" ADD CONSTRAINT "FAC_FACTURES_PK" PRIMARY KEY ("FAC_CODI")
--  10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
--  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
--  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
--  TABLESPACE "SYSTEM"  ENABLE;
--  ALTER TABLE "GESTIO"."FACTURES" MODIFY ("FAC_RES_CODI" NOT NULL ENABLE);
--  ALTER TABLE "GESTIO"."FACTURES" MODIFY ("FAC_TOTAL_A_PAGAR" NOT NULL ENABLE);
--  ALTER TABLE "GESTIO"."FACTURES" MODIFY ("FAC_DATA_FACTURA" NOT NULL ENABLE);
--  ALTER TABLE "GESTIO"."FACTURES" MODIFY ("FAC_CODI" NOT NULL ENABLE);
----------------------------------------------------------
----  Constraints for Table IMATGES
----------------------------------------------------------
--
--  ALTER TABLE "GESTIO"."IMATGES" ADD CONSTRAINT "IMG_IMATGES_PK" PRIMARY KEY ("IMG_CODI")
--  10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
--  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
--  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
--  TABLESPACE "SYSTEM"  ENABLE;
--  ALTER TABLE "GESTIO"."IMATGES" MODIFY ("IMG_RES_CODI" NOT NULL ENABLE);
--  ALTER TABLE "GESTIO"."IMATGES" MODIFY ("IMG_CODI" NOT NULL ENABLE);
----------------------------------------------------------
----  Constraints for Table IMPOSTS
----------------------------------------------------------
--
--  ALTER TABLE "GESTIO"."IMPOSTS" ADD CONSTRAINT "IMP_IMPOSTS_PK" PRIMARY KEY ("IMP_CODI")
--  10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
--  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
--  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
--  TABLESPACE "SYSTEM"  ENABLE;
--  ALTER TABLE "GESTIO"."IMPOSTS" MODIFY ("IMP_PERCENTATGE" NOT NULL ENABLE);
--  ALTER TABLE "GESTIO"."IMPOSTS" MODIFY ("IMP_DESCRIPCIO" NOT NULL ENABLE);
--  ALTER TABLE "GESTIO"."IMPOSTS" MODIFY ("IMP_CODI" NOT NULL ENABLE);
----------------------------------------------------------
----  Constraints for Table IMPXLTCK
----------------------------------------------------------
--
--  ALTER TABLE "GESTIO"."IMPXLTCK" ADD CONSTRAINT "ILT_IMP_LTK_PK" PRIMARY KEY ("ILT_TCK_CODI", "ILT_LTK_CODI", "ILT_IMP_CODI")
--  10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
--  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
--  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
--  TABLESPACE "SYSTEM"  ENABLE;
--  ALTER TABLE "GESTIO"."IMPXLTCK" MODIFY ("ILT_BASE" NOT NULL ENABLE);
--  ALTER TABLE "GESTIO"."IMPXLTCK" MODIFY ("ILT_IMP_CODI" NOT NULL ENABLE);
--  ALTER TABLE "GESTIO"."IMPXLTCK" MODIFY ("ILT_LTK_CODI" NOT NULL ENABLE);
--  ALTER TABLE "GESTIO"."IMPXLTCK" MODIFY ("ILT_TCK_CODI" NOT NULL ENABLE);
----------------------------------------------------------
----  Constraints for Table INVOICES
----------------------------------------------------------
--
--  ALTER TABLE "GESTIO"."INVOICES" ADD CONSTRAINT "INV_PK" PRIMARY KEY ("INV_ID")
--  10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
--  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
--  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
--  TABLESPACE "SYSTEM"  ENABLE;
----------------------------------------------------------
----  Constraints for Table LINVOICES
----------------------------------------------------------
--
--  ALTER TABLE "GESTIO"."LINVOICES" ADD CONSTRAINT "LIN_PK" PRIMARY KEY ("LIN_INV_ID", "LIN_NUMBER")
--  10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
--  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
--  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
--  TABLESPACE "SYSTEM"  ENABLE;
