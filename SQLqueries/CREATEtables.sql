create table MCC_M2M (
	M2M_SEQ_NUM decimal(9,0) NOT NULL,
	SRCE_SYSTEM_CODE nvarchar(12) NOT NULL,
	SRCE_SYSTEM_KEY nvarchar(32) NOT NULL,
	M2M_CUR_SEQ_NUM decimal(9,0) NOT NULL,
	M2M_VALUE_NUM decimal(38,0) NULL,
	M2M_VALUE_TYPE nvarchar(12) NULL,
	M2M_DATE datetime2(0) NULL,
	CREATED_BY_USERID nvarchar(64) NULL,
	CREATED_TSTMP datetime2(0) NOT NULL,
	LAST_UPDATE_USERID nvarchar(64) NULL,
	LAST_UPDATE_TSTMP datetime2(0) NOT NULL,
	TRADING_LEGAL_ENTITY nvarchar(64) NULL,
	STATUS_IND nvarchar(1) NULL,
	UTI_TXT nvarchar(64) NULL,
	PRIMARY KEY (M2M_SEQ_NUM)
);

drop table MCC_M2M

create table CCM_IFACE(
	CI_SEQ_NUM decimal(9,0) NOT NULL,
	SRCE_SYSTEM_CODE nvarchar(12) NOT NULL,
	SRCE_SYSTEM_KEY nvarchar(32) NOT NULL,
	CON_SEQ_NUM decimal(9,0) NULL,
	STATUS_IND nvarchar(2) NOT NULL,
	ERROR_TXT nvarchar(2000) NULL,
	CREATED_BY_USERID nvarchar(64) NULL,
	CREATED_TSTMP datetime2(0) NOT NULL,
	LAST_UPDATE_USERID nvarchar(64) NULL,
	LAST_UPDATE_TSTMP datetime2(0) NOT NULL,
	TRADE_DETAILS_XML nvarchar(MAX) NULL,
	PRIORITY_NUM decimal(2,0) NOT NULL,
	ACTION_IND nvarchar(1) NULL,
	ERROR_PROCESSING_COUNT_NUM decimal(2,0) NULL,
	XML_VERSION_NUM decimal(6,0) NULL,
	TRADE_AMENDMENT_NUM decimal(5,0) NULL,
	AMENDMENT_RECEIVED_TSTMP datetime2(0) NULL,
	TRANSACTION_TYPE nvarchar(32) NULL,
	CALLING_PROCESS_NAME nvarchar(64) NULL,
	PROCESSING_SYSTEM nvarchar(3) NULL,
	primary key(CI_SEQ_NUM)
	);

create table DELETE_MCCFED_CONTRACT_DISPUTE(
	SCD_SEQ_NUM decimal(9,0) NOT NULL);

select count(*) from DEX_PRICING

create table DEX_GRADEGP(
	GRADE_GROUP_CODE nvarchar(4) NOT NULL,
	DESC_LONG_TEXT nvarchar(50) NULL,
	DESC_SHORT_TEXT nvarchar(15) NULL,
	ACTIVE_REC_IND nvarchar(1) NULL,
	LAST_UPDATE_TSTMP datetime2(0) NULL,
	DELETED_IND nvarchar(1) NULL,
	LAST_RUN_TSTMP datetime2(0) NOT NULL,
	SDW_VERSION_NUM decimal(10,0) NOT NULL,
	REACH_REG_IND nvarchar(1) NULL,
	primary key(GRADE_GROUP_CODE)
	);

create table DELETE_DEX_GRADEGP(
	GRADE_GROUP_CODE nvarchar(4) NOT NULL);


create table DEX_USR(
	NICKNAME_USERID nvarchar(8) NOT NULL,
	RACF_USERID nvarchar(6) NULL,
	USER_TYPE_CODE nvarchar(1) NULL,
	USER_DESC_TXT nvarchar(30) NULL,
	USER_SURNAME_TXT nvarchar(40) NULL,
	USER_FIRST_NAME nvarchar(15) NULL,
	USER_LOCATION_TXT nvarchar(24) NULL,
	USER_COMP_CODE nvarchar(6) NULL,
	USER_REF_CODE nvarchar(10) NULL,
	USER_REG_FROM_DATE datetime2(0) NULL,
	USER_REG_TO_DATE datetime2(0) NULL,
	USER_ADMNSTR_IND nvarchar(1) NULL,
	USER_TRADE_ACCT_N decimal(10,0) NULL,
	USER_TRADE_COMP nvarchar(2) NULL,
	BUSINESS_STREAM_I nvarchar(1) NULL,
	FIRST_DAY_AWAY_D datetime2(0) NULL,
	FIRST_DAY_BACK_D datetime2(0) NULL,
	LC_RACF_USERID nvarchar(50) NULL,
	SECURITY_GROUP_IND nvarchar(1) NULL,
	LAST_UPDATE_TSTMP datetime2(0) NULL,
	DELETED_IND nvarchar(1) NULL,
	LAST_RUN_TSTMP datetime2(0) NULL,
	SDW_VERSION_NUM decimal(10,0) NOT NULL,
	PRINTER_GP_CODE nvarchar(8) NULL,
	primary key(NICKNAME_USERID)
	);

create table DELETE_DEX_USR(
	NICKNAME_USERID nvarchar(8) NOT NULL);

select count(*) from DEX_COMPADDR

create table DAILY_TRADE_STATE_REPORT (
	Trade_Or_Allege nvarchar(10) NOT NULL,
	Trade_ID nvarchar(MAX) NULL,
	Trade_Party_Transaction_ID nvarchar(100) NULL,
	Report_tracking_number 
	Complex trade component ID 
	Reporting Counterparty ID
	Type of ID of the other Counterparty 
	ID of the other counterparty
	Trade Party 1 - Execution Agent ID 
	Trade Party 2 - Execution Agent ID 
	Action type
	Level 
	Reporting timestamp
	Report submitting entity ID
	Exchange Traded Indicator  
	Trade Party 1 - Third Party Viewer ID Type 
	Trade Party 1 - Third Party Viewer ID 
	Name of the counterparty 
	Domicile of the counterparty 
	Contract with non-EEA counterparty 
	Country of the other counterparty 
	Corporate sector of the reporting counterparty
	Financial or non-financial nature of the counterparty 
	Nature of the reporting counterparty 
	Broker ID
	Clearing member ID
	Type of ID of the Beneficiary 
	Beneficiary ID
	Trading capacity
	Counterparty side
	Directly linked to commercial activity or treasury financing
	Clearing threshold
	Taxonomy used 
	Product ID 1 
	Product ID 2 
	Contract type 
	Asset class 
	Product classification type 
	Product classification 
	Product identification type 
	Product identification 
	Underlying identification type 
	Underlying identification
	Deliverable currency
	Option type
	Option exercise style
	Strike price (cap/floor rate)
	Strike price notation
	Maturity date of the underlying 
	Venue of Execution
	Compression
	Price / rate
	Price notation
	Currency of price 
	Notional
	Notional currency 1
	Notional currency 2
	Price multiplier
	Quantity
	Up-front payment
	Delivery type
	Execution timestamp
	Effective date
	Maturity date
	Termination date
	Settlement date
	Master Agreement type
	Master Agreement version
	Confirmation timestamp
	Confirmation means
	Clearing obligation
	Cleared
	Clearing timestamp
	CCP
	Intragroup
	Fixed rate of leg 1
	Fixed rate of leg 2
	Fixed rate day count 
	Fixed rate day count leg 1 
	Fixed rate day count leg 2 
	Fixed leg payment frequency 
	Fixed rate payment frequency leg 1 -time period 
	Fixed rate payment frequency leg 1 - multiplier 
	Fixed rate payment frequency leg 2 - time period 
	Fixed rate payment frequency leg 2 - multiplier 
	Floating rate payment frequency 
	Floating rate payment frequency leg 1 - time period 
	Floating rate payment frequency leg 1 - multiplier 
	Floating rate payment frequency leg 2 - time period 
	Floating rate payment frequency leg 2 - multiplier 
	Floating rate reset frequency 
	Floating rate reset frequency leg 1 - time period 
	Floating rate reset frequency leg 1 - multiplier 
	Floating rate reset frequency leg 2- time period 
	Floating rate reset frequency leg 2 - multiplier 
	Floating rate of leg 1
	Floating rate reference period leg 1 - time period 
	Floating rate reference period leg 1 - multiplier 
	Floating rate of leg 2
	Floating rate reference period leg 2 - time period 
	Floating rate reference period leg 2 -multiplier 
	Delivery currency 2
	Exchange rate 1
	Forward exchange rate
	Exchange rate basis
	Commodity base
	Commodity details
	Delivery point or zone
	Interconnection Point
	Load type
	Load delivery intervals 
	Delivery start date and time

create table DTCC_TEST_1 (
	Trade_Or_Allege nvarchar(10) NOT NULL,
	Trade_ID nvarchar(MAX) NULL,
	Trade_Party_Transaction_ID nvarchar(100) NULL,
	FileName nvarchar(100));

create table DEX_ADDRLINE(
	ADDRESS_NUM decimal(10,0) NOT NULL,
	LINE_NUM decimal(5,0) NOT NULL,
	DESCRIPTION_TEXT nvarchar(50) NULL,
	LAST_UPDATE_TSTMP datetime2(0) NULL,
	DELETED_IND nvarchar(40) NULL,
	LAST_RUN_TSTMP datetime2(0) NOT NULL,
	SDW_VERSION_NUM decimal(10,0) NOT NULL
	);

select * from DEX_ADDRLINE -- where greatest_update_tstmp is not NULL

alter table DEX_ADDRLINE
add GREATEST_UPDATE_TSTMP datetime2(0) NULL

create table DEX_PROFGP(
	TRDG_COMP_MNEM nvarchar(2) NOT NULL,
	CHRG_ACCT_NUM decimal(10,0) NOT NULL,
	PROFIT_GROUP_MNEM nvarchar(5) NOT NULL,
	PROFIT_GP_DESC_TXT nvarchar(20) NULL,
	TRADED_PERIOD_CODE nvarchar(6) NULL,
	STREAM_CODE nvarchar(5) NULL,
	COST_OF_CAPITAL_A decimal(13,0) NULL,
	COST_CAPTL_CALC_D datetime2(0) NULL,
	BUCKET_IND nvarchar(1) NULL,
	LAST_UPDATE_TSTMP datetime2(0) NULL,
	REF_ORDERS_MT_AMT decimal(10,0) NULL,
	DELETED_IND nvarchar(1) NULL,
	LAST_RUN_TSTMP datetime2(0) NULL,
	SDW_VERSION_NUM decimal(10,0) NULL,
	ARCHIVED_IND nvarchar(1) NOT NULL
	);


alter table DEX_PROFGP
add GREATEST_UPDATE_TSTMP datetime2(0) NULL

select top 1 * from DEX_ADDRLINE

create table DTCC_SINK_1(
);
