CREATE DOMAIN BOOLEAN_INT AS
  INTEGER
  DEFAULT 0
  NOT NULL
  CHECK (VALUE IN(0,1));
--------------------------------------------------------------------------------------
CREATE TABLE METAL (
  ID INTEGER PRIMARY KEY NOT NULL,
  METAL_NAME VARCHAR(30),
  DENSITY_20 INTEGER NOT NULL);

CREATE GENERATOR METAL_ID_GEN;

CREATE TRIGGER METAL_ID_TRG FOR METAL
ACTIVE BEFORE INSERT
AS
BEGIN
  IF (NEW.ID IS NULL) THEN
      NEW.ID = GEN_ID(METAL_ID_GEN, 1);
END;

INSERT INTO METAL (METAL_NAME, DENSITY_20) VALUES ('����� ������������', 7800);
INSERT INTO METAL (METAL_NAME, DENSITY_20) VALUES ('���� ������', 8890);
INSERT INTO METAL (METAL_NAME, DENSITY_20) VALUES ('����', 8890);
INSERT INTO METAL (METAL_NAME, DENSITY_20) VALUES ('��������', 2699);
-------------------------------------------------------------------------------------------
CREATE TABLE CABLE_PROPERTIES (
  ID INTEGER PRIMARY KEY NOT NULL,
  PROPERTY_INFO VARCHAR(50) NOT NULL);

CREATE GENERATOR CABLE_PROPERTIES_ID_GEN;

CREATE TRIGGER CABLE_PROPERTIES_ID_TRG FOR CABLE_PROPERTIES
ACTIVE BEFORE INSERT
AS
BEGIN
	IF (NEW.ID IS NULL) THEN
    NEW.ID = GEN_ID(CABLE_PROPERTIES_ID_GEN, 1);
END;

INSERT INTO CABLE_PROPERTIES (PROPERTY_INFO) VALUES ('�������������� �����, ������');
INSERT INTO CABLE_PROPERTIES (PROPERTY_INFO) VALUES ('�������������� �����, ������');
INSERT INTO CABLE_PROPERTIES (PROPERTY_INFO) VALUES ('����� �����, ������');
INSERT INTO CABLE_PROPERTIES (PROPERTY_INFO) VALUES ('����� �����, ������');
INSERT INTO CABLE_PROPERTIES (PROPERTY_INFO) VALUES ('������� ����������');
INSERT INTO CABLE_PROPERTIES (PROPERTY_INFO) VALUES ('����������� �����');
INSERT INTO CABLE_PROPERTIES (PROPERTY_INFO) VALUES ('��������� �����');
INSERT INTO CABLE_PROPERTIES (PROPERTY_INFO) VALUES ('������� ������ ������ �����');
INSERT INTO CABLE_PROPERTIES (PROPERTY_INFO) VALUES ('������� ��������������� �����');
INSERT INTO CABLE_PROPERTIES (PROPERTY_INFO) VALUES ('������ ��� ��������������� �����');
--------------------------------------------------------------------------------------------
CREATE TABLE TECHNICAL_CONDITIONS (
  ID INTEGER PRIMARY KEY NOT NULL,
  TECH_CONDITIONS_TITLE VARCHAR(50) NOT NULL);

CREATE GENERATOR TECHNICAL_CONDITIONS_ID_GEN;
 
CREATE TRIGGER TECHNICAL_CONDITIONS_ID_TRG FOR TECHNICAL_CONDITIONS
ACTIVE BEFORE INSERT
AS
BEGIN
  IF(NEW.ID is NULL) THEN
  NEW.ID = GEN_ID(TECHNICAL_CONDITIONS_ID_GEN, 1);
END;

INSERT INTO TECHNICAL_CONDITIONS (TECH_CONDITIONS_TITLE) VALUES ('�� 16.�99-002-2003');
INSERT INTO TECHNICAL_CONDITIONS (TECH_CONDITIONS_TITLE) VALUES ('�� 16.�99-005-01');
INSERT INTO TECHNICAL_CONDITIONS (TECH_CONDITIONS_TITLE) VALUES ('�� 16.�99-004-01');
INSERT INTO TECHNICAL_CONDITIONS (TECH_CONDITIONS_TITLE) VALUES ('�� 16.�99-010-2004');
INSERT INTO TECHNICAL_CONDITIONS (TECH_CONDITIONS_TITLE) VALUES ('�� 16.�99-009-2005');
INSERT INTO TECHNICAL_CONDITIONS (TECH_CONDITIONS_TITLE) VALUES ('�� 16.�99-008-2001');
INSERT INTO TECHNICAL_CONDITIONS (TECH_CONDITIONS_TITLE) VALUES ('�� 16.�99-007-2001');
INSERT INTO TECHNICAL_CONDITIONS (TECH_CONDITIONS_TITLE) VALUES ('�� 16.�99-006-2001');
INSERT INTO TECHNICAL_CONDITIONS (TECH_CONDITIONS_TITLE) VALUES ('�� 16.�99-012-2003');
INSERT INTO TECHNICAL_CONDITIONS (TECH_CONDITIONS_TITLE) VALUES ('�� 3574-03-47273194-99');
INSERT INTO TECHNICAL_CONDITIONS (TECH_CONDITIONS_TITLE) VALUES ('�� 27.32.13-060-47273194-2017');
INSERT INTO TECHNICAL_CONDITIONS (TECH_CONDITIONS_TITLE) VALUES ('�� 27.32.13-096-47273194-2017');
INSERT INTO TECHNICAL_CONDITIONS (TECH_CONDITIONS_TITLE) VALUES ('�� 42.22.12-47273194-091-2017');
INSERT INTO TECHNICAL_CONDITIONS (TECH_CONDITIONS_TITLE) VALUES ('�� 16.�99-073-2015');
INSERT INTO TECHNICAL_CONDITIONS (TECH_CONDITIONS_TITLE) VALUES ('�� 3574-01-47273194-98');
INSERT INTO TECHNICAL_CONDITIONS (TECH_CONDITIONS_TITLE) VALUES ('�� 16.�99-061-2013');
INSERT INTO TECHNICAL_CONDITIONS (TECH_CONDITIONS_TITLE) VALUES ('�� 16.�99-020-2009');
INSERT INTO TECHNICAL_CONDITIONS (TECH_CONDITIONS_TITLE) VALUES ('�� 16.�99-058-2014');
INSERT INTO TECHNICAL_CONDITIONS (TECH_CONDITIONS_TITLE) VALUES ('�� 16.�99-050-2012');
INSERT INTO TECHNICAL_CONDITIONS (TECH_CONDITIONS_TITLE) VALUES ('�� 16.�99-049-2012');
INSERT INTO TECHNICAL_CONDITIONS (TECH_CONDITIONS_TITLE) VALUES ('�� 16.�99-048-2012');
INSERT INTO TECHNICAL_CONDITIONS (TECH_CONDITIONS_TITLE) VALUES ('�� 16.�99-046-2011');
INSERT INTO TECHNICAL_CONDITIONS (TECH_CONDITIONS_TITLE) VALUES ('�� 16.�99-045-2010');
INSERT INTO TECHNICAL_CONDITIONS (TECH_CONDITIONS_TITLE) VALUES ('�� 16.�99-044-2010');
INSERT INTO TECHNICAL_CONDITIONS (TECH_CONDITIONS_TITLE) VALUES ('�� 16.�99-043-2011');
INSERT INTO TECHNICAL_CONDITIONS (TECH_CONDITIONS_TITLE) VALUES ('�� 16.�99-042-2010');
INSERT INTO TECHNICAL_CONDITIONS (TECH_CONDITIONS_TITLE) VALUES ('�� 16.�99-041-2011');
INSERT INTO TECHNICAL_CONDITIONS (TECH_CONDITIONS_TITLE) VALUES ('�� 16.�99-040-2009');
INSERT INTO TECHNICAL_CONDITIONS (TECH_CONDITIONS_TITLE) VALUES ('�� 16.�99-039-2011');
INSERT INTO TECHNICAL_CONDITIONS (TECH_CONDITIONS_TITLE) VALUES ('�� 16.�99-037-2009');
INSERT INTO TECHNICAL_CONDITIONS (TECH_CONDITIONS_TITLE) VALUES ('�� 16.�99-036-2007');
INSERT INTO TECHNICAL_CONDITIONS (TECH_CONDITIONS_TITLE) VALUES ('�� 16.�99-035-2007');
INSERT INTO TECHNICAL_CONDITIONS (TECH_CONDITIONS_TITLE) VALUES ('�� 16.�99-033-2007');
INSERT INTO TECHNICAL_CONDITIONS (TECH_CONDITIONS_TITLE) VALUES ('�� 16.�99-032-2007');
INSERT INTO TECHNICAL_CONDITIONS (TECH_CONDITIONS_TITLE) VALUES ('�� 16.�99-030-2005');
INSERT INTO TECHNICAL_CONDITIONS (TECH_CONDITIONS_TITLE) VALUES ('�� 16.�99-027-2005');
INSERT INTO TECHNICAL_CONDITIONS (TECH_CONDITIONS_TITLE) VALUES ('�� 16.�99-025-2005');
INSERT INTO TECHNICAL_CONDITIONS (TECH_CONDITIONS_TITLE) VALUES ('�� 16.�99-024-2005');
INSERT INTO TECHNICAL_CONDITIONS (TECH_CONDITIONS_TITLE) VALUES ('�� 16.�99-023-2004');
INSERT INTO TECHNICAL_CONDITIONS (TECH_CONDITIONS_TITLE) VALUES ('�� 16.�99-021-2005');
INSERT INTO TECHNICAL_CONDITIONS (TECH_CONDITIONS_TITLE) VALUES ('�� 16.�99-019-2004');
INSERT INTO TECHNICAL_CONDITIONS (TECH_CONDITIONS_TITLE) VALUES ('�� 16.�99-017-2004');
INSERT INTO TECHNICAL_CONDITIONS (TECH_CONDITIONS_TITLE) VALUES ('�� 16.�99-016-2003');
INSERT INTO TECHNICAL_CONDITIONS (TECH_CONDITIONS_TITLE) VALUES ('�� 16.�99-015-2003');
INSERT INTO TECHNICAL_CONDITIONS (TECH_CONDITIONS_TITLE) VALUES ('�� 16.�99-014-2004');
------------------------------------------------------------------------------------------------------
CREATE TABLE TWISTED_ELEMENT_TYPE (
  ID INTEGER PRIMARY KEY NOT NULL,
  ELEMENT_TYPE VARCHAR(20) NOT NULL);

CREATE GENERATOR TWISTED_ELEMENT_TYPE_ID_GEN;
 
CREATE TRIGGER TWISTED_ELEMENT_TYPE_ID_TRG FOR TWISTED_ELEMENT_TYPE
ACTIVE BEFORE INSERT
AS
BEGIN
  IF(NEW.ID is NULL) THEN
  NEW.ID = GEN_ID(TWISTED_ELEMENT_TYPE_ID_GEN, 1);
END;

INSERT INTO TWISTED_ELEMENT_TYPE (ELEMENT_TYPE) VALUES ('Single');
INSERT INTO TWISTED_ELEMENT_TYPE (ELEMENT_TYPE) VALUES ('Pair');
INSERT INTO TWISTED_ELEMENT_TYPE (ELEMENT_TYPE) VALUES ('Triple');
INSERT INTO TWISTED_ELEMENT_TYPE (ELEMENT_TYPE) VALUES ('Four');
INSERT INTO TWISTED_ELEMENT_TYPE (ELEMENT_TYPE) VALUES ('Core');
--------------------------------------------------------------------------------------------------------
CREATE TABLE POLYMER_GROUP (
  ID INTEGER PRIMARY KEY NOT NULL,
  POLYMER_GROUP VARCHAR(30) NOT NULL,
  POLYMER_GROUP_RUS VARCHAR(30) NOT NULL);

CREATE GENERATOR POLYMER_GROUP_ID_GEN;

CREATE TRIGGER POLYMER_GROUP_ID_TRG FOR POLYMER_GROUP
ACTIVE BEFORE INSERT
AS
BEGIN
	IF (NEW.ID IS NULL) THEN
	NEW.ID = GEN_ID(POLYMER_GROUP_ID_GEN, 1);
END;

INSERT INTO POLYMER_GROUP (POLYMER_GROUP, POLYMER_GROUP_RUS) VALUES ('PVC', '��� ���������');
INSERT INTO POLYMER_GROUP (POLYMER_GROUP, POLYMER_GROUP_RUS) VALUES ('PE', '����������');
INSERT INTO POLYMER_GROUP (POLYMER_GROUP, POLYMER_GROUP_RUS) VALUES ('Rubber', '������');
INSERT INTO POLYMER_GROUP (POLYMER_GROUP, POLYMER_GROUP_RUS) VALUES ('HFCompound', '������������� ��������');
INSERT INTO POLYMER_GROUP (POLYMER_GROUP, POLYMER_GROUP_RUS) VALUES ('PUR', '����������');
INSERT INTO POLYMER_GROUP (POLYMER_GROUP, POLYMER_GROUP_RUS) VALUES ('PVC LS', '��� ��������� LS');
INSERT INTO POLYMER_GROUP (POLYMER_GROUP, POLYMER_GROUP_RUS) VALUES ('PVC LSLTx', '��� ��������� LSLTx');
INSERT INTO POLYMER_GROUP (POLYMER_GROUP, POLYMER_GROUP_RUS) VALUES ('Rubber LTx', '������ LTx');
----------------------------------------------------------------------------------------------------------------
CREATE TABLE FIRE_PROTECTION_CLASS (
  ID INTEGER PRIMARY KEY NOT NULL,
  CLASS VARCHAR(20) NOT NULL,
  DESIGNATION VARCHAR(20) NOT NULL);

CREATE GENERATOR FIRE_PROTECTION_CLASS_ID_GEN

CREATE TRIGGER FIRE_PROTECTION_CLASS_ID_TRG FOR FIRE_PROTECTION_CLASS
ACTIVE BEFORE INSERT
AS
BEGIN
	IF (NEW.ID IS NULL)
	THEN NEW.ID = GEN_ID(FIRE_PROTECTION_CLASS_ID_GEN, 1);
END;

INSERT INTO FIRE_PROTECTION_CLASS (CLASS, DESIGNATION) VALUES ('�1.8.2.5.4', '');
INSERT INTO FIRE_PROTECTION_CLASS (CLASS, DESIGNATION) VALUES ('�1�.8.2.5.4', '��(� F/R)');
INSERT INTO FIRE_PROTECTION_CLASS (CLASS, DESIGNATION) VALUES ('�1�.8.2.5.4', '��(A)');
INSERT INTO FIRE_PROTECTION_CLASS (CLASS, DESIGNATION) VALUES ('�2.8.2.5.4', '��(B)');
INSERT INTO FIRE_PROTECTION_CLASS (CLASS, DESIGNATION) VALUES ('�3.8.2.5.4', '��(C)');
INSERT INTO FIRE_PROTECTION_CLASS (CLASS, DESIGNATION) VALUES ('�4.8.2.5.4', '��(D)');
INSERT INTO FIRE_PROTECTION_CLASS (CLASS, DESIGNATION) VALUES ('�1�.8.2.2.2', '��(A F/R)-LS');
INSERT INTO FIRE_PROTECTION_CLASS (CLASS, DESIGNATION) VALUES ('�1�.8.2.2.2', '��(A)-LS');
INSERT INTO FIRE_PROTECTION_CLASS (CLASS, DESIGNATION) VALUES ('�2.8.2.2.2', '��(B)-LS');
INSERT INTO FIRE_PROTECTION_CLASS (CLASS, DESIGNATION) VALUES ('�3.8.2.2.2', '��(C)-LS');
INSERT INTO FIRE_PROTECTION_CLASS (CLASS, DESIGNATION) VALUES ('�4.8.2.2.2', '��(D)-LS');
INSERT INTO FIRE_PROTECTION_CLASS (CLASS, DESIGNATION) VALUES ('�1�.8.1.2.1', '��(A F/R)-HF');
INSERT INTO FIRE_PROTECTION_CLASS (CLASS, DESIGNATION) VALUES ('�1�.8.1.2.1', '��(A)-HF');
INSERT INTO FIRE_PROTECTION_CLASS (CLASS, DESIGNATION) VALUES ('�2.8.1.2.1', '��(B)-HF');
INSERT INTO FIRE_PROTECTION_CLASS (CLASS, DESIGNATION) VALUES ('�3.8.1.2.1', '��(C)-HF');
INSERT INTO FIRE_PROTECTION_CLASS (CLASS, DESIGNATION) VALUES ('�4.8.1.2.1', '��(D)-HF');
INSERT INTO FIRE_PROTECTION_CLASS (CLASS, DESIGNATION) VALUES ('�1�.7.2.2.2', '��(A F/R)-FRLS');
INSERT INTO FIRE_PROTECTION_CLASS (CLASS, DESIGNATION) VALUES ('�1�.7.2.2.2', '��(A)-FRLS');
INSERT INTO FIRE_PROTECTION_CLASS (CLASS, DESIGNATION) VALUES ('�2.7.2.2.2', '��(B)-FRLS');
INSERT INTO FIRE_PROTECTION_CLASS (CLASS, DESIGNATION) VALUES ('�3.7.2.2.2', '��(C)-FRLS');
INSERT INTO FIRE_PROTECTION_CLASS (CLASS, DESIGNATION) VALUES ('�4.7.2.2.2', '��(D)-FRLS');
INSERT INTO FIRE_PROTECTION_CLASS (CLASS, DESIGNATION) VALUES ('�1�.7.1.2.1', '��(A F/R)-FRHF');
INSERT INTO FIRE_PROTECTION_CLASS (CLASS, DESIGNATION) VALUES ('�1�.7.1.2.1', '��(A)-FRHF');
INSERT INTO FIRE_PROTECTION_CLASS (CLASS, DESIGNATION) VALUES ('�2.7.1.2.1', '��(B)-FRHF');
INSERT INTO FIRE_PROTECTION_CLASS (CLASS, DESIGNATION) VALUES ('�3.7.1.2.1', '��(C)-FRHF');
INSERT INTO FIRE_PROTECTION_CLASS (CLASS, DESIGNATION) VALUES ('�4.7.1.2.1', '��(D)-FRHF');
INSERT INTO FIRE_PROTECTION_CLASS (CLASS, DESIGNATION) VALUES ('�1�.8.2.1.2', '��(A F/R)-LSLTx');
INSERT INTO FIRE_PROTECTION_CLASS (CLASS, DESIGNATION) VALUES ('�1�.8.2.1.2', '��(A)-LSLTx');
INSERT INTO FIRE_PROTECTION_CLASS (CLASS, DESIGNATION) VALUES ('�2.8.2.1.2', '��(B)-LSLTx');
INSERT INTO FIRE_PROTECTION_CLASS (CLASS, DESIGNATION) VALUES ('�3.8.2.1.2', '��(C)-LSLTx');
INSERT INTO FIRE_PROTECTION_CLASS (CLASS, DESIGNATION) VALUES ('�4.8.2.1.2', '��(D)-LSLTx');
INSERT INTO FIRE_PROTECTION_CLASS (CLASS, DESIGNATION) VALUES ('�1�.8.1.1.1', '��(A F/R)-HFLTx');
INSERT INTO FIRE_PROTECTION_CLASS (CLASS, DESIGNATION) VALUES ('�1�.8.1.1.1', '��(A)-HFLTx');
INSERT INTO FIRE_PROTECTION_CLASS (CLASS, DESIGNATION) VALUES ('�2.8.1.1.1', '��(B)-HFLTx');
INSERT INTO FIRE_PROTECTION_CLASS (CLASS, DESIGNATION) VALUES ('�3.8.1.1.1', '��(C)-HFLTx');
INSERT INTO FIRE_PROTECTION_CLASS (CLASS, DESIGNATION) VALUES ('�4.8.1.1.1', '��(D)-HFLTx');
INSERT INTO FIRE_PROTECTION_CLASS (CLASS, DESIGNATION) VALUES ('�1�.7.2.1.2', '��(A F/R)-FRLSLTx');
INSERT INTO FIRE_PROTECTION_CLASS (CLASS, DESIGNATION) VALUES ('�1�.7.2.1.2', '��(A)-FRLSLTx');
INSERT INTO FIRE_PROTECTION_CLASS (CLASS, DESIGNATION) VALUES ('�2.7.2.1.2', '��(B)-FRLSLTx');
INSERT INTO FIRE_PROTECTION_CLASS (CLASS, DESIGNATION) VALUES ('�3.7.2.1.2', '��(C)-FRLSLTx');
INSERT INTO FIRE_PROTECTION_CLASS (CLASS, DESIGNATION) VALUES ('�4.7.2.1.2', '��(D)-FRLSLTx');
INSERT INTO FIRE_PROTECTION_CLASS (CLASS, DESIGNATION) VALUES ('�1�.7.1.1.1', '��(A F/R)-FRHFLTx');
INSERT INTO FIRE_PROTECTION_CLASS (CLASS, DESIGNATION) VALUES ('�1�.7.1.1.1', '��(A)-FRHFLTx');
INSERT INTO FIRE_PROTECTION_CLASS (CLASS, DESIGNATION) VALUES ('�2.7.1.1.1', '��(B)-FRHFLTx');
INSERT INTO FIRE_PROTECTION_CLASS (CLASS, DESIGNATION) VALUES ('�3.7.1.1.1', '��(�)-FRHFLTx');
INSERT INTO FIRE_PROTECTION_CLASS (CLASS, DESIGNATION) VALUES ('�4.7.1.1.1', '��(D)-FRHFLTx');
-----------------------------------------------------------------------------------------------------
CREATE TABLE COLOR (
  ID INTEGER PRIMARY KEY NOT NULL,
  COLOR_NAME VARCHAR(20) NOT NULL,
  COLOR_NAME_RUS VARCHAR(20) NOT NULL);

CREATE GENERATOR COLOR_ID_GEN;

CREATE TRIGGER COLOR_ID_TRG FOR COLOR
ACTIVE BEFORE INSERT
AS
BEGIN
	IF (NEW.ID IS NULL) THEN
	NEW.ID = GEN_ID(COLOR_ID_GEN, 1);
END;

INSERT INTO COLOR (COLOR_NAME, COLOR_NAME_RUS) VALUES ('red', '�������');
INSERT INTO COLOR (COLOR_NAME, COLOR_NAME_RUS) VALUES ('black', '׸����');
INSERT INTO COLOR (COLOR_NAME, COLOR_NAME_RUS) VALUES ('blue', '�����');
INSERT INTO COLOR (COLOR_NAME, COLOR_NAME_RUS) VALUES ('brown', '����������');
INSERT INTO COLOR (COLOR_NAME, COLOR_NAME_RUS) VALUES ('yellow', 'Ƹ����');
INSERT INTO COLOR (COLOR_NAME, COLOR_NAME_RUS) VALUES ('white', '�����');
INSERT INTO COLOR (COLOR_NAME, COLOR_NAME_RUS) VALUES ('green', '������');
INSERT INTO COLOR (COLOR_NAME, COLOR_NAME_RUS) VALUES ('orange', '���������');
INSERT INTO COLOR (COLOR_NAME, COLOR_NAME_RUS) VALUES ('grey', '�����');
INSERT INTO COLOR (COLOR_NAME, COLOR_NAME_RUS) VALUES ('violet', '����������');
INSERT INTO COLOR (COLOR_NAME, COLOR_NAME_RUS) VALUES ('natural', '�����������');
---------------------------------------------------------------------------------------------------------
CREATE TABLE POWER_WIRES_COLOR_SCHEME (
  ID INTEGER NOT NULL PRIMARY KEY,
  COLOR_SCHEME VARCHAR(10) NOT NULL,
  COLOR_SCHEME_RUS VARCHAR(10) NOT NULL);

CREATE GENERATOR POWER_WIRES_COLOR_SCHEME_ID_GEN;

CREATE TRIGGER POWER_WIRES_COLOR_SCHEME_ID_TRG FOR POWER_WIRES_COLOR_SCHEME
ACTIVE BEFORE INSERT
AS
BEGIN
	IF (NEW.ID IS NULL) THEN
	NEW.ID = GEN_ID(POWER_WIRES_COLOR_SCHEME_ID_GEN, 1);
END;

INSERT INTO POWER_WIRES_COLOR_SCHEME (COLOR_SCHEME, COLOR_SCHEME_RUS) VALUES ('(N)', '(H)');
INSERT INTO POWER_WIRES_COLOR_SCHEME (COLOR_SCHEME, COLOR_SCHEME_RUS) VALUES ('(PE)', '(PE)');
INSERT INTO POWER_WIRES_COLOR_SCHEME (COLOR_SCHEME, COLOR_SCHEME_RUS) VALUES ('(PE, N)', '(PE, H)');
INSERT INTO POWER_WIRES_COLOR_SCHEME (COLOR_SCHEME, COLOR_SCHEME_RUS) VALUES ('none', 'none');
-----------------------------------------------------------------------------------------------------
CREATE TABLE CLIMATIC_MOD (
  ID INTEGER PRIMARY KEY NOT NULL,
  TITLE VARCHAR(10) NOT NULL,
  DESCRIPTION VARCHAR(100) NOT NULL);

CREATE GENERATOR CLIMATIC_MOD_ID_GEN;
 
CREATE TRIGGER CLIMATIC_MOD_ID_TRG FOR CLIMATIC_MOD
ACTIVE BEFORE INSERT
AS
BEGIN
	IF (NEW.ID IS NULL) THEN
	NEW.ID = GEN_ID(CLIMATIC_MOD_ID_GEN, 1);
END;

INSERT INTO CLIMATIC_MOD (TITLE, DESCRIPTION) VALUES ('�', '��������� ������������������ �����');
INSERT INTO CLIMATIC_MOD (TITLE, DESCRIPTION) VALUES ('��', '�������� ������������������ �����');
INSERT INTO CLIMATIC_MOD (TITLE, DESCRIPTION) VALUES ('���', '��������� � �������� ������������������ ������');
INSERT INTO CLIMATIC_MOD (TITLE, DESCRIPTION) VALUES ('O', '����� ����� ����, �������� ������ � ����� ������� �������������');
INSERT INTO CLIMATIC_MOD (TITLE, DESCRIPTION) VALUES ('�', '����������� ������������������ �����');
INSERT INTO CLIMATIC_MOD (TITLE, DESCRIPTION) VALUES ('�', '������������������ ����� � ��������-�������� ������� ��������');
INSERT INTO CLIMATIC_MOD (TITLE, DESCRIPTION) VALUES ('�', '��� ������ ������� ����, �������� ����� ����� � ����� ������� �������������');
---------------------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE CONDUCTOR (
  ID INTEGER PRIMARY KEY NOT NULL,
  TITLE VARCHAR(20) NOT NULL,
  WIRES_COUNT INTEGER NOT NULL,
  METAL_ID INTEGER NOT NULL,
  CLASS INTEGER NOT NULL,
  WIRES_DIAMETER NUMERIC(3, 3) NOT NULL,
  CONDUCTOR_DIAMETER NUMERIC(3, 3) NOT NULL,
  AREA_IN_SQR_MM NUMERIC(3, 3) NOT NULL);

CREATE GENERATOR CONDUCTOR_ID_GEN;

CREATE TRIGGER CONDUCTOR_ID_TRG FOR CONDUCTOR
ACTIVE BEFORE INSERT
AS
BEGIN
	IF (NEW.ID IS NULL) THEN
	NEW.ID = GEN_ID(CONDUCTOR_ID_GEN, 1);
END;

ALTER TABLE CONDUCTOR ADD CONSTRAINT FK_CONDUCTOR_TO_METAL_ID FOREIGN KEY (METAL_ID) REFERENCES METAL(ID) ON UPDATE CASCADE;

INSERT INTO CONDUCTOR (TITLE, WIRES_COUNT, METAL_ID, CLASS, WIRES_DIAMETER, CONDUCTOR_DIAMETER, AREA_IN_SQR_MM) VALUES ('7х0,30 ММЛ', 7, 2, 2, 0.3, 0.9, 0.5);
INSERT INTO CONDUCTOR (TITLE, WIRES_COUNT, METAL_ID, CLASS, WIRES_DIAMETER, CONDUCTOR_DIAMETER, AREA_IN_SQR_MM) VALUES ('7х0,37 ММ', 7, 3, 2, 0.37, 1.11, 0.75);
INSERT INTO CONDUCTOR (TITLE, WIRES_COUNT, METAL_ID, CLASS, WIRES_DIAMETER, CONDUCTOR_DIAMETER, AREA_IN_SQR_MM) VALUES ('7х0,37 ММЛ', 7, 2, 2, 0.37, 1.11, 0.75);
INSERT INTO CONDUCTOR (TITLE, WIRES_COUNT, METAL_ID, CLASS, WIRES_DIAMETER, CONDUCTOR_DIAMETER, AREA_IN_SQR_MM) VALUES ('7х0,43 ММ', 7, 3, 2, 0.43, 1.29, 1);
INSERT INTO CONDUCTOR (TITLE, WIRES_COUNT, METAL_ID, CLASS, WIRES_DIAMETER, CONDUCTOR_DIAMETER, AREA_IN_SQR_MM) VALUES ('7х0,43 ММЛ', 7, 2, 2, 0.43, 1.29, 1);
INSERT INTO CONDUCTOR (TITLE, WIRES_COUNT, METAL_ID, CLASS, WIRES_DIAMETER, CONDUCTOR_DIAMETER, AREA_IN_SQR_MM) VALUES ('7х0,53 ММ', 7, 3, 2, 0.53, 1.59, 1.5);
INSERT INTO CONDUCTOR (TITLE, WIRES_COUNT, METAL_ID, CLASS, WIRES_DIAMETER, CONDUCTOR_DIAMETER, AREA_IN_SQR_MM) VALUES ('7х0,53 ММЛ', 7, 2, 2, 0.53, 1.59, 1.5);
INSERT INTO CONDUCTOR (TITLE, WIRES_COUNT, METAL_ID, CLASS, WIRES_DIAMETER, CONDUCTOR_DIAMETER, AREA_IN_SQR_MM) VALUES ('7х0,67 ММ', 7, 3, 2, 0.67, 2.01, 2.5);
INSERT INTO CONDUCTOR (TITLE, WIRES_COUNT, METAL_ID, CLASS, WIRES_DIAMETER, CONDUCTOR_DIAMETER, AREA_IN_SQR_MM) VALUES ('7х0,67 ММЛ', 7, 2, 2, 0.67, 2.01, 2.5);
INSERT INTO CONDUCTOR (TITLE, WIRES_COUNT, METAL_ID, CLASS, WIRES_DIAMETER, CONDUCTOR_DIAMETER, AREA_IN_SQR_MM) VALUES ('7х0,85 ММ', 7, 3, 2, 0.85, 2.55, 4);
INSERT INTO CONDUCTOR (TITLE, WIRES_COUNT, METAL_ID, CLASS, WIRES_DIAMETER, CONDUCTOR_DIAMETER, AREA_IN_SQR_MM) VALUES ('7х0,85 ММЛ', 7, 2, 2, 0.85, 2.55, 4);
INSERT INTO CONDUCTOR (TITLE, WIRES_COUNT, METAL_ID, CLASS, WIRES_DIAMETER, CONDUCTOR_DIAMETER, AREA_IN_SQR_MM) VALUES ('7х1,05 ММ', 7, 3, 2, 1.05, 3.15, 6);
INSERT INTO CONDUCTOR (TITLE, WIRES_COUNT, METAL_ID, CLASS, WIRES_DIAMETER, CONDUCTOR_DIAMETER, AREA_IN_SQR_MM) VALUES ('7х1,05 ММЛ', 7, 2, 2, 1.05, 3.15, 6);
INSERT INTO CONDUCTOR (TITLE, WIRES_COUNT, METAL_ID, CLASS, WIRES_DIAMETER, CONDUCTOR_DIAMETER, AREA_IN_SQR_MM) VALUES ('7х1,35 ММ', 7, 3, 2, 1.35, 4.05, 10);
INSERT INTO CONDUCTOR (TITLE, WIRES_COUNT, METAL_ID, CLASS, WIRES_DIAMETER, CONDUCTOR_DIAMETER, AREA_IN_SQR_MM) VALUES ('7х1,35 ММЛ', 7, 2, 2, 1.35, 4.05, 10);
INSERT INTO CONDUCTOR (TITLE, WIRES_COUNT, METAL_ID, CLASS, WIRES_DIAMETER, CONDUCTOR_DIAMETER, AREA_IN_SQR_MM) VALUES ('7х7х0,64 ММ', 49, 3, 3, 0.64, 5.76, 16);
INSERT INTO CONDUCTOR (TITLE, WIRES_COUNT, METAL_ID, CLASS, WIRES_DIAMETER, CONDUCTOR_DIAMETER, AREA_IN_SQR_MM) VALUES ('0,8 ММ', 1, 3, 1, 0.8, 0.8, 0.5);
INSERT INTO CONDUCTOR (TITLE, WIRES_COUNT, METAL_ID, CLASS, WIRES_DIAMETER, CONDUCTOR_DIAMETER, AREA_IN_SQR_MM) VALUES ('0,98 ММ', 1, 3, 1, 0.98, 0.98, 0.75);
INSERT INTO CONDUCTOR (TITLE, WIRES_COUNT, METAL_ID, CLASS, WIRES_DIAMETER, CONDUCTOR_DIAMETER, AREA_IN_SQR_MM) VALUES ('1,13 ММ', 1, 3, 1, 1.13, 1.13, 1);
INSERT INTO CONDUCTOR (TITLE, WIRES_COUNT, METAL_ID, CLASS, WIRES_DIAMETER, CONDUCTOR_DIAMETER, AREA_IN_SQR_MM) VALUES ('1,38 ММ', 1, 3, 1, 1.38, 1.38, 1.5);
INSERT INTO CONDUCTOR (TITLE, WIRES_COUNT, METAL_ID, CLASS, WIRES_DIAMETER, CONDUCTOR_DIAMETER, AREA_IN_SQR_MM) VALUES ('1,78 ММ', 1, 3, 1, 1.78, 1.78, 2.5);
-----------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE LIST_CABLE_POWER_COLOR (
  ID INTEGER PRIMARY KEY NOT NULL,
  CABLE_ID INTEGER NOT NULL,
  POWER_COLOR_SCHEME_ID INTEGER NOT NULL);

CREATE GENERATOR LIST_CABLE_POWER_COLOR_ID_GEN;

CREATE TRIGGER LIST_CABLE_POWER_COLOR_ID_TRG FOR LIST_CABLE_POWER_COLOR
ACTIVE BEFORE INSERT
AS
BEGIN
	IF (NEW.ID IS NULL) THEN
	NEW.ID = GEN_ID(LIST_CABLE_POWER_COLOR_ID_GEN, 1);
END;

ALTER TABLE LIST_CABLE_POWER_COLOR ADD CONSTRAINT FK_CABLE_TO_PWR_CLR_ID FOREIGN KEY (CABLE_ID) REFERENCES CABLE(ID) ON UPDATE CASCADE;

ALTER TABLE LIST_CABLE_POWER_COLOR ADD CONSTRAINT FK_PWR_CLR_TO_CABLE_ID FOREIGN KEY (POWER_COLOR_SCHEME_ID) REFERENCES POWER_WIRES_COLOR_SCHEME(ID) ON UPDATE CASCADE;
------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE LIST_CABLE_PROPERTIES (
  ID INTEGER PRIMARY KEY NOT NULL,
  CABLE_ID INTEGER NOT NULL,
  PROPERTY_ID INTEGER NOT NULL);

CREATE GENERATOR LIST_CABLE_PROPERTIES_ID_GEN;

CREATE TRIGGER LIST_CABLE_PROPERTIES_ID_TRG FOR LIST_CABLE_PROPERTIES
ACTIVE BEFORE INSERT
AS
BEGIN
	IF (NEW.ID IS NULL) THEN
	NEW.ID = GEN_ID(LIST_CABLE_PROPERTIES_ID_GEN, 1);
END;

ALTER TABLE LIST_CABLE_PROPERTIES ADD CONSTRAINT FK_CABLE_TO_PROPERTY_ID FOREIGN KEY (CABLE_ID) REFERENCES CABLE(ID) ON UPDATE CASCADE;
ALTER TABLE LIST_CABLE_PROPERTIES ADD CONSTRAINT FK_PROPERTY_TO_CABLE_ID FOREIGN KEY (PROPERTY_ID) REFERENCES CABLE_PROPERTIES(ID) ON UPDATE CASCADE;
-------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE OPERATING_VOLTAGE (
  ID INTEGER PRIMARY KEY NOT NULL,
  AC_VOLTAGE INTEGER NOT NULL,
  AC_FRIQUENCY INTEGER NOT NULL,
  DC_VOLTAGE INTEGER,
  DESCRIPTION VARCHAR(100));

CREATE GENERATOR OPERATING_VOLTAGE_ID_GEN;

CREATE TRIGGER OPERATING_VOLTAGE_ID_TRG FOR OPERATING_VOLTAGE
ACTIVE BEFORE INSERT
AS
BEGIN
	IF (NEW.ID IS NULL) THEN
	NEW.ID = GEN_ID(OPERATING_VOLTAGE_ID_GEN, 1);
END;

INSERT INTO OPERATING_VOLTAGE (AC_VOLTAGE, AC_FRIQUENCY, DC_VOLTAGE, DESCRIPTION) VALUES (450, 400, 1000, '���������� - 450/750� �� 400��, ���������� - 1000�');
INSERT INTO OPERATING_VOLTAGE (AC_VOLTAGE, AC_FRIQUENCY, DC_VOLTAGE, DESCRIPTION) VALUES (380, 400, 540, '���������� - 380� �� 400��, ���������� - 540�');
INSERT INTO OPERATING_VOLTAGE (AC_VOLTAGE, AC_FRIQUENCY, DC_VOLTAGE, DESCRIPTION) VALUES (660, 400, 1000, '���������� - 660� �� 400��, ���������� - 1000�');
------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE CABLE_SHORT_NAME (
  ID INTEGER PRIMARY KEY NOT NULL,
  SHORT_NAME VARCHAR(50) NOT NULL);

CREATE GENERATOR CABLE_SHORT_NAME_ID_GEN;

CREATE TRIGGER CABLE_SHORT_NAME_ID_TRG FOR CABLE_SHORT_NAME
ACTIVE BEFORE INSERT
AS
BEGIN
	IF (NEW.ID IS NULL) THEN
	NEW.ID = GEN_ID(CABLE_SHORT_NAME_ID_GEN, 1);
END;

INSERT INTO CABLE_SHORT_NAME (SHORT_NAME) VALUES ('�����');
INSERT INTO CABLE_SHORT_NAME (SHORT_NAME) VALUES ('����');
-----------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE INSULATED_BILLET (
  ID INTEGER PRIMARY KEY NOT NULL,
  COND_ID INTEGER NOT NULL,
  POLYMER_GROUP_ID INTEGER NOT NULL,
  OPERATING_VOLTAGE_ID INTEGER NOT NULL,
  DIAMETER NUMERIC(3, 2) NOT NULL,
  MIN_THICKNESS NUMERIC(2, 2),
  NOMINAL_THICKNESS NUMERIC(2, 2),
  CABLE_SHORT_NAME_ID INTEGER NOT NULL);

CREATE GENERATOR INSULATED_BILLET_ID_GEN;

CREATE TRIGGER INSULATED_BILLET_ID_TRG FOR INSULATED_BILLET
ACTIVE BEFORE INSERT
AS
BEGIN
	IF (NEW.ID IS NULL) THEN
	NEW.ID = GEN_ID(INSULATED_BILLET_ID_GEN, 1);
END;

ALTER TABLE INSULATED_BILLET ADD CONSTRAINT FK_INS_BILLET_TO_CONDUCTOR_ID FOREIGN KEY (COND_ID) REFERENCES CONDUCTOR(ID) ON UPDATE CASCADE;

ALTER TABLE INSULATED_BILLET ADD CONSTRAINT FK_INS_BILLET_TO_P_GROUP_ID FOREIGN KEY (POLYMER_GROUP_ID) REFERENCES POLYMER_GROUP(ID) ON UPDATE CASCADE;

ALTER TABLE INSULATED_BILLET ADD CONSTRAINT FK_INS_BILLET_TO_OP_VOLT_ID FOREIGN KEY (OPERATING_VOLTAGE_ID) REFERENCES OPERATING_VOLTAGE(ID) ON UPDATE CASCADE;

ALTER TABLE INSULATED_BILLET ADD CONSTRAINT FK_INS_BILLET_TO_CBL_SHRT_NM_ID FOREIGN KEY (CABLE_SHORT_NAME_ID) REFERENCES CABLE_SHORT_NAME(ID) ON UPDATE CASCADE;

INSERT INTO INSULATED_BILLET (COND_ID, POLYMER_GROUP_ID, OPERATING_VOLTAGE_ID, DIAMETER, MIN_THICKNESS, NOMINAL_THICKNESS, CABLE_SHORT_NAME_ID) VALUES (2, 3, 1, 2.7, 0.7, 0.9, 1);
INSERT INTO INSULATED_BILLET (COND_ID, POLYMER_GROUP_ID, OPERATING_VOLTAGE_ID, DIAMETER, MIN_THICKNESS, NOMINAL_THICKNESS, CABLE_SHORT_NAME_ID) VALUES (4, 3, 1, 3.15, 0.7, 0.9, 1);
INSERT INTO INSULATED_BILLET (COND_ID, POLYMER_GROUP_ID, OPERATING_VOLTAGE_ID, DIAMETER, MIN_THICKNESS, NOMINAL_THICKNESS, CABLE_SHORT_NAME_ID) VALUES (6, 3, 1, 3.3, 0.7, 0.9, 1);
INSERT INTO INSULATED_BILLET (COND_ID, POLYMER_GROUP_ID, OPERATING_VOLTAGE_ID, DIAMETER, MIN_THICKNESS, NOMINAL_THICKNESS, CABLE_SHORT_NAME_ID) VALUES (8, 3, 1, 3.8, 0.7, 0.9, 1);
INSERT INTO INSULATED_BILLET (COND_ID, POLYMER_GROUP_ID, OPERATING_VOLTAGE_ID, DIAMETER, MIN_THICKNESS, NOMINAL_THICKNESS, CABLE_SHORT_NAME_ID) VALUES (10, 3, 1, 4.55, 0.8, 1, 1);
INSERT INTO INSULATED_BILLET (COND_ID, POLYMER_GROUP_ID, OPERATING_VOLTAGE_ID, DIAMETER, MIN_THICKNESS, NOMINAL_THICKNESS, CABLE_SHORT_NAME_ID) VALUES (12, 3, 1, 5.2, 0.8, 1, 1);
INSERT INTO INSULATED_BILLET (COND_ID, POLYMER_GROUP_ID, OPERATING_VOLTAGE_ID, DIAMETER, MIN_THICKNESS, NOMINAL_THICKNESS, CABLE_SHORT_NAME_ID) VALUES (14, 3, 1, 6.4, 0.9, 1.1, 1);
INSERT INTO INSULATED_BILLET (COND_ID, POLYMER_GROUP_ID, OPERATING_VOLTAGE_ID, DIAMETER, MIN_THICKNESS, NOMINAL_THICKNESS, CABLE_SHORT_NAME_ID) VALUES (16, 3, 1, 8, 0.9, 1.1, 1);
------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE CABLE (
  ID INTEGER PRIMARY KEY NOT NULL,
  TITLE VARCHAR(50) NOT NULL,
  ELEMENTS_COUNT INTEGER NOT NULL,
  TWISTED_ELEMENT_TYPE_ID INTEGER NOT NULL,
  TECHNICAL_CONDITIONS_ID INTEGER NOT NULL,
  FIRE_PROTECT_ID INTEGER NOT NULL,
  COVER_POLYMER_GROUP_ID INTEGER NOT NULL,
  COVER_COLOR_ID INTEGER NOT NULL,
  MAX_COVER_DIAMETER NUMERIC(3, 2),
  CLIMATIC_MOD_ID INTEGER NOT NULL,
  OPERATING_VOLTAGE_ID INTEGER NOT NULL);

CREATE GENERATOR CABLE_ID_GEN;

CREATE TRIGGER CABLE_ID_TRG FOR CABLE
ACTIVE BEFORE INSERT
AS
BEGIN
	IF (NEW.ID IS NULL) THEN
	NEW.ID = GEN_ID(CABLE_ID_GEN, 1);
END;

ALTER TABLE CABLE ADD CONSTRAINT FK_CABLE_TO_CLIMATIC_MOD_ID FOREIGN KEY (CLIMATIC_MOD_ID) REFERENCES CLIMATIC_MOD(ID) ON UPDATE CASCADE;

ALTER TABLE CABLE ADD CONSTRAINT FK_CABLE_TO_OPER_VOLT_ID FOREIGN KEY (OPERATING_VOLTAGE_ID) REFERENCES OPERATING_VOLTAGE(ID) ON UPDATE CASCADE;

ALTER TABLE CABLE ADD CONSTRAINT FK_CABLE_TO_COLOR_ID FOREIGN KEY (COVER_COLOR_ID) REFERENCES COLOR(ID) ON UPDATE CASCADE;

ALTER TABLE CABLE ADD CONSTRAINT FK_CABLE_TO_POLYMER_GROUP_ID FOREIGN KEY (COVER_POLYMER_GROUP_ID) REFERENCES POLYMER_GROUP(ID) ON UPDATE CASCADE;

ALTER TABLE CABLE ADD CONSTRAINT FK_CABLE_TO_FIRE_PROTECT_ID FOREIGN KEY (FIRE_PROTECT_ID) REFERENCES FIRE_PROTECTION_CLASS(ID) ON UPDATE CASCADE;

ALTER TABLE CABLE ADD CONSTRAINT FK_CABLE_TO_TECH_COND_ID FOREIGN KEY (TECHNICAL_CONDITIONS_ID) REFERENCES TECHNICAL_CONDITIONS(ID) ON UPDATE CASCADE;

ALTER TABLE CABLE ADD CONSTRAINT FK_CABLE_TO_TWIST_EL_TYPE_ID FOREIGN KEY (TWISTED_ELEMENT_TYPE_ID) REFERENCES TWISTED_ELEMENT_TYPE(ID) ON UPDATE CASCADE;
------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE TWIST_INFO(
ID INTEGER PRIMARY KEY NOT NULL,
ELEMENTS_COUNT INTEGER NOT NULL,
TWIST_KOEFFICIENT NUMERIC(3, 2) NOT NULL,
LAYER1_ELEMENTS_COUNT INTEGER NOT NULL,
LAYER2_ELEMENTS_COUNT INTEGER DEFAULT 0 NOT NULL,
LAYER3_ELEMENTS_COUNT INTEGER DEFAULT 0 NOT NULL,
LAYER4_ELEMENTS_COUNT INTEGER DEFAULT 0 NOT NULL,
LAYER5_ELEMENTS_COUNT INTEGER DEFAULT 0 NOT NULL);

CREATE GENERATOR TWIST_INFO_ID_GEN;

CREATE TRIGGER TWIST_INFO_ID_TRG FOR TWIST_INFO
ACTIVE BEFORE INSERT
AS
BEGIN
	IF (NEW.ID IS NULL) THEN
	NEW.ID = GEN_ID(TWIST_INFO_ID_GEN, 1);
END;
---------------------------------------------------------------------------------------------------------------------
CREATE TABLE LIST_CABLE_BILLETS(
ID INTEGER PRIMARY KEY NOT NULL,
CABLE_ID INTEGER NOT NULL,
BILLET_ID INTEGER NOT NULL);

CREATE GENERATOR LIST_CABLE_BILLETS_ID_GEN;

CREATE TRIGGER LIST_CABLE_BILLETS_ID_TRG
FOR LIST_CABLE_BILLETS
ACTIVE BEFORE INSERT
AS
BEGIN
	IF(NEW.ID IS NULL) THEN
	NEW.ID = NEXT VALUE FOR LIST_CABLE_BILLETS_ID_GEN;
END;

ALTER TABLE LIST_CABLE_BILLETS ADD CONSTRAINT FK_CABLE_TO_BILLET_ID FOREIGN KEY (BILLET_ID) REFERENCES INSULATED_BILLET(ID) ON UPDATE CASCADE;

ALTER TABLE LIST_CABLE_BILLETS ADD CONSTRAINT FK_BILLET_TO_CABLE_ID FOREIGN KEY (CABLE_ID) REFERENCES CABLE(ID) ON UPDATE CASCADE;