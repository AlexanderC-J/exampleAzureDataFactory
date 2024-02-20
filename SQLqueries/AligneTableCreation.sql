create table ALIGNE_USR (
    USR_ACTIVE decimal(5,0) NULL,
	USR_AGEN decimal(5,0) NULL,
	USR_AOP0 nvarchar(4) NULL,
	USR_ADATE0 datetime2(0) NULL,
	USR_ATIME0 decimal(5,0) NULL,
	USR_AOP1 nvarchar(4) NULL,
	USR_ADATE1 datetime2(0) NULL,
	USR_ATIME1 decimal(5,0) NULL,
	USR_ALF datetime2(0) NULL,
	USR_AOHM datetime2(0) NOT NULL,
	USR_ROHM datetime2(0) NULL,
	USR_REFRESH decimal(10,0) NOT NULL,
	USR_ZKEY decimal(10,0) NOT NULL,
	USR_XKEY decimal(10,0) NOT NULL,
	USR_UTIL1 decimal(10,0) NOT NULL,
	USR_UTIL2 decimal(10,0) NOT NULL,
	USR_ID nvarchar(4) NOT NULL,
	USR_NAME nvarchar(24) NULL,
	USR_PW nvarchar(33) NULL,
	USR_OPW1 nvarchar(33) NULL,
	USR_OPW2 nvarchar(33) NULL,
	USR_OPW3 nvarchar(33) NULL,
	USR_OPW4 nvarchar(33) NULL,
	USR_OPW5 nvarchar(33) NULL,
	USR_OPW6 nvarchar(33) NULL,
	USR_OPW7 nvarchar(33) NULL,
	USR_OPW8 nvarchar(33) NULL,
	USR_OPW9 nvarchar(33) NULL,
	USR_FNGRP nvarchar(33) NULL,
	USR_XREF nvarchar(33) NULL,
	USR_XREF2 nvarchar(33) NULL,
	USR_PAYLEVEL float(49) NULL,
	USR_PWCHG nvarchar(33) NULL,
	USR_PWDAYS decimal(5,0) NULL,
	USR_PWFIRST nvarchar(33) NULL,
	USR_RTEVENT nvarchar(33) NULL,
	USR_RTSEC decimal(5,0) NULL,
	USR_DATAGRP nvarchar(33) NULL,
	USR_AUTHORIZATION nvarchar(33) NULL,
	USR_RPTSEC decimal(5,0) NULL,
	USR_REPGRP nvarchar(33) NULL,
	USR_LOGIN nvarchar(33) NULL,
	USR_RPTDIR nvarchar(250) NULL,
	USR_TEL nvarchar(33) NULL,
	USR_EMAIL nvarchar(50) NULL,
	USR_ATTR1 nvarchar(33) NULL,
	USR_ATTR2 nvarchar(33) NULL,
	USR_ATTR3 nvarchar(33) NULL,
	USR_ATTR4 nvarchar(33) NULL,
	USR_SECID decimal(5,0) NULL,
	USR_CCY nvarchar(33) NULL,
	USR_RPT_AUTOSTART nvarchar(33) NULL
	);

alter table ALIGNE_TPOWAUX
    add TPOWAUX_A_ASSET_NAME nvarchar(100) NULL

-- DEX table fixes 01/11/2022

alter table DEX_CNCHEVNT
    add GREATEST_UPDATE_TSTMP datetime2(0) NULL;

select top 100 * from DEX_CNCHEVNT

alter table DEX_CDTYCTMT
    add GREATEST_UPDATE_TSTMP datetime2(0) NULL

alter table DEX_CHRGACCT
    add GREATEST_UPDATE_TSTMP datetime2(0) NULL

alter table DEX_COMPADDR
   add GREATEST_UPDATE_TSTMP datetime2(0) NULL

alter table DEX_CONTRACT
   add GREATEST_UPDATE_TSTMP datetime2(0) NULL

alter table DEX_EVNTNARR
   add GREATEST_UPDATE_TSTMP datetime2(0) NULL

alter table DEX_FUTFWDEX
   add GREATEST_UPDATE_TSTMP datetime2(0) NULL

alter table DEX_PARCEL
   add GREATEST_UPDATE_TSTMP datetime2(0) NULL

alter table DEX_PRCLCST
   add GREATEST_UPDATE_TSTMP datetime2(0) NULL

alter table DEX_PRCLDCH
   add GREATEST_UPDATE_TSTMP datetime2(0) NULL

alter table DEX_PRICING
   add GREATEST_UPDATE_TSTMP datetime2(0) NULL

alter table DEX_PRCGPRDD
   add GREATEST_UPDATE_TSTMP datetime2(0) NULL

alter table DEX_TRDGACCT
   add GREATEST_UPDATE_TSTMP datetime2(0) NULL

alter table DEX_COMPANY
   add GREATEST_UPDATE_TSTMP datetime2(0) NULL

alter table DEX_GRADE
   add GREATEST_UPDATE_TSTMP datetime2(0) NULL

select * from CCM_ECONFIRM_REPORT

select count(*) from dbo.MCC_COMP_REPORTABLE_ENTITY
select count(*) from dbo.MCC_CONTRACT
select count(*) from dbo.MCC_CONTRACT_DISPUTE
select count(*) from dbo.MCC_DISPUTE
select count(*) from dbo.MCC_KPI_CREPORT
select count(*) from dbo.MCC_ECONFIRM_OPEN_TRADE
select count(*) from dbo.MCC_IFACE_STAGING
select count(*) from dbo.MCC_MASTER_AGREEMENT
select count(*) from dbo.MCC_PARTY
select count(*) from dbo.MCC_PERSONNEL
select count(*) from dbo.MCC_PROCESS_INSTANCE
select count(*) from dbo.MCC_QUEUE
select count(*) from dbo.MCC_UNIT
select count(*) from dbo.MCC_M2M
select count(*) from dbo.MCC_WORKFLOW
select count(*) from dbo.CCM_ECONFIRM_REPORT
select count(*) from dbo.CCM_ECONFIRM_TRADE_DETAIL

select count(*) from dbo.CCM_ECONFIRM_DATA_SUBMIT
select count(*) from dbo.CCM_IFACE
select count(*) from dbo.CCM_ECONFIRM_ERROR_LOG 
select count(*) from dbo.MCC_IFACE_STAGING_M2M
select count(*) from dbo.CCM_IFACE_M2M
select count(*) from dbo.CCM_DOC_CATEGORY
select count(*) from dbo.CCM_DOC_DEX_XREF
select count(*) from dbo.CCM_DOC_XREF
select count(*) from dbo.CCM_DOC_DOCUMENT
select count(*) from dbo.CCM_DOC_FOLDER

select count([CI_SEQ_NUM]) from CCM_IFACE where transaction_type = 'M2M' and srce_system_code in ('DEX','ZAINET') and LAST_UPDATE_TSTMP > '01-DEC-22'



