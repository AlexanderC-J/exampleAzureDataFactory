
create table dtcc_CO_ESMA_Daily_Trade_State_Report (
    [Trade type_Regulator_Rest of file name] nvarchar(MAX) NOT NULL
	,[Trade / Allege] nvarchar(MAX) NOT NULL
	,[ Trade ID] nvarchar(MAX) NOT NULL
	,[Trade Party Transaction ID] nvarchar(MAX) NULL
	,[Report tracking number ] nvarchar(MAX) NULL
	,[Complex trade component ID ] nvarchar(MAX) NULL
	,[Reporting Counterparty ID] nvarchar(MAX) NULL
	,[Type of ID of the other Counterparty ] nvarchar(MAX) NULL
	,[ID of the other counterparty] nvarchar(MAX) NULL
	,[Trade Party 1 - Execution Agent ID ] nvarchar(MAX) NULL
	,[Trade Party 2 - Execution Agent ID ] nvarchar(MAX) NULL
	,[Action type] nvarchar(MAx) NULL
	,[Level ] nvarchar(MAX) NULL
	,[Reporting timestamp] nvarchar(MAX) NULL
	,[Report submitting entity ID] nvarchar(MAX) NULL
	,[Exchange Traded Indicator  ] nvarchar(MAx) NULL
	,[Trade Party 1 - Third Party Viewer ID Type ] nvarchar(MAX) NULL
	,[Trade Party 1 - Third Party Viewer ID ] nvarchar(MAX) NULL
	,[Name of the counterparty ] nvarchar(MAX) NULL
	,[Domicile of the counterparty ] nvarchar(MAX) NULL
	,[Contract with non-EEA counterparty ] nvarchar(MAX) NULL
	,[Country of the other counterparty ] nvarchar(MAX) NULL
	,[Corporate sector of the reporting counterparty] nvarchar(MAX) NULL
	,[Financial or non-financial nature of the counterparty ] nvarchar(MAX) NULL
	,[Nature of the reporting counterparty ] nvarchar(MAX) NULL
	,[Broker ID] nvarchar(MAX) NULL
	,[Clearing member ID] nvarchar(MAX) NULL
	,[Type of ID of the Beneficiary ] nvarchar(MAX) NULL
	,[Beneficiary ID] nvarchar(MAX) NULL
	,[Trading capacity] nvarchar(MAX) NULL
	,[Counterparty side] nvarchar(MAX) NULL
	,[Directly linked to commercial activity or treasury financing] nvarchar(MAX) NULL
	,[Clearing threshold] nvarchar(MAX) NULL
	,[Taxonomy used ] nvarchar(MAX) NULL
	,[Product ID 1 ] nvarchar(MAX) NULL
	,[Product ID 2 ] nvarchar(MAX) NULL
	,[Contract type ] nvarchar(MAX) NULL
	,[Asset class ] nvarchar(MAX) NULL
	,[Product classification type ] nvarchar(MAX) NULL
	,[Product classification ] nvarchar(MAX) NULL
	,[Product identification type ] nvarchar(MAX) NULL
	,[Product identification ] nvarchar(MAX) NULL
	,[Underlying identification type ] nvarchar(MAX) NULL
	,[Underlying identification] nvarchar(MAX) NULL
	,[Deliverable currency] nvarchar(MAX) NULL
	,[Option type] nvarchar(MAX) NULL
	,[Option exercise style] nvarchar(MAX) NULL
	,[Strike price (cap floor rate)] nvarchar(MAX) NULL
	,[Strike price notation] nvarchar(MAX) NULL
	,[Maturity date of the underlying ] nvarchar(MAX) NULL
	,[Venue of Execution] nvarchar(MAX) NULL
	,[Compression] nvarchar(MAX) NULL
	,[Price   rate] nvarchar(MAX) NULL
	,[Price notation] nvarchar(MAX) NULL
	,[Currency of price ] nvarchar(MAX) NULL
	,[Notional] nvarchar(MAX) NULL
	,[Notional currency 1] nvarchar(MAX) NULL
	,[Notional currency 2] nvarchar(MAX) NULL
	,[Price multiplier] nvarchar(MAX) NULL
	,[Quantity] nvarchar(MAX) NULL
	,[Up-front payment] nvarchar(MAX) NULL
	,[Delivery type] nvarchar(MAX) NULL
	,[Execution timestamp] nvarchar(MAX) NULL
	,[Effective date] nvarchar(MAX) NULL
	,[Maturity date] nvarchar(MAX) NULL
	,[Termination date] nvarchar(MAX) NULL
	,[Settlement date] nvarchar(MAX) NULL
	,[Master Agreement type] nvarchar(MAX) NULL
	,[Master Agreement version] nvarchar(MAX) NULL
	,[Confirmation timestamp] nvarchar(MAX) NULL
	,[Confirmation means] nvarchar(MAX) NULL
	,[Clearing obligation] nvarchar(MAX) NULL
	,[Cleared] nvarchar(MAX) NULL
	,[Clearing timestamp] nvarchar(MAX) NULL
	,[CCP] nvarchar(MAX) NULL
	,[Intragroup] nvarchar(MAX) NULL
	,[Fixed rate of leg 1] nvarchar(MAX) NULL
	,[Fixed rate of leg 2] nvarchar(MAX) NULL
	,[Fixed rate day count ] nvarchar(MAX) NULL
	,[Fixed rate day count leg 1 ] nvarchar(MAX) NULL
	,[Fixed rate day count leg 2 ] nvarchar(MAX) NULL
	,[Fixed leg payment frequency ] nvarchar(MAX) NULL
	,[Fixed rate payment frequency leg 1 -time period ] nvarchar(MAX) NULL
	,[Fixed rate payment frequency leg 1 - multiplier ] nvarchar(MAX) NULL
	,[Fixed rate payment frequency leg 2 - time period ] nvarchar(MAX) NULL
	,[Fixed rate payment frequency leg 2 - multiplier ] nvarchar(MAX) NULL
	,[Floating rate payment frequency ] nvarchar(MAX) NULL
	,[Floating rate payment frequency leg 1 - time period ] nvarchar(MAX) NULL
	,[Floating rate payment frequency leg 1 - multiplier ] nvarchar(MAX) NULL
	,[Floating rate payment frequency leg 2 - time period ] nvarchar(MAX) NULL
	,[Floating rate payment frequency leg 2 - multiplier ] nvarchar(MAX) NULL
	,[Floating rate reset frequency ] nvarchar(MAX) NULL
	,[Floating rate reset frequency leg 1 - time period ] nvarchar(MAX) NULL
	,[Floating rate reset frequency leg 1 - multiplier ] nvarchar(MAX) NULL
	,[Floating rate reset frequency leg 2- time period ] nvarchar(MAX) NULL
	,[Floating rate reset frequency leg 2 - multiplier ] nvarchar(MAX) NULL
	,[Floating rate of leg 1] nvarchar(MAX) NULL
	,[Floating rate reference period leg 1 - time period ] nvarchar(MAX) NULL
	,[Floating rate reference period leg 1 - multiplier ] nvarchar(MAX) NULL
	,[Floating rate of leg 2] nvarchar(MAX) NULL
	,[Floating rate reference period leg 2 - time period ] nvarchar(MAX) NULL
	,[Floating rate reference period leg 2 -multiplier ] nvarchar(MAX) NULL
	,[Delivery currency 2] nvarchar(MAX) NULL
	,[Exchange rate 1] nvarchar(MAX) NULL
	,[Forward exchange rate] nvarchar(MAX) NULL
	,[Exchange rate basis] nvarchar(MAX) NULL
	,[Commodity base] nvarchar(MAX) NULL
	,[Commodity details] nvarchar(MAX) NULL
	,[Delivery point or zone] nvarchar(MAX) NULL
	,[Interconnection Point] nvarchar(MAX) NULL
	,[Load type] nvarchar(MAX) NULL
	,[Load delivery intervals ] nvarchar(MAX) NULL
	,[Delivery start date and time] nvarchar(MAX) NULL
	,[Delivery end date and time] nvarchar(MAX) NULL
	,[Duration ] nvarchar(MAX) NULL
	,[Days of the week ] nvarchar(MAX) NULL
	,[Contract capacity ] nvarchar(MAX) NULL
	,[Delivery capacity ] nvarchar(MAX) NULL
	,[Quantity Unit] nvarchar(MAX) NULL
	,[Price time interval quantities] nvarchar(MAX) NULL
	,[Seniority ] nvarchar(MAX) NULL
	,[Reference entity ] nvarchar(MAX) NULL
	,[Frequency of payment ] nvarchar(MAX) NULL
	,[The calculation basis ] nvarchar(MAX) NULL
	,[Series ] nvarchar(MAX) NULL
	,[Version ] nvarchar(MAX) NULL
	,[Index factor ] nvarchar(MAX) NULL
	,[Tranche ] nvarchar(MAX) NULL
	,[Attachment point ] nvarchar(MAX) NULL
	,[Detachment point ] nvarchar(MAX) NULL
	,[Value of contract] nvarchar(MAX) NULL
	,[Currency of the value] nvarchar(MAX) NULL
	,[Valuation timestamp] nvarchar(MAX) NULL
	,[Valuation type] nvarchar(MAX) NULL
	,[Collateralisation] nvarchar(MAX) NULL
	,[Collateral portfolio] nvarchar(MAX) NULL
	,[Collateral portfolio code] nvarchar(MAX) NULL
	,[Value of the collateral ] nvarchar(MAX) NULL
	,[Currency of the collateral value ] nvarchar(MAX) NULL
	,[Initial margin posted ] nvarchar(MAX) NULL
	,[Currency of the initial margin posted ] nvarchar(MAX) NULL
	,[Variation margin posted ] nvarchar(MAX) NULL
	,[Currency of the variation margins posted ] nvarchar(MAX) NULL
	,[Initial margin received ] nvarchar(MAX) NULL
	,[Currency of the initial margin received ] nvarchar(MAX) NULL
	,[Variation margin received ] nvarchar(MAX) NULL
	,[Currency of the variation margins received ] nvarchar(MAX) NULL
	,[Excess collateral posted ] nvarchar(MAX) NULL
	,[Currency of the excess collateral posted ] nvarchar(MAX) NULL
	,[Excess collateral received ] nvarchar(MAX) NULL
	,[Currency of the excess collateral received ] nvarchar(MAX) NULL
	,[Pairing Status] nvarchar(MAX) NULL
	,[Pairing Source] nvarchar(MAX) NULL
	,[Matching Status] nvarchar(MAX) NULL
	,[Reserved - Participant Use 1] nvarchar(MAX) NULL
	,[Reserved - Participant Use 2] nvarchar(MAX) NULL
	,[Reserved - Participant Use 3] nvarchar(MAX) NULL
	,[Reserved - Participant Use 4] nvarchar(MAX) NULL
	,[Reserved - Participant Use 5] nvarchar(MAX) NULL
	,[Valuation Data Submitter] nvarchar(MAX) NULL
	,[Collateral Link Data Submitter] nvarchar(MAX) NULL
	,[Collateral Value Data Submitter] nvarchar(MAX) NULL
	,[ Settlement Date 2] nvarchar(MAX) NULL
	,[Trade Party 1 - Mandatory Delegated Reporting] nvarchar(MAX) NULL
	,[Trade Party 2 - Mandatory Delegated Reporting] nvarchar(MAX) NULL
);

drop table dtcc_CO_ESMA_Daily_Trade_State_Report

select count(*) from dtcc_CO_ESMA_Daily_Trade_State_Report

select * from dtcc_CO_ESMA_Daily_Trade_State_Report
select Regulator from dtcc_CO_ESMA_Daily_Trade_State_Report




alter table dtcc_CO_ESMA_Daily_Trade_State_Report
alter column [Execution timestamp] datetime2(0)

alter table dtcc_CO_ESMA_Daily_Trade_State_Report
alter column [Reporting timestamp] datetime2(0)

alter table dtcc_CO_ESMA_Daily_Trade_State_Report
alter column [Maturity date of the underlying ] datetime2(0)

alter table dtcc_CO_ESMA_Daily_Trade_State_Report
alter column [Effective date] datetime2(0)

alter table dtcc_CO_ESMA_Daily_Trade_State_Report
alter column [Maturity date] datetime2(0)

alter table dtcc_CO_ESMA_Daily_Trade_State_Report
alter column [Termination date] datetime2(0)

alter table dtcc_CO_ESMA_Daily_Trade_State_Report
alter column [Settlement date] datetime2(0)

alter table dtcc_CO_ESMA_Daily_Trade_State_Report
alter column [Clearing timestamp] datetime2(0)

alter table dtcc_CO_ESMA_Daily_Trade_State_Report
alter column [ Settlement Date 2] datetime2(0)




	
	
	
	

             




