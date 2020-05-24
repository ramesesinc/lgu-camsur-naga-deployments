CREATE TABLE [dbo].[ztmpdev_sys_rule] (
[objid] varchar(50) NOT NULL ,
[state] varchar(25) NULL ,
[name] varchar(255) NOT NULL ,
[ruleset] varchar(50) NOT NULL ,
[rulegroup] varchar(50) NULL ,
[title] varchar(250) NULL ,
[description] text NULL ,
[salience] int NULL ,
[effectivefrom] date NULL ,
[effectiveto] date NULL ,
[dtfiled] datetime NULL ,
[user_objid] varchar(50) NULL ,
[user_name] varchar(100) NULL ,
[noloop] int NOT NULL DEFAULT ('0') ,
[_ukey] varchar(50) NOT NULL DEFAULT '' ,
PRIMARY KEY ([objid])
)
GO

CREATE TABLE [dbo].[ztmpdev_sys_rule_condition] (
[objid] varchar(50) NOT NULL ,
[parentid] varchar(50) NULL ,
[fact_name] varchar(50) NULL ,
[fact_objid] varchar(50) NULL ,
[varname] varchar(50) NULL ,
[pos] int NULL ,
[ruletext] text NULL ,
[displaytext] text NULL ,
[dynamic_datatype] varchar(50) NULL ,
[dynamic_key] varchar(50) NULL ,
[dynamic_value] varchar(50) NULL ,
[notexist] int NOT NULL DEFAULT ('0') ,
PRIMARY KEY ([objid])
)
GO

CREATE TABLE [dbo].[ztmpdev_sys_rule_condition_var] (
[objid] varchar(50) NOT NULL ,
[parentid] varchar(50) NULL ,
[ruleid] varchar(50) NULL ,
[varname] varchar(50) NULL ,
[datatype] varchar(50) NULL ,
[pos] int NULL ,
PRIMARY KEY ([objid])
)
GO

CREATE TABLE [dbo].[ztmpdev_sys_rule_condition_constraint] (
[objid] varchar(50) NOT NULL ,
[parentid] varchar(50) NULL ,
[field_objid] varchar(255) NULL ,
[fieldname] varchar(50) NULL ,
[varname] varchar(50) NULL ,
[operator_caption] varchar(50) NULL ,
[operator_symbol] varchar(50) NULL ,
[usevar] int NULL ,
[var_objid] varchar(50) NULL ,
[var_name] varchar(50) NULL ,
[decimalvalue] numeric(16,2) NULL ,
[intvalue] int NULL ,
[stringvalue] varchar(255) NULL ,
[listvalue] text NULL ,
[datevalue] date NULL ,
[pos] int NULL ,
PRIMARY KEY ([objid])
)
Go 

CREATE TABLE [dbo].[ztmpdev_sys_rule_action] (
[objid] varchar(50) NOT NULL ,
[parentid] varchar(50) NULL ,
[actiondef_objid] varchar(50) NULL ,
[actiondef_name] varchar(50) NULL ,
[pos] int NULL ,
PRIMARY KEY ([objid])
)
GO

CREATE TABLE [dbo].[ztmpdev_sys_rule_action_param] (
[objid] varchar(50) NOT NULL ,
[parentid] varchar(50) NULL ,
[actiondefparam_objid] varchar(255) NOT NULL ,
[stringvalue] varchar(255) NULL ,
[booleanvalue] int NULL ,
[var_objid] varchar(50) NULL ,
[var_name] varchar(50) NULL ,
[expr] text NULL ,
[exprtype] varchar(25) NULL ,
[pos] int NULL ,
[obj_key] varchar(50) NULL ,
[obj_value] varchar(255) NULL ,
[listvalue] text NULL ,
[lov] varchar(50) NULL ,
[rangeoption] int NULL ,
PRIMARY KEY ([objid]) 
)
go 


INSERT INTO ztmpdev_sys_rule (objid, state, name, ruleset, rulegroup, title, description, salience, effectivefrom, effectiveto, dtfiled, user_objid, user_name, noloop) VALUES ('RUL-b880e40:166bdcfa0cb:-77af', 'DEPLOYED', 'ADD_CORPORATE_CTC_BILL', 'ctcbilling', 'summary', 'ADD CORPORATE CTC BILL', NULL, '50000', NULL, NULL, '2018-10-29 11:36:40', 'USR-1b82c604:14cc29913bb:-7fec', 'ADMIN', '1');
INSERT INTO ztmpdev_sys_rule (objid, state, name, ruleset, rulegroup, title, description, salience, effectivefrom, effectiveto, dtfiled, user_objid, user_name, noloop) VALUES ('RUL6729cd8:166bdeb1f30:-5edf', 'DEPLOYED', 'ADD_CORPORATE_CTC_INTEREST', 'ctcbilling', 'summary', 'ADD CORPORATE CTC INTEREST', NULL, '1000', NULL, NULL, '2018-10-29 12:04:29', 'USR-1b82c604:14cc29913bb:-7fec', 'ADMIN', '1');
INSERT INTO ztmpdev_sys_rule (objid, state, name, ruleset, rulegroup, title, description, salience, effectivefrom, effectiveto, dtfiled, user_objid, user_name, noloop) VALUES ('RUL7ff4a1a7:164fdd7d64a:-7f02', 'DEPLOYED', 'ADD_INDIVIDUAL_CTC_BILL', 'ctcbilling', 'summary', 'ADD INDIVIDUAL CTC BILL', NULL, '1000', NULL, NULL, '2018-08-03 11:33:38', 'USR-1b82c604:14cc29913bb:-7fec', 'ADMIN', '1');
INSERT INTO ztmpdev_sys_rule (objid, state, name, ruleset, rulegroup, title, description, salience, effectivefrom, effectiveto, dtfiled, user_objid, user_name, noloop) VALUES ('RUL6729cd8:166bdeb1f30:-62a4', 'DEPLOYED', 'ADD_INDIVIDUAL_CTC_INTEREST', 'ctcbilling', 'summary', 'ADD INDIVIDUAL CTC INTEREST', NULL, '50000', NULL, NULL, '2018-10-29 12:03:09', 'USR-1b82c604:14cc29913bb:-7fec', 'ADMIN', '1');
INSERT INTO ztmpdev_sys_rule (objid, state, name, ruleset, rulegroup, title, description, salience, effectivefrom, effectiveto, dtfiled, user_objid, user_name, noloop) VALUES ('RUL17bb3bc0:16826bf0d4e:-7852', 'DEPLOYED', 'CORPORATE_CTC_ADDITIONAL', 'ctcbilling', 'post-compute-bill', 'CORPORATE CTC ADDITIONAL', NULL, '50000', NULL, NULL, '2019-01-07 14:04:34', 'USR-ADMIN', 'ADMIN', '1');
INSERT INTO ztmpdev_sys_rule (objid, state, name, ruleset, rulegroup, title, description, salience, effectivefrom, effectiveto, dtfiled, user_objid, user_name, noloop) VALUES ('RUL-b880e40:166bdcfa0cb:-7c8f', 'DEPLOYED', 'CTC_CORPORATE', 'ctcbilling', 'compute-bill', 'CTC_CORPORATE', NULL, '50000', NULL, NULL, '2018-10-29 11:32:08', 'USR-1b82c604:14cc29913bb:-7fec', 'ADMIN', '1');
INSERT INTO ztmpdev_sys_rule (objid, state, name, ruleset, rulegroup, title, description, salience, effectivefrom, effectiveto, dtfiled, user_objid, user_name, noloop) VALUES ('RUL48d0f0c4:169510e76b2:-59e1', 'DEPLOYED', 'CTC_CORPORATE_PENALTY', 'ctcbilling', 'compute-interest', 'CTC_CORPORATE_PENALTY', NULL, '50000', NULL, NULL, '2019-03-06 12:08:22', 'USR622c909a:16775fcbb4c:-7e57', 'JRCASTAÑEDA', '1');
INSERT INTO ztmpdev_sys_rule (objid, state, name, ruleset, rulegroup, title, description, salience, effectivefrom, effectiveto, dtfiled, user_objid, user_name, noloop) VALUES ('RUL263c49c0:169b23c4172:-441e', 'DEPLOYED', 'CTC_CORPORATE_PENALTY_COPY', 'ctcbilling', 'compute-interest', 'CTC_CORPORATE_PENALTY', NULL, '50000', NULL, NULL, '2019-03-25 15:31:13', 'USR622c909a:16775fcbb4c:-7e57', 'JRCASTAÑEDA', '1');
INSERT INTO ztmpdev_sys_rule (objid, state, name, ruleset, rulegroup, title, description, salience, effectivefrom, effectiveto, dtfiled, user_objid, user_name, noloop) VALUES ('RUL-476b5bbe:1641bbe1a54:-7ebc', 'DEPLOYED', 'CTC_INDIVIDUAL', 'ctcbilling', 'compute-bill', 'CTC_INDIVIDUAL', NULL, '50000', NULL, NULL, '2018-06-20 14:06:43', 'USR-1b82c604:14cc29913bb:-7fec', 'ADMIN', '1');
INSERT INTO ztmpdev_sys_rule (objid, state, name, ruleset, rulegroup, title, description, salience, effectivefrom, effectiveto, dtfiled, user_objid, user_name, noloop) VALUES ('RUL6729cd8:166bdeb1f30:-7ef6', 'DEPLOYED', 'CTC_INDIVIDUAL_PENALTY', 'ctcbilling', 'compute-interest', 'CTC INDIVIDUAL PENALTY', NULL, '50000', NULL, NULL, '2018-10-29 11:44:53', 'USR-1b82c604:14cc29913bb:-7fec', 'ADMIN', '1');
INSERT INTO ztmpdev_sys_rule (objid, state, name, ruleset, rulegroup, title, description, salience, effectivefrom, effectiveto, dtfiled, user_objid, user_name, noloop) VALUES ('RUL6729cd8:166bdeb1f30:-73c5', 'DEPLOYED', 'INDIVIDUAL_CTC_ADDITIONAL', 'ctcbilling', 'post-compute-bill', 'INDIVIDUAL CTC ADDITIONAL', NULL, '50000', NULL, NULL, '2018-10-29 11:52:30', 'USR-1b82c604:14cc29913bb:-7fec', 'ADMIN', '1');
INSERT INTO ztmpdev_sys_rule (objid, state, name, ruleset, rulegroup, title, description, salience, effectivefrom, effectiveto, dtfiled, user_objid, user_name, noloop) VALUES ('RUL4c78a9d4:16816354aab:-752c', 'DEPLOYED', 'INDIVIDUAL_CTC_SENIOR', 'ctcbilling', 'post-compute-bill', 'INDIVIDUAL_CTC_SENIOR', NULL, '50000', NULL, NULL, '2019-01-04 01:07:16', 'USR-ADMIN', 'ADMIN', '1');
INSERT INTO ztmpdev_sys_rule (objid, state, name, ruleset, rulegroup, title, description, salience, effectivefrom, effectiveto, dtfiled, user_objid, user_name, noloop) VALUES ('RUL4c78a9d4:16816354aab:-7118', 'DEPLOYED', 'INDIVIDUAL_CTC_STUDENT', 'ctcbilling', 'post-compute-bill', 'INDIVIDUAL_CTC_STUDENT', NULL, '50000', NULL, NULL, '2019-01-04 01:10:27', 'USR-ADMIN', 'ADMIN', '1');

update ztmpdev_sys_rule set state = 'DRAFT', user_objid = 'USR67fa99b:145d020d617:-7ff1', user_name = 'ADMIN' ; 

INSERT INTO ztmpdev_sys_rule_condition (objid, parentid, fact_name, fact_objid, varname, pos, ruletext, displaytext, dynamic_datatype, dynamic_key, dynamic_value, notexist) VALUES ('RCOND-b880e40:166bdcfa0cb:-7749', 'RUL-b880e40:166bdcfa0cb:-77af', 'ctc.facts.CorporateCTC', 'ctc.facts.CorporateCTC', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO ztmpdev_sys_rule_condition (objid, parentid, fact_name, fact_objid, varname, pos, ruletext, displaytext, dynamic_datatype, dynamic_key, dynamic_value, notexist) VALUES ('RCOND6729cd8:166bdeb1f30:-5e3b', 'RUL6729cd8:166bdeb1f30:-5edf', 'ctc.facts.CorporateCTC', 'ctc.facts.CorporateCTC', NULL, '1', NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO ztmpdev_sys_rule_condition (objid, parentid, fact_name, fact_objid, varname, pos, ruletext, displaytext, dynamic_datatype, dynamic_key, dynamic_value, notexist) VALUES ('RCOND7ff4a1a7:164fdd7d64a:-7ba1', 'RUL7ff4a1a7:164fdd7d64a:-7f02', 'ctc.facts.IndividualCTC', 'ctc.facts.IndividualCTC', 'ICTC', '0', NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO ztmpdev_sys_rule_condition (objid, parentid, fact_name, fact_objid, varname, pos, ruletext, displaytext, dynamic_datatype, dynamic_key, dynamic_value, notexist) VALUES ('RCOND6729cd8:166bdeb1f30:-6250', 'RUL6729cd8:166bdeb1f30:-62a4', 'ctc.facts.IndividualCTC', 'ctc.facts.IndividualCTC', 'ICTC', '0', NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO ztmpdev_sys_rule_condition (objid, parentid, fact_name, fact_objid, varname, pos, ruletext, displaytext, dynamic_datatype, dynamic_key, dynamic_value, notexist) VALUES ('RCOND17bb3bc0:16826bf0d4e:-7800', 'RUL17bb3bc0:16826bf0d4e:-7852', 'ctc.facts.CorporateCTC', 'ctc.facts.CorporateCTC', 'CCTC', '1', NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO ztmpdev_sys_rule_condition (objid, parentid, fact_name, fact_objid, varname, pos, ruletext, displaytext, dynamic_datatype, dynamic_key, dynamic_value, notexist) VALUES ('RCOND-b880e40:166bdcfa0cb:-7c3d', 'RUL-b880e40:166bdcfa0cb:-7c8f', 'ctc.facts.CorporateCTC', 'ctc.facts.CorporateCTC', 'CORPCTC', '0', NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO ztmpdev_sys_rule_condition (objid, parentid, fact_name, fact_objid, varname, pos, ruletext, displaytext, dynamic_datatype, dynamic_key, dynamic_value, notexist) VALUES ('RCb9e61ab:1694b473870:6035', 'RUL48d0f0c4:169510e76b2:-59e1', 'com.rameses.rules.common.CurrentDate', 'com.rameses.rules.common.CurrentDate', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO ztmpdev_sys_rule_condition (objid, parentid, fact_name, fact_objid, varname, pos, ruletext, displaytext, dynamic_datatype, dynamic_key, dynamic_value, notexist) VALUES ('RCOND48d0f0c4:169510e76b2:-52c2', 'RUL48d0f0c4:169510e76b2:-59e1', 'ctc.facts.CorporateCTC', 'ctc.facts.CorporateCTC', 'CCTC', '1', NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO ztmpdev_sys_rule_condition (objid, parentid, fact_name, fact_objid, varname, pos, ruletext, displaytext, dynamic_datatype, dynamic_key, dynamic_value, notexist) VALUES ('RC29139531:169b3381f4d:-14cc', 'RUL263c49c0:169b23c4172:-441e', 'ctc.facts.CorporateCTC', 'ctc.facts.CorporateCTC', 'CCTC', '1', NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO ztmpdev_sys_rule_condition (objid, parentid, fact_name, fact_objid, varname, pos, ruletext, displaytext, dynamic_datatype, dynamic_key, dynamic_value, notexist) VALUES ('RCOND263c49c0:169b23c4172:-427f', 'RUL263c49c0:169b23c4172:-441e', 'ctc.facts.CorporateCTC', 'ctc.facts.CorporateCTC', NULL, '2', NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO ztmpdev_sys_rule_condition (objid, parentid, fact_name, fact_objid, varname, pos, ruletext, displaytext, dynamic_datatype, dynamic_key, dynamic_value, notexist) VALUES ('RCOND-476b5bbe:1641bbe1a54:-7e8c', 'RUL-476b5bbe:1641bbe1a54:-7ebc', 'ctc.facts.IndividualCTC', 'ctc.facts.IndividualCTC', 'ICTC', '0', NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO ztmpdev_sys_rule_condition (objid, parentid, fact_name, fact_objid, varname, pos, ruletext, displaytext, dynamic_datatype, dynamic_key, dynamic_value, notexist) VALUES ('RCOND6729cd8:166bdeb1f30:-7dba', 'RUL6729cd8:166bdeb1f30:-7ef6', 'ctc.facts.IndividualCTC', 'ctc.facts.IndividualCTC', 'ICTC', '1', NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO ztmpdev_sys_rule_condition (objid, parentid, fact_name, fact_objid, varname, pos, ruletext, displaytext, dynamic_datatype, dynamic_key, dynamic_value, notexist) VALUES ('RCOND6729cd8:166bdeb1f30:-7eb8', 'RUL6729cd8:166bdeb1f30:-7ef6', 'com.rameses.rules.common.CurrentDate', 'com.rameses.rules.common.CurrentDate', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO ztmpdev_sys_rule_condition (objid, parentid, fact_name, fact_objid, varname, pos, ruletext, displaytext, dynamic_datatype, dynamic_key, dynamic_value, notexist) VALUES ('RCOND6729cd8:166bdeb1f30:-6ad4', 'RUL6729cd8:166bdeb1f30:-73c5', 'ctc.facts.IndividualCTC', 'ctc.facts.IndividualCTC', 'ICTC', '0', NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO ztmpdev_sys_rule_condition (objid, parentid, fact_name, fact_objid, varname, pos, ruletext, displaytext, dynamic_datatype, dynamic_key, dynamic_value, notexist) VALUES ('RC4d8d2fa0:168164ac044:-689f', 'RUL4c78a9d4:16816354aab:-752c', 'ctc.facts.IndividualCTC', 'ctc.facts.IndividualCTC', 'ICTC', '0', NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO ztmpdev_sys_rule_condition (objid, parentid, fact_name, fact_objid, varname, pos, ruletext, displaytext, dynamic_datatype, dynamic_key, dynamic_value, notexist) VALUES ('RC4d8d2fa0:168164ac044:-66ac', 'RUL4c78a9d4:16816354aab:-7118', 'ctc.facts.IndividualCTC', 'ctc.facts.IndividualCTC', 'ICTC', '0', NULL, NULL, NULL, NULL, NULL, '0');

INSERT INTO ztmpdev_sys_rule_condition_var (objid, parentid, ruleid, varname, datatype, pos) VALUES ('RCONST-b880e40:166bdcfa0cb:-76dc', 'RCOND-b880e40:166bdcfa0cb:-7749', 'RUL-b880e40:166bdcfa0cb:-77af', 'TOTALTAX', 'decimal', '0');
INSERT INTO ztmpdev_sys_rule_condition_var (objid, parentid, ruleid, varname, datatype, pos) VALUES ('RCONST6729cd8:166bdeb1f30:-5dbe', 'RCOND6729cd8:166bdeb1f30:-5e3b', 'RUL6729cd8:166bdeb1f30:-5edf', 'INTEREST', 'decimal', '0');
INSERT INTO ztmpdev_sys_rule_condition_var (objid, parentid, ruleid, varname, datatype, pos) VALUES ('RCOND7ff4a1a7:164fdd7d64a:-7ba1', 'RCOND7ff4a1a7:164fdd7d64a:-7ba1', 'RUL7ff4a1a7:164fdd7d64a:-7f02', 'ICTC', 'ctc.facts.IndividualCTC', '0');
INSERT INTO ztmpdev_sys_rule_condition_var (objid, parentid, ruleid, varname, datatype, pos) VALUES ('RCONST7ff4a1a7:164fdd7d64a:-750e', 'RCOND7ff4a1a7:164fdd7d64a:-7ba1', 'RUL7ff4a1a7:164fdd7d64a:-7f02', 'TOTALTAX', 'decimal', '0');
INSERT INTO ztmpdev_sys_rule_condition_var (objid, parentid, ruleid, varname, datatype, pos) VALUES ('RCOND6729cd8:166bdeb1f30:-6250', 'RCOND6729cd8:166bdeb1f30:-6250', 'RUL6729cd8:166bdeb1f30:-62a4', 'ICTC', 'ctc.facts.IndividualCTC', '0');
INSERT INTO ztmpdev_sys_rule_condition_var (objid, parentid, ruleid, varname, datatype, pos) VALUES ('RCONST6729cd8:166bdeb1f30:-60dc', 'RCOND6729cd8:166bdeb1f30:-6250', 'RUL6729cd8:166bdeb1f30:-62a4', 'INTEREST', 'decimal', '0');
INSERT INTO ztmpdev_sys_rule_condition_var (objid, parentid, ruleid, varname, datatype, pos) VALUES ('RCOND17bb3bc0:16826bf0d4e:-7800', 'RCOND17bb3bc0:16826bf0d4e:-7800', 'RUL17bb3bc0:16826bf0d4e:-7852', 'CCTC', 'ctc.facts.CorporateCTC', '1');
INSERT INTO ztmpdev_sys_rule_condition_var (objid, parentid, ruleid, varname, datatype, pos) VALUES ('RCOND-b880e40:166bdcfa0cb:-7c3d', 'RCOND-b880e40:166bdcfa0cb:-7c3d', 'RUL-b880e40:166bdcfa0cb:-7c8f', 'CORPCTC', 'ctc.facts.CorporateCTC', '0');
INSERT INTO ztmpdev_sys_rule_condition_var (objid, parentid, ruleid, varname, datatype, pos) VALUES ('RCONST-b880e40:166bdcfa0cb:-7b6d', 'RCOND-b880e40:166bdcfa0cb:-7c3d', 'RUL-b880e40:166bdcfa0cb:-7c8f', 'RPAV', 'decimal', '1');
INSERT INTO ztmpdev_sys_rule_condition_var (objid, parentid, ruleid, varname, datatype, pos) VALUES ('RCONST-b880e40:166bdcfa0cb:-7bdf', 'RCOND-b880e40:166bdcfa0cb:-7c3d', 'RUL-b880e40:166bdcfa0cb:-7c8f', 'BGROSS', 'decimal', '0');
INSERT INTO ztmpdev_sys_rule_condition_var (objid, parentid, ruleid, varname, datatype, pos) VALUES ('RCCb9e61ab:1694b473870:6036', 'RCb9e61ab:1694b473870:6035', 'RUL48d0f0c4:169510e76b2:-59e1', 'CYEAR', 'integer', '2');
INSERT INTO ztmpdev_sys_rule_condition_var (objid, parentid, ruleid, varname, datatype, pos) VALUES ('RCCb9e61ab:1694b473870:6037', 'RCb9e61ab:1694b473870:6035', 'RUL48d0f0c4:169510e76b2:-59e1', 'CDATE', 'date', '1');
INSERT INTO ztmpdev_sys_rule_condition_var (objid, parentid, ruleid, varname, datatype, pos) VALUES ('RCCb9e61ab:1694b473870:6038', 'RCb9e61ab:1694b473870:6035', 'RUL48d0f0c4:169510e76b2:-59e1', 'CMONTH', 'integer', '0');
INSERT INTO ztmpdev_sys_rule_condition_var (objid, parentid, ruleid, varname, datatype, pos) VALUES ('RCOND48d0f0c4:169510e76b2:-52c2', 'RCOND48d0f0c4:169510e76b2:-52c2', 'RUL48d0f0c4:169510e76b2:-59e1', 'CCTC', 'ctc.facts.CorporateCTC', '1');
INSERT INTO ztmpdev_sys_rule_condition_var (objid, parentid, ruleid, varname, datatype, pos) VALUES ('RCONST48d0f0c4:169510e76b2:-5248', 'RCOND48d0f0c4:169510e76b2:-52c2', 'RUL48d0f0c4:169510e76b2:-59e1', 'TOTALTAX', 'decimal', '0');
INSERT INTO ztmpdev_sys_rule_condition_var (objid, parentid, ruleid, varname, datatype, pos) VALUES ('RC29139531:169b3381f4d:-14cc', 'RC29139531:169b3381f4d:-14cc', 'RUL263c49c0:169b23c4172:-441e', 'CCTC', 'ctc.facts.CorporateCTC', '1');
INSERT INTO ztmpdev_sys_rule_condition_var (objid, parentid, ruleid, varname, datatype, pos) VALUES ('RCC29139531:169b3381f4d:-14cb', 'RC29139531:169b3381f4d:-14cc', 'RUL263c49c0:169b23c4172:-441e', 'TOTALTAX', 'decimal', '0');
INSERT INTO ztmpdev_sys_rule_condition_var (objid, parentid, ruleid, varname, datatype, pos) VALUES ('RCOND-476b5bbe:1641bbe1a54:-7e8c', 'RCOND-476b5bbe:1641bbe1a54:-7e8c', 'RUL-476b5bbe:1641bbe1a54:-7ebc', 'ICTC', 'ctc.facts.IndividualCTC', '0');
INSERT INTO ztmpdev_sys_rule_condition_var (objid, parentid, ruleid, varname, datatype, pos) VALUES ('RCONST-476b5bbe:1641bbe1a54:-7cd4', 'RCOND-476b5bbe:1641bbe1a54:-7e8c', 'RUL-476b5bbe:1641bbe1a54:-7ebc', 'PI', 'decimal', '2');
INSERT INTO ztmpdev_sys_rule_condition_var (objid, parentid, ruleid, varname, datatype, pos) VALUES ('RCONST-476b5bbe:1641bbe1a54:-7d87', 'RCOND-476b5bbe:1641bbe1a54:-7e8c', 'RUL-476b5bbe:1641bbe1a54:-7ebc', 'BGROSS', 'decimal', '1');
INSERT INTO ztmpdev_sys_rule_condition_var (objid, parentid, ruleid, varname, datatype, pos) VALUES ('RCONST-476b5bbe:1641bbe1a54:-7e1d', 'RCOND-476b5bbe:1641bbe1a54:-7e8c', 'RUL-476b5bbe:1641bbe1a54:-7ebc', 'SALARY', 'decimal', '0');
INSERT INTO ztmpdev_sys_rule_condition_var (objid, parentid, ruleid, varname, datatype, pos) VALUES ('RCOND6729cd8:166bdeb1f30:-7dba', 'RCOND6729cd8:166bdeb1f30:-7dba', 'RUL6729cd8:166bdeb1f30:-7ef6', 'ICTC', 'ctc.facts.IndividualCTC', '1');
INSERT INTO ztmpdev_sys_rule_condition_var (objid, parentid, ruleid, varname, datatype, pos) VALUES ('RCONST6729cd8:166bdeb1f30:-7c22', 'RCOND6729cd8:166bdeb1f30:-7dba', 'RUL6729cd8:166bdeb1f30:-7ef6', 'TOTALTAX', 'decimal', '0');
INSERT INTO ztmpdev_sys_rule_condition_var (objid, parentid, ruleid, varname, datatype, pos) VALUES ('RCONST-7ceb2c8b:167a1b28437:-7987', 'RCOND6729cd8:166bdeb1f30:-7eb8', 'RUL6729cd8:166bdeb1f30:-7ef6', 'CYEAR', 'integer', '2');
INSERT INTO ztmpdev_sys_rule_condition_var (objid, parentid, ruleid, varname, datatype, pos) VALUES ('RCONST-7ceb2c8b:167a1b28437:-7c8e', 'RCOND6729cd8:166bdeb1f30:-7eb8', 'RUL6729cd8:166bdeb1f30:-7ef6', 'CDATE', 'date', '1');
INSERT INTO ztmpdev_sys_rule_condition_var (objid, parentid, ruleid, varname, datatype, pos) VALUES ('RCONST6729cd8:166bdeb1f30:-7e85', 'RCOND6729cd8:166bdeb1f30:-7eb8', 'RUL6729cd8:166bdeb1f30:-7ef6', 'CMONTH', 'integer', '0');
INSERT INTO ztmpdev_sys_rule_condition_var (objid, parentid, ruleid, varname, datatype, pos) VALUES ('RCOND6729cd8:166bdeb1f30:-6ad4', 'RCOND6729cd8:166bdeb1f30:-6ad4', 'RUL6729cd8:166bdeb1f30:-73c5', 'ICTC', 'ctc.facts.IndividualCTC', '0');
INSERT INTO ztmpdev_sys_rule_condition_var (objid, parentid, ruleid, varname, datatype, pos) VALUES ('RC4d8d2fa0:168164ac044:-689f', 'RC4d8d2fa0:168164ac044:-689f', 'RUL4c78a9d4:16816354aab:-752c', 'ICTC', 'ctc.facts.IndividualCTC', '0');
INSERT INTO ztmpdev_sys_rule_condition_var (objid, parentid, ruleid, varname, datatype, pos) VALUES ('RC4d8d2fa0:168164ac044:-66ac', 'RC4d8d2fa0:168164ac044:-66ac', 'RUL4c78a9d4:16816354aab:-7118', 'ICTC', 'ctc.facts.IndividualCTC', '0');

INSERT INTO ztmpdev_sys_rule_condition_constraint (objid, parentid, field_objid, fieldname, varname, operator_caption, operator_symbol, usevar, var_objid, var_name, decimalvalue, intvalue, stringvalue, listvalue, datevalue, pos) VALUES ('RCONST-b880e40:166bdcfa0cb:-76dc', 'RCOND-b880e40:166bdcfa0cb:-7749', 'ctc.facts.CorporateCTC.totaltax', 'totaltax', 'TOTALTAX', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO ztmpdev_sys_rule_condition_constraint (objid, parentid, field_objid, fieldname, varname, operator_caption, operator_symbol, usevar, var_objid, var_name, decimalvalue, intvalue, stringvalue, listvalue, datevalue, pos) VALUES ('RCONST6729cd8:166bdeb1f30:-5dbe', 'RCOND6729cd8:166bdeb1f30:-5e3b', 'ctc.facts.CorporateCTC.interest', 'interest', 'INTEREST', 'greater than', '>', NULL, NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0');
INSERT INTO ztmpdev_sys_rule_condition_constraint (objid, parentid, field_objid, fieldname, varname, operator_caption, operator_symbol, usevar, var_objid, var_name, decimalvalue, intvalue, stringvalue, listvalue, datevalue, pos) VALUES ('RCONST7ff4a1a7:164fdd7d64a:-750e', 'RCOND7ff4a1a7:164fdd7d64a:-7ba1', 'ctc.facts.IndividualCTC.totaltax', 'totaltax', 'TOTALTAX', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO ztmpdev_sys_rule_condition_constraint (objid, parentid, field_objid, fieldname, varname, operator_caption, operator_symbol, usevar, var_objid, var_name, decimalvalue, intvalue, stringvalue, listvalue, datevalue, pos) VALUES ('RCONST6729cd8:166bdeb1f30:-60dc', 'RCOND6729cd8:166bdeb1f30:-6250', 'ctc.facts.IndividualCTC.interest', 'interest', 'INTEREST', 'greater than', '>', NULL, NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0');
INSERT INTO ztmpdev_sys_rule_condition_constraint (objid, parentid, field_objid, fieldname, varname, operator_caption, operator_symbol, usevar, var_objid, var_name, decimalvalue, intvalue, stringvalue, listvalue, datevalue, pos) VALUES ('RCONST17bb3bc0:16826bf0d4e:-77be', 'RCOND17bb3bc0:16826bf0d4e:-7800', 'ctc.facts.CorporateCTC.additional', 'additional', NULL, 'is true', '== true', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO ztmpdev_sys_rule_condition_constraint (objid, parentid, field_objid, fieldname, varname, operator_caption, operator_symbol, usevar, var_objid, var_name, decimalvalue, intvalue, stringvalue, listvalue, datevalue, pos) VALUES ('RCONST-b880e40:166bdcfa0cb:-7b6d', 'RCOND-b880e40:166bdcfa0cb:-7c3d', 'ctc.facts.CorporateCTC.realpropertyav', 'realpropertyav', 'RPAV', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1');
INSERT INTO ztmpdev_sys_rule_condition_constraint (objid, parentid, field_objid, fieldname, varname, operator_caption, operator_symbol, usevar, var_objid, var_name, decimalvalue, intvalue, stringvalue, listvalue, datevalue, pos) VALUES ('RCONST-b880e40:166bdcfa0cb:-7bdf', 'RCOND-b880e40:166bdcfa0cb:-7c3d', 'ctc.facts.CorporateCTC.businessgross', 'businessgross', 'BGROSS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO ztmpdev_sys_rule_condition_constraint (objid, parentid, field_objid, fieldname, varname, operator_caption, operator_symbol, usevar, var_objid, var_name, decimalvalue, intvalue, stringvalue, listvalue, datevalue, pos) VALUES ('RCCb9e61ab:1694b473870:6036', 'RCb9e61ab:1694b473870:6035', 'com.rameses.rules.common.CurrentDate.year', 'year', 'CYEAR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2');
INSERT INTO ztmpdev_sys_rule_condition_constraint (objid, parentid, field_objid, fieldname, varname, operator_caption, operator_symbol, usevar, var_objid, var_name, decimalvalue, intvalue, stringvalue, listvalue, datevalue, pos) VALUES ('RCCb9e61ab:1694b473870:6037', 'RCb9e61ab:1694b473870:6035', 'com.rameses.rules.common.CurrentDate.date', 'date', 'CDATE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1');
INSERT INTO ztmpdev_sys_rule_condition_constraint (objid, parentid, field_objid, fieldname, varname, operator_caption, operator_symbol, usevar, var_objid, var_name, decimalvalue, intvalue, stringvalue, listvalue, datevalue, pos) VALUES ('RCCb9e61ab:1694b473870:6038', 'RCb9e61ab:1694b473870:6035', 'com.rameses.rules.common.CurrentDate.month', 'month', 'CMONTH', 'greater than or equal to', '>=', NULL, NULL, NULL, NULL, '3', NULL, NULL, NULL, '0');
INSERT INTO ztmpdev_sys_rule_condition_constraint (objid, parentid, field_objid, fieldname, varname, operator_caption, operator_symbol, usevar, var_objid, var_name, decimalvalue, intvalue, stringvalue, listvalue, datevalue, pos) VALUES ('RCONST48d0f0c4:169510e76b2:-5248', 'RCOND48d0f0c4:169510e76b2:-52c2', 'ctc.facts.CorporateCTC.totaltax', 'totaltax', 'TOTALTAX', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO ztmpdev_sys_rule_condition_constraint (objid, parentid, field_objid, fieldname, varname, operator_caption, operator_symbol, usevar, var_objid, var_name, decimalvalue, intvalue, stringvalue, listvalue, datevalue, pos) VALUES ('RCC29139531:169b3381f4d:-14cb', 'RC29139531:169b3381f4d:-14cc', 'ctc.facts.CorporateCTC.totaltax', 'totaltax', 'TOTALTAX', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO ztmpdev_sys_rule_condition_constraint (objid, parentid, field_objid, fieldname, varname, operator_caption, operator_symbol, usevar, var_objid, var_name, decimalvalue, intvalue, stringvalue, listvalue, datevalue, pos) VALUES ('RCONST263c49c0:169b23c4172:-4229', 'RCOND263c49c0:169b23c4172:-427f', 'ctc.facts.CorporateCTC.newbusiness', 'newbusiness', NULL, 'is true', '== true', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO ztmpdev_sys_rule_condition_constraint (objid, parentid, field_objid, fieldname, varname, operator_caption, operator_symbol, usevar, var_objid, var_name, decimalvalue, intvalue, stringvalue, listvalue, datevalue, pos) VALUES ('RCONST-476b5bbe:1641bbe1a54:-7cd4', 'RCOND-476b5bbe:1641bbe1a54:-7e8c', 'ctc.facts.IndividualCTC.propertyincome', 'propertyincome', 'PI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2');
INSERT INTO ztmpdev_sys_rule_condition_constraint (objid, parentid, field_objid, fieldname, varname, operator_caption, operator_symbol, usevar, var_objid, var_name, decimalvalue, intvalue, stringvalue, listvalue, datevalue, pos) VALUES ('RCONST-476b5bbe:1641bbe1a54:-7d87', 'RCOND-476b5bbe:1641bbe1a54:-7e8c', 'ctc.facts.IndividualCTC.businessgross', 'businessgross', 'BGROSS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1');
INSERT INTO ztmpdev_sys_rule_condition_constraint (objid, parentid, field_objid, fieldname, varname, operator_caption, operator_symbol, usevar, var_objid, var_name, decimalvalue, intvalue, stringvalue, listvalue, datevalue, pos) VALUES ('RCONST-476b5bbe:1641bbe1a54:-7e1d', 'RCOND-476b5bbe:1641bbe1a54:-7e8c', 'ctc.facts.IndividualCTC.annualsalary', 'annualsalary', 'SALARY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO ztmpdev_sys_rule_condition_constraint (objid, parentid, field_objid, fieldname, varname, operator_caption, operator_symbol, usevar, var_objid, var_name, decimalvalue, intvalue, stringvalue, listvalue, datevalue, pos) VALUES ('RCONST6729cd8:166bdeb1f30:-7c22', 'RCOND6729cd8:166bdeb1f30:-7dba', 'ctc.facts.IndividualCTC.totaltax', 'totaltax', 'TOTALTAX', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO ztmpdev_sys_rule_condition_constraint (objid, parentid, field_objid, fieldname, varname, operator_caption, operator_symbol, usevar, var_objid, var_name, decimalvalue, intvalue, stringvalue, listvalue, datevalue, pos) VALUES ('RCONST-7ceb2c8b:167a1b28437:-7987', 'RCOND6729cd8:166bdeb1f30:-7eb8', 'com.rameses.rules.common.CurrentDate.year', 'year', 'CYEAR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2');
INSERT INTO ztmpdev_sys_rule_condition_constraint (objid, parentid, field_objid, fieldname, varname, operator_caption, operator_symbol, usevar, var_objid, var_name, decimalvalue, intvalue, stringvalue, listvalue, datevalue, pos) VALUES ('RCONST-7ceb2c8b:167a1b28437:-7c8e', 'RCOND6729cd8:166bdeb1f30:-7eb8', 'com.rameses.rules.common.CurrentDate.date', 'date', 'CDATE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1');
INSERT INTO ztmpdev_sys_rule_condition_constraint (objid, parentid, field_objid, fieldname, varname, operator_caption, operator_symbol, usevar, var_objid, var_name, decimalvalue, intvalue, stringvalue, listvalue, datevalue, pos) VALUES ('RCONST6729cd8:166bdeb1f30:-7e85', 'RCOND6729cd8:166bdeb1f30:-7eb8', 'com.rameses.rules.common.CurrentDate.month', 'month', 'CMONTH', 'greater than or equal to', '>=', NULL, NULL, NULL, NULL, '3', NULL, NULL, NULL, '0');
INSERT INTO ztmpdev_sys_rule_condition_constraint (objid, parentid, field_objid, fieldname, varname, operator_caption, operator_symbol, usevar, var_objid, var_name, decimalvalue, intvalue, stringvalue, listvalue, datevalue, pos) VALUES ('RCONST6729cd8:166bdeb1f30:-6a60', 'RCOND6729cd8:166bdeb1f30:-6ad4', 'ctc.facts.IndividualCTC.additional', 'additional', NULL, 'is true', '== true', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO ztmpdev_sys_rule_condition_constraint (objid, parentid, field_objid, fieldname, varname, operator_caption, operator_symbol, usevar, var_objid, var_name, decimalvalue, intvalue, stringvalue, listvalue, datevalue, pos) VALUES ('RCONST4c78a9d4:16816354aab:-5e23', 'RC4d8d2fa0:168164ac044:-689f', 'ctc.facts.IndividualCTC.businessgross', 'businessgross', NULL, 'less than or equal to', '<=', NULL, NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '1');
INSERT INTO ztmpdev_sys_rule_condition_constraint (objid, parentid, field_objid, fieldname, varname, operator_caption, operator_symbol, usevar, var_objid, var_name, decimalvalue, intvalue, stringvalue, listvalue, datevalue, pos) VALUES ('RCONST4c78a9d4:16816354aab:-7423', 'RC4d8d2fa0:168164ac044:-689f', 'ctc.facts.IndividualCTC.age', 'age', NULL, 'greater than or equal to', '>=', NULL, NULL, NULL, NULL, '70', NULL, NULL, NULL, '0');
INSERT INTO ztmpdev_sys_rule_condition_constraint (objid, parentid, field_objid, fieldname, varname, operator_caption, operator_symbol, usevar, var_objid, var_name, decimalvalue, intvalue, stringvalue, listvalue, datevalue, pos) VALUES ('RCONST4c78a9d4:16816354aab:-6fc3', 'RC4d8d2fa0:168164ac044:-66ac', 'ctc.facts.IndividualCTC.profession', 'profession', NULL, 'equal to', '==', NULL, NULL, NULL, NULL, NULL, 'STUDENT', NULL, NULL, '0');

INSERT INTO ztmpdev_sys_rule_action (objid, parentid, actiondef_objid, actiondef_name, pos) VALUES ('RACT-b880e40:166bdcfa0cb:-7690', 'RUL-b880e40:166bdcfa0cb:-77af', 'treasury.actions.AddBillItem', 'add-billitem', '0');
INSERT INTO ztmpdev_sys_rule_action (objid, parentid, actiondef_objid, actiondef_name, pos) VALUES ('RAf84726b:166bdea1875:-7fbc', 'RUL6729cd8:166bdeb1f30:-5edf', 'treasury.actions.AddBillItem', 'add-billitem', '0');
INSERT INTO ztmpdev_sys_rule_action (objid, parentid, actiondef_objid, actiondef_name, pos) VALUES ('RACT7ff4a1a7:164fdd7d64a:-73e7', 'RUL7ff4a1a7:164fdd7d64a:-7f02', 'treasury.actions.AddBillItem', 'add-billitem', '0');
INSERT INTO ztmpdev_sys_rule_action (objid, parentid, actiondef_objid, actiondef_name, pos) VALUES ('RACT6729cd8:166bdeb1f30:-5fb2', 'RUL6729cd8:166bdeb1f30:-62a4', 'treasury.actions.AddBillItem', 'add-billitem', '0');
INSERT INTO ztmpdev_sys_rule_action (objid, parentid, actiondef_objid, actiondef_name, pos) VALUES ('RACT17bb3bc0:16826bf0d4e:-7640', 'RUL17bb3bc0:16826bf0d4e:-7852', 'treasury.actions.UpdateFieldValue', 'update-field-value', '0');
INSERT INTO ztmpdev_sys_rule_action (objid, parentid, actiondef_objid, actiondef_name, pos) VALUES ('RACT-b880e40:166bdcfa0cb:-786e', 'RUL-b880e40:166bdcfa0cb:-7c8f', 'treasury.actions.UpdateFieldValue', 'update-field-value', '0');
INSERT INTO ztmpdev_sys_rule_action (objid, parentid, actiondef_objid, actiondef_name, pos) VALUES ('RACT-b880e40:166bdcfa0cb:-797b', 'RUL-b880e40:166bdcfa0cb:-7c8f', 'treasury.actions.UpdateFieldValue', 'update-field-value', '0');
INSERT INTO ztmpdev_sys_rule_action (objid, parentid, actiondef_objid, actiondef_name, pos) VALUES ('RACT-b880e40:166bdcfa0cb:-7a4d', 'RUL-b880e40:166bdcfa0cb:-7c8f', 'treasury.actions.UpdateFieldValue', 'update-field-value', '0');
INSERT INTO ztmpdev_sys_rule_action (objid, parentid, actiondef_objid, actiondef_name, pos) VALUES ('RACT48d0f0c4:169510e76b2:-510f', 'RUL48d0f0c4:169510e76b2:-59e1', 'treasury.actions.UpdateFieldValue', 'update-field-value', '0');
INSERT INTO ztmpdev_sys_rule_action (objid, parentid, actiondef_objid, actiondef_name, pos) VALUES ('RA29139531:169b3381f4d:-14ca', 'RUL263c49c0:169b23c4172:-441e', 'treasury.actions.UpdateFieldValue', 'update-field-value', '0');
INSERT INTO ztmpdev_sys_rule_action (objid, parentid, actiondef_objid, actiondef_name, pos) VALUES ('RACT-476b5bbe:1641bbe1a54:-79cd', 'RUL-476b5bbe:1641bbe1a54:-7ebc', 'treasury.actions.UpdateFieldValue', 'update-field-value', '0');
INSERT INTO ztmpdev_sys_rule_action (objid, parentid, actiondef_objid, actiondef_name, pos) VALUES ('RACT-476b5bbe:1641bbe1a54:-7aa9', 'RUL-476b5bbe:1641bbe1a54:-7ebc', 'treasury.actions.UpdateFieldValue', 'update-field-value', '0');
INSERT INTO ztmpdev_sys_rule_action (objid, parentid, actiondef_objid, actiondef_name, pos) VALUES ('RACT-476b5bbe:1641bbe1a54:-7b87', 'RUL-476b5bbe:1641bbe1a54:-7ebc', 'treasury.actions.UpdateFieldValue', 'update-field-value', '0');
INSERT INTO ztmpdev_sys_rule_action (objid, parentid, actiondef_objid, actiondef_name, pos) VALUES ('RACT-476b5bbe:1641bbe1a54:-7c6d', 'RUL-476b5bbe:1641bbe1a54:-7ebc', 'treasury.actions.UpdateFieldValue', 'update-field-value', '0');
INSERT INTO ztmpdev_sys_rule_action (objid, parentid, actiondef_objid, actiondef_name, pos) VALUES ('RACT6729cd8:166bdeb1f30:-7a26', 'RUL6729cd8:166bdeb1f30:-7ef6', 'treasury.actions.UpdateFieldValue', 'update-field-value', '0');
INSERT INTO ztmpdev_sys_rule_action (objid, parentid, actiondef_objid, actiondef_name, pos) VALUES ('RACT6729cd8:166bdeb1f30:-6a2d', 'RUL6729cd8:166bdeb1f30:-73c5', 'treasury.actions.UpdateFieldValue', 'update-field-value', '0');
INSERT INTO ztmpdev_sys_rule_action (objid, parentid, actiondef_objid, actiondef_name, pos) VALUES ('RA4d8d2fa0:168164ac044:-689d', 'RUL4c78a9d4:16816354aab:-752c', 'treasury.actions.UpdateFieldValue', 'update-field-value', '0');
INSERT INTO ztmpdev_sys_rule_action (objid, parentid, actiondef_objid, actiondef_name, pos) VALUES ('RA4d8d2fa0:168164ac044:-66a2', 'RUL4c78a9d4:16816354aab:-7118', 'treasury.actions.UpdateFieldValue', 'update-field-value', '0');
INSERT INTO ztmpdev_sys_rule_action (objid, parentid, actiondef_objid, actiondef_name, pos) VALUES ('RA4d8d2fa0:168164ac044:-66a6', 'RUL4c78a9d4:16816354aab:-7118', 'treasury.actions.UpdateFieldValue', 'update-field-value', '0');
INSERT INTO ztmpdev_sys_rule_action (objid, parentid, actiondef_objid, actiondef_name, pos) VALUES ('RA4d8d2fa0:168164ac044:-66aa', 'RUL4c78a9d4:16816354aab:-7118', 'treasury.actions.UpdateFieldValue', 'update-field-value', '0');

INSERT INTO ztmpdev_sys_rule_action_param (objid, parentid, actiondefparam_objid, stringvalue, booleanvalue, var_objid, var_name, expr, exprtype, pos, obj_key, obj_value, listvalue, lov, rangeoption) VALUES ('RULACT-b880e40:166bdcfa0cb:-760d', 'RACT-b880e40:166bdcfa0cb:-7690', 'treasury.actions.AddBillItem.amount', NULL, NULL, NULL, NULL, 'TOTALTAX', 'expression', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO ztmpdev_sys_rule_action_param (objid, parentid, actiondefparam_objid, stringvalue, booleanvalue, var_objid, var_name, expr, exprtype, pos, obj_key, obj_value, listvalue, lov, rangeoption) VALUES ('RULACT-b880e40:166bdcfa0cb:-765a', 'RACT-b880e40:166bdcfa0cb:-7690', 'treasury.actions.AddBillItem.account', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TFA10000192', 'COMMUNITY TAX-Corporation', NULL, NULL, NULL);
INSERT INTO ztmpdev_sys_rule_action_param (objid, parentid, actiondefparam_objid, stringvalue, booleanvalue, var_objid, var_name, expr, exprtype, pos, obj_key, obj_value, listvalue, lov, rangeoption) VALUES ('RAPf84726b:166bdea1875:-7fba', 'RAf84726b:166bdea1875:-7fbc', 'treasury.actions.AddBillItem.account', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FTFA00000102', 'INTEREST-Community Tax-Corporation', NULL, NULL, NULL);
INSERT INTO ztmpdev_sys_rule_action_param (objid, parentid, actiondefparam_objid, stringvalue, booleanvalue, var_objid, var_name, expr, exprtype, pos, obj_key, obj_value, listvalue, lov, rangeoption) VALUES ('RAPf84726b:166bdea1875:-7fbb', 'RAf84726b:166bdea1875:-7fbc', 'treasury.actions.AddBillItem.amount', NULL, NULL, NULL, NULL, 'INTEREST', 'expression', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO ztmpdev_sys_rule_action_param (objid, parentid, actiondefparam_objid, stringvalue, booleanvalue, var_objid, var_name, expr, exprtype, pos, obj_key, obj_value, listvalue, lov, rangeoption) VALUES ('RULACT7ff4a1a7:164fdd7d64a:-735c', 'RACT7ff4a1a7:164fdd7d64a:-73e7', 'treasury.actions.AddBillItem.amount', NULL, NULL, NULL, NULL, 'TOTALTAX', 'expression', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO ztmpdev_sys_rule_action_param (objid, parentid, actiondefparam_objid, stringvalue, booleanvalue, var_objid, var_name, expr, exprtype, pos, obj_key, obj_value, listvalue, lov, rangeoption) VALUES ('RULACT7ff4a1a7:164fdd7d64a:-73b1', 'RACT7ff4a1a7:164fdd7d64a:-73e7', 'treasury.actions.AddBillItem.account', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TFA10000193', 'COMMUNITY TAX-Individual', NULL, NULL, NULL);
INSERT INTO ztmpdev_sys_rule_action_param (objid, parentid, actiondefparam_objid, stringvalue, booleanvalue, var_objid, var_name, expr, exprtype, pos, obj_key, obj_value, listvalue, lov, rangeoption) VALUES ('RULACT6729cd8:166bdeb1f30:-5f38', 'RACT6729cd8:166bdeb1f30:-5fb2', 'treasury.actions.AddBillItem.amount', NULL, NULL, NULL, NULL, 'INTEREST', 'expression', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO ztmpdev_sys_rule_action_param (objid, parentid, actiondefparam_objid, stringvalue, booleanvalue, var_objid, var_name, expr, exprtype, pos, obj_key, obj_value, listvalue, lov, rangeoption) VALUES ('RULACT6729cd8:166bdeb1f30:-5f7c', 'RACT6729cd8:166bdeb1f30:-5fb2', 'treasury.actions.AddBillItem.account', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TFA10000187', 'INTEREST-Community Tax', NULL, NULL, NULL);
INSERT INTO ztmpdev_sys_rule_action_param (objid, parentid, actiondefparam_objid, stringvalue, booleanvalue, var_objid, var_name, expr, exprtype, pos, obj_key, obj_value, listvalue, lov, rangeoption) VALUES ('RULACT17bb3bc0:16826bf0d4e:-75e7', 'RACT17bb3bc0:16826bf0d4e:-7640', 'treasury.actions.UpdateFieldValue.value', NULL, NULL, NULL, NULL, '0', 'expression', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO ztmpdev_sys_rule_action_param (objid, parentid, actiondefparam_objid, stringvalue, booleanvalue, var_objid, var_name, expr, exprtype, pos, obj_key, obj_value, listvalue, lov, rangeoption) VALUES ('RULACT17bb3bc0:16826bf0d4e:-7617', 'RACT17bb3bc0:16826bf0d4e:-7640', 'treasury.actions.UpdateFieldValue.fieldname', 'basictax', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO ztmpdev_sys_rule_action_param (objid, parentid, actiondefparam_objid, stringvalue, booleanvalue, var_objid, var_name, expr, exprtype, pos, obj_key, obj_value, listvalue, lov, rangeoption) VALUES ('RULACT17bb3bc0:16826bf0d4e:-762f', 'RACT17bb3bc0:16826bf0d4e:-7640', 'treasury.actions.UpdateFieldValue.object', NULL, NULL, 'RCOND17bb3bc0:16826bf0d4e:-7800', 'CCTC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO ztmpdev_sys_rule_action_param (objid, parentid, actiondefparam_objid, stringvalue, booleanvalue, var_objid, var_name, expr, exprtype, pos, obj_key, obj_value, listvalue, lov, rangeoption) VALUES ('RULACT-b880e40:166bdcfa0cb:-7800', 'RACT-b880e40:166bdcfa0cb:-786e', 'treasury.actions.UpdateFieldValue.value', NULL, NULL, NULL, NULL, '500', 'expression', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO ztmpdev_sys_rule_action_param (objid, parentid, actiondefparam_objid, stringvalue, booleanvalue, var_objid, var_name, expr, exprtype, pos, obj_key, obj_value, listvalue, lov, rangeoption) VALUES ('RULACT-b880e40:166bdcfa0cb:-7837', 'RACT-b880e40:166bdcfa0cb:-786e', 'treasury.actions.UpdateFieldValue.fieldname', 'basictax', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO ztmpdev_sys_rule_action_param (objid, parentid, actiondefparam_objid, stringvalue, booleanvalue, var_objid, var_name, expr, exprtype, pos, obj_key, obj_value, listvalue, lov, rangeoption) VALUES ('RULACT-b880e40:166bdcfa0cb:-7856', 'RACT-b880e40:166bdcfa0cb:-786e', 'treasury.actions.UpdateFieldValue.object', NULL, NULL, 'RCOND-b880e40:166bdcfa0cb:-7c3d', 'CORPCTC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO ztmpdev_sys_rule_action_param (objid, parentid, actiondefparam_objid, stringvalue, booleanvalue, var_objid, var_name, expr, exprtype, pos, obj_key, obj_value, listvalue, lov, rangeoption) VALUES ('RULACT-b880e40:166bdcfa0cb:-790b', 'RACT-b880e40:166bdcfa0cb:-797b', 'treasury.actions.UpdateFieldValue.value', NULL, NULL, NULL, NULL, 'def d = ( BGROSS / 5000 ) * 2;\nreturn @IIF(   d > 10000, 10000, d  );', 'expression', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO ztmpdev_sys_rule_action_param (objid, parentid, actiondefparam_objid, stringvalue, booleanvalue, var_objid, var_name, expr, exprtype, pos, obj_key, obj_value, listvalue, lov, rangeoption) VALUES ('RULACT-b880e40:166bdcfa0cb:-7942', 'RACT-b880e40:166bdcfa0cb:-797b', 'treasury.actions.UpdateFieldValue.fieldname', 'businessgrosstax', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO ztmpdev_sys_rule_action_param (objid, parentid, actiondefparam_objid, stringvalue, booleanvalue, var_objid, var_name, expr, exprtype, pos, obj_key, obj_value, listvalue, lov, rangeoption) VALUES ('RULACT-b880e40:166bdcfa0cb:-7961', 'RACT-b880e40:166bdcfa0cb:-797b', 'treasury.actions.UpdateFieldValue.object', NULL, NULL, 'RCOND-b880e40:166bdcfa0cb:-7c3d', 'CORPCTC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO ztmpdev_sys_rule_action_param (objid, parentid, actiondefparam_objid, stringvalue, booleanvalue, var_objid, var_name, expr, exprtype, pos, obj_key, obj_value, listvalue, lov, rangeoption) VALUES ('RULACT-b880e40:166bdcfa0cb:-79df', 'RACT-b880e40:166bdcfa0cb:-7a4d', 'treasury.actions.UpdateFieldValue.value', NULL, NULL, NULL, NULL, 'def d = ( RPAV / 5000 ) * 2;\nreturn @IIF(   d > 10000, 10000, d  );', 'expression', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO ztmpdev_sys_rule_action_param (objid, parentid, actiondefparam_objid, stringvalue, booleanvalue, var_objid, var_name, expr, exprtype, pos, obj_key, obj_value, listvalue, lov, rangeoption) VALUES ('RULACT-b880e40:166bdcfa0cb:-7a16', 'RACT-b880e40:166bdcfa0cb:-7a4d', 'treasury.actions.UpdateFieldValue.fieldname', 'propertyavtax', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO ztmpdev_sys_rule_action_param (objid, parentid, actiondefparam_objid, stringvalue, booleanvalue, var_objid, var_name, expr, exprtype, pos, obj_key, obj_value, listvalue, lov, rangeoption) VALUES ('RULACT-b880e40:166bdcfa0cb:-7a35', 'RACT-b880e40:166bdcfa0cb:-7a4d', 'treasury.actions.UpdateFieldValue.object', NULL, NULL, 'RCOND-b880e40:166bdcfa0cb:-7c3d', 'CORPCTC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO ztmpdev_sys_rule_action_param (objid, parentid, actiondefparam_objid, stringvalue, booleanvalue, var_objid, var_name, expr, exprtype, pos, obj_key, obj_value, listvalue, lov, rangeoption) VALUES ('RULACT48d0f0c4:169510e76b2:-50a9', 'RACT48d0f0c4:169510e76b2:-510f', 'treasury.actions.UpdateFieldValue.value', NULL, NULL, NULL, NULL, 'TOTALTAX * 0.24 * (@DAYDIFF( @DATE( CYEAR ,1,1 ), CDATE+1)/365)', 'expression', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO ztmpdev_sys_rule_action_param (objid, parentid, actiondefparam_objid, stringvalue, booleanvalue, var_objid, var_name, expr, exprtype, pos, obj_key, obj_value, listvalue, lov, rangeoption) VALUES ('RULACT48d0f0c4:169510e76b2:-50de', 'RACT48d0f0c4:169510e76b2:-510f', 'treasury.actions.UpdateFieldValue.fieldname', 'interest', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO ztmpdev_sys_rule_action_param (objid, parentid, actiondefparam_objid, stringvalue, booleanvalue, var_objid, var_name, expr, exprtype, pos, obj_key, obj_value, listvalue, lov, rangeoption) VALUES ('RULACT48d0f0c4:169510e76b2:-50fb', 'RACT48d0f0c4:169510e76b2:-510f', 'treasury.actions.UpdateFieldValue.object', NULL, NULL, 'RCOND48d0f0c4:169510e76b2:-52c2', 'CCTC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO ztmpdev_sys_rule_action_param (objid, parentid, actiondefparam_objid, stringvalue, booleanvalue, var_objid, var_name, expr, exprtype, pos, obj_key, obj_value, listvalue, lov, rangeoption) VALUES ('RAP29139531:169b3381f4d:-14c7', 'RA29139531:169b3381f4d:-14ca', 'treasury.actions.UpdateFieldValue.object', NULL, NULL, 'RC29139531:169b3381f4d:-14cc', 'CCTC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO ztmpdev_sys_rule_action_param (objid, parentid, actiondefparam_objid, stringvalue, booleanvalue, var_objid, var_name, expr, exprtype, pos, obj_key, obj_value, listvalue, lov, rangeoption) VALUES ('RAP29139531:169b3381f4d:-14c8', 'RA29139531:169b3381f4d:-14ca', 'treasury.actions.UpdateFieldValue.fieldname', 'interest', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO ztmpdev_sys_rule_action_param (objid, parentid, actiondefparam_objid, stringvalue, booleanvalue, var_objid, var_name, expr, exprtype, pos, obj_key, obj_value, listvalue, lov, rangeoption) VALUES ('RAP29139531:169b3381f4d:-14c9', 'RA29139531:169b3381f4d:-14ca', 'treasury.actions.UpdateFieldValue.value', NULL, NULL, NULL, NULL, '0\n', 'expression', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO ztmpdev_sys_rule_action_param (objid, parentid, actiondefparam_objid, stringvalue, booleanvalue, var_objid, var_name, expr, exprtype, pos, obj_key, obj_value, listvalue, lov, rangeoption) VALUES ('RULACT-476b5bbe:1641bbe1a54:-7957', 'RACT-476b5bbe:1641bbe1a54:-79cd', 'treasury.actions.UpdateFieldValue.value', NULL, NULL, NULL, NULL, 'def d = ( PI / 1000 ); \nreturn @IIF( d > 5000, 5000, d.intValue() );', 'expression', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO ztmpdev_sys_rule_action_param (objid, parentid, actiondefparam_objid, stringvalue, booleanvalue, var_objid, var_name, expr, exprtype, pos, obj_key, obj_value, listvalue, lov, rangeoption) VALUES ('RULACT-476b5bbe:1641bbe1a54:-7998', 'RACT-476b5bbe:1641bbe1a54:-79cd', 'treasury.actions.UpdateFieldValue.fieldname', 'propertyincometax', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO ztmpdev_sys_rule_action_param (objid, parentid, actiondefparam_objid, stringvalue, booleanvalue, var_objid, var_name, expr, exprtype, pos, obj_key, obj_value, listvalue, lov, rangeoption) VALUES ('RULACT-476b5bbe:1641bbe1a54:-79b6', 'RACT-476b5bbe:1641bbe1a54:-79cd', 'treasury.actions.UpdateFieldValue.object', NULL, NULL, 'RCOND-476b5bbe:1641bbe1a54:-7e8c', 'ICTC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO ztmpdev_sys_rule_action_param (objid, parentid, actiondefparam_objid, stringvalue, booleanvalue, var_objid, var_name, expr, exprtype, pos, obj_key, obj_value, listvalue, lov, rangeoption) VALUES ('RULACT-476b5bbe:1641bbe1a54:-7a33', 'RACT-476b5bbe:1641bbe1a54:-7aa9', 'treasury.actions.UpdateFieldValue.value', NULL, NULL, NULL, NULL, 'def d = ( SALARY / 1000 ); \nreturn @IIF( d > 5000, 5000, d.intValue() );', 'expression', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO ztmpdev_sys_rule_action_param (objid, parentid, actiondefparam_objid, stringvalue, booleanvalue, var_objid, var_name, expr, exprtype, pos, obj_key, obj_value, listvalue, lov, rangeoption) VALUES ('RULACT-476b5bbe:1641bbe1a54:-7a77', 'RACT-476b5bbe:1641bbe1a54:-7aa9', 'treasury.actions.UpdateFieldValue.fieldname', 'salarytax', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO ztmpdev_sys_rule_action_param (objid, parentid, actiondefparam_objid, stringvalue, booleanvalue, var_objid, var_name, expr, exprtype, pos, obj_key, obj_value, listvalue, lov, rangeoption) VALUES ('RULACT-476b5bbe:1641bbe1a54:-7a95', 'RACT-476b5bbe:1641bbe1a54:-7aa9', 'treasury.actions.UpdateFieldValue.object', NULL, NULL, 'RCOND-476b5bbe:1641bbe1a54:-7e8c', 'ICTC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO ztmpdev_sys_rule_action_param (objid, parentid, actiondefparam_objid, stringvalue, booleanvalue, var_objid, var_name, expr, exprtype, pos, obj_key, obj_value, listvalue, lov, rangeoption) VALUES ('RULACT-476b5bbe:1641bbe1a54:-7b11', 'RACT-476b5bbe:1641bbe1a54:-7b87', 'treasury.actions.UpdateFieldValue.value', NULL, NULL, NULL, NULL, 'def d = ( BGROSS / 1000 ); \nreturn @IIF( d > 5000, 5000, d.intValue() );', 'expression', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO ztmpdev_sys_rule_action_param (objid, parentid, actiondefparam_objid, stringvalue, booleanvalue, var_objid, var_name, expr, exprtype, pos, obj_key, obj_value, listvalue, lov, rangeoption) VALUES ('RULACT-476b5bbe:1641bbe1a54:-7b55', 'RACT-476b5bbe:1641bbe1a54:-7b87', 'treasury.actions.UpdateFieldValue.fieldname', 'businessgrosstax', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO ztmpdev_sys_rule_action_param (objid, parentid, actiondefparam_objid, stringvalue, booleanvalue, var_objid, var_name, expr, exprtype, pos, obj_key, obj_value, listvalue, lov, rangeoption) VALUES ('RULACT-476b5bbe:1641bbe1a54:-7b70', 'RACT-476b5bbe:1641bbe1a54:-7b87', 'treasury.actions.UpdateFieldValue.object', NULL, NULL, 'RCOND-476b5bbe:1641bbe1a54:-7e8c', 'ICTC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO ztmpdev_sys_rule_action_param (objid, parentid, actiondefparam_objid, stringvalue, booleanvalue, var_objid, var_name, expr, exprtype, pos, obj_key, obj_value, listvalue, lov, rangeoption) VALUES ('RULACT-476b5bbe:1641bbe1a54:-7bf7', 'RACT-476b5bbe:1641bbe1a54:-7c6d', 'treasury.actions.UpdateFieldValue.value', NULL, NULL, NULL, NULL, '5', 'expression', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO ztmpdev_sys_rule_action_param (objid, parentid, actiondefparam_objid, stringvalue, booleanvalue, var_objid, var_name, expr, exprtype, pos, obj_key, obj_value, listvalue, lov, rangeoption) VALUES ('RULACT-476b5bbe:1641bbe1a54:-7c3b', 'RACT-476b5bbe:1641bbe1a54:-7c6d', 'treasury.actions.UpdateFieldValue.fieldname', 'basictax', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO ztmpdev_sys_rule_action_param (objid, parentid, actiondefparam_objid, stringvalue, booleanvalue, var_objid, var_name, expr, exprtype, pos, obj_key, obj_value, listvalue, lov, rangeoption) VALUES ('RULACT-476b5bbe:1641bbe1a54:-7c56', 'RACT-476b5bbe:1641bbe1a54:-7c6d', 'treasury.actions.UpdateFieldValue.object', NULL, NULL, 'RCOND-476b5bbe:1641bbe1a54:-7e8c', 'ICTC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO ztmpdev_sys_rule_action_param (objid, parentid, actiondefparam_objid, stringvalue, booleanvalue, var_objid, var_name, expr, exprtype, pos, obj_key, obj_value, listvalue, lov, rangeoption) VALUES ('RULACT6729cd8:166bdeb1f30:-79aa', 'RACT6729cd8:166bdeb1f30:-7a26', 'treasury.actions.UpdateFieldValue.value', NULL, NULL, NULL, NULL, 'TOTALTAX * 0.24 * (@DAYDIFF(  @DATE( CYEAR , 1, 1), CDATE ) / 365)', 'expression', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO ztmpdev_sys_rule_action_param (objid, parentid, actiondefparam_objid, stringvalue, booleanvalue, var_objid, var_name, expr, exprtype, pos, obj_key, obj_value, listvalue, lov, rangeoption) VALUES ('RULACT6729cd8:166bdeb1f30:-79ef', 'RACT6729cd8:166bdeb1f30:-7a26', 'treasury.actions.UpdateFieldValue.fieldname', 'interest', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO ztmpdev_sys_rule_action_param (objid, parentid, actiondefparam_objid, stringvalue, booleanvalue, var_objid, var_name, expr, exprtype, pos, obj_key, obj_value, listvalue, lov, rangeoption) VALUES ('RULACT6729cd8:166bdeb1f30:-7a0e', 'RACT6729cd8:166bdeb1f30:-7a26', 'treasury.actions.UpdateFieldValue.object', NULL, NULL, 'RCOND6729cd8:166bdeb1f30:-7dba', 'ICTC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO ztmpdev_sys_rule_action_param (objid, parentid, actiondefparam_objid, stringvalue, booleanvalue, var_objid, var_name, expr, exprtype, pos, obj_key, obj_value, listvalue, lov, rangeoption) VALUES ('RULACT6729cd8:166bdeb1f30:-69af', 'RACT6729cd8:166bdeb1f30:-6a2d', 'treasury.actions.UpdateFieldValue.value', NULL, NULL, NULL, NULL, '0', 'expression', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO ztmpdev_sys_rule_action_param (objid, parentid, actiondefparam_objid, stringvalue, booleanvalue, var_objid, var_name, expr, exprtype, pos, obj_key, obj_value, listvalue, lov, rangeoption) VALUES ('RULACT6729cd8:166bdeb1f30:-69f4', 'RACT6729cd8:166bdeb1f30:-6a2d', 'treasury.actions.UpdateFieldValue.fieldname', 'basictax', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO ztmpdev_sys_rule_action_param (objid, parentid, actiondefparam_objid, stringvalue, booleanvalue, var_objid, var_name, expr, exprtype, pos, obj_key, obj_value, listvalue, lov, rangeoption) VALUES ('RULACT6729cd8:166bdeb1f30:-6a15', 'RACT6729cd8:166bdeb1f30:-6a2d', 'treasury.actions.UpdateFieldValue.object', NULL, NULL, 'RCOND6729cd8:166bdeb1f30:-6ad4', 'ICTC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO ztmpdev_sys_rule_action_param (objid, parentid, actiondefparam_objid, stringvalue, booleanvalue, var_objid, var_name, expr, exprtype, pos, obj_key, obj_value, listvalue, lov, rangeoption) VALUES ('RAP4d8d2fa0:168164ac044:-689a', 'RA4d8d2fa0:168164ac044:-689d', 'treasury.actions.UpdateFieldValue.object', NULL, NULL, 'RC4d8d2fa0:168164ac044:-689f', 'ICTC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO ztmpdev_sys_rule_action_param (objid, parentid, actiondefparam_objid, stringvalue, booleanvalue, var_objid, var_name, expr, exprtype, pos, obj_key, obj_value, listvalue, lov, rangeoption) VALUES ('RAP4d8d2fa0:168164ac044:-689b', 'RA4d8d2fa0:168164ac044:-689d', 'treasury.actions.UpdateFieldValue.fieldname', 'basictax', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO ztmpdev_sys_rule_action_param (objid, parentid, actiondefparam_objid, stringvalue, booleanvalue, var_objid, var_name, expr, exprtype, pos, obj_key, obj_value, listvalue, lov, rangeoption) VALUES ('RAP4d8d2fa0:168164ac044:-689c', 'RA4d8d2fa0:168164ac044:-689d', 'treasury.actions.UpdateFieldValue.value', NULL, NULL, NULL, NULL, '1', 'expression', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO ztmpdev_sys_rule_action_param (objid, parentid, actiondefparam_objid, stringvalue, booleanvalue, var_objid, var_name, expr, exprtype, pos, obj_key, obj_value, listvalue, lov, rangeoption) VALUES ('RAP4d8d2fa0:168164ac044:-669f', 'RA4d8d2fa0:168164ac044:-66a2', 'treasury.actions.UpdateFieldValue.object', NULL, NULL, 'RC4d8d2fa0:168164ac044:-66ac', 'ICTC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO ztmpdev_sys_rule_action_param (objid, parentid, actiondefparam_objid, stringvalue, booleanvalue, var_objid, var_name, expr, exprtype, pos, obj_key, obj_value, listvalue, lov, rangeoption) VALUES ('RAP4d8d2fa0:168164ac044:-66a0', 'RA4d8d2fa0:168164ac044:-66a2', 'treasury.actions.UpdateFieldValue.fieldname', 'salarytax', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO ztmpdev_sys_rule_action_param (objid, parentid, actiondefparam_objid, stringvalue, booleanvalue, var_objid, var_name, expr, exprtype, pos, obj_key, obj_value, listvalue, lov, rangeoption) VALUES ('RAP4d8d2fa0:168164ac044:-66a1', 'RA4d8d2fa0:168164ac044:-66a2', 'treasury.actions.UpdateFieldValue.value', NULL, NULL, NULL, NULL, '0', 'expression', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO ztmpdev_sys_rule_action_param (objid, parentid, actiondefparam_objid, stringvalue, booleanvalue, var_objid, var_name, expr, exprtype, pos, obj_key, obj_value, listvalue, lov, rangeoption) VALUES ('RAP4d8d2fa0:168164ac044:-66a3', 'RA4d8d2fa0:168164ac044:-66a6', 'treasury.actions.UpdateFieldValue.object', NULL, NULL, 'RC4d8d2fa0:168164ac044:-66ac', 'ICTC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO ztmpdev_sys_rule_action_param (objid, parentid, actiondefparam_objid, stringvalue, booleanvalue, var_objid, var_name, expr, exprtype, pos, obj_key, obj_value, listvalue, lov, rangeoption) VALUES ('RAP4d8d2fa0:168164ac044:-66a4', 'RA4d8d2fa0:168164ac044:-66a6', 'treasury.actions.UpdateFieldValue.fieldname', 'businessgrosstax', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO ztmpdev_sys_rule_action_param (objid, parentid, actiondefparam_objid, stringvalue, booleanvalue, var_objid, var_name, expr, exprtype, pos, obj_key, obj_value, listvalue, lov, rangeoption) VALUES ('RAP4d8d2fa0:168164ac044:-66a5', 'RA4d8d2fa0:168164ac044:-66a6', 'treasury.actions.UpdateFieldValue.value', NULL, NULL, NULL, NULL, '0', 'expression', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO ztmpdev_sys_rule_action_param (objid, parentid, actiondefparam_objid, stringvalue, booleanvalue, var_objid, var_name, expr, exprtype, pos, obj_key, obj_value, listvalue, lov, rangeoption) VALUES ('RAP4d8d2fa0:168164ac044:-66a7', 'RA4d8d2fa0:168164ac044:-66aa', 'treasury.actions.UpdateFieldValue.value', NULL, NULL, NULL, NULL, '1', 'expression', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO ztmpdev_sys_rule_action_param (objid, parentid, actiondefparam_objid, stringvalue, booleanvalue, var_objid, var_name, expr, exprtype, pos, obj_key, obj_value, listvalue, lov, rangeoption) VALUES ('RAP4d8d2fa0:168164ac044:-66a8', 'RA4d8d2fa0:168164ac044:-66aa', 'treasury.actions.UpdateFieldValue.fieldname', 'basictax', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO ztmpdev_sys_rule_action_param (objid, parentid, actiondefparam_objid, stringvalue, booleanvalue, var_objid, var_name, expr, exprtype, pos, obj_key, obj_value, listvalue, lov, rangeoption) VALUES ('RAP4d8d2fa0:168164ac044:-66a9', 'RA4d8d2fa0:168164ac044:-66aa', 'treasury.actions.UpdateFieldValue.object', NULL, NULL, 'RC4d8d2fa0:168164ac044:-66ac', 'ICTC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

insert into sys_rule 
select * from ztmpdev_sys_rule z 
where (select count(*) from sys_rule where objid = z.objid) = 0
;
insert into sys_rule_condition 
select * from ztmpdev_sys_rule_condition z 
where (select count(*) from sys_rule_condition where objid = z.objid) = 0
;
insert into sys_rule_condition_var  
select * from ztmpdev_sys_rule_condition_var z 
where (select count(*) from sys_rule_condition_var where objid = z.objid) = 0
;
insert into sys_rule_condition_constraint 
select * from ztmpdev_sys_rule_condition_constraint z 
where (select count(*) from sys_rule_condition_constraint where objid = z.objid) = 0
;
insert into sys_rule_action 
select * from ztmpdev_sys_rule_action z 
where (select count(*) from sys_rule_action where objid = z.objid) = 0
;
insert into sys_rule_action_param
select * from ztmpdev_sys_rule_action_param z 
where (select count(*) from sys_rule_action_param where objid = z.objid) = 0
;

drop table ztmpdev_sys_rule 
go 
drop table ztmpdev_sys_rule_condition
go 
drop table ztmpdev_sys_rule_condition_var
go 
drop table ztmpdev_sys_rule_condition_constraint
go 
drop table ztmpdev_sys_rule_action 
go 
drop table ztmpdev_sys_rule_action_param
go 

update sys_rule_action_param set obj_key='REVITEM-7c79c408:14c30c20ec0:-4100', obj_value='COMMUNITY TAX CERTIFICATE INDIVIDUAL' where objid = 'RULACT7ff4a1a7:164fdd7d64a:-73b1' 
; 
update sys_rule_action_param set obj_key='REVITEM-7c79c408:14c30c20ec0:-40c8', obj_value='COMMUNITY TAX CERTIFICATE (CORPORATION)' where objid = 'RULACT-b880e40:166bdcfa0cb:-765a' 
; 
update sys_rule_action_param set obj_key='SUBACCT-781c7fb3:12a57db6d08:-7c94', obj_value='COMMUNITY TAX-INTEREST' where objid = 'RULACT6729cd8:166bdeb1f30:-5f7c' 
; 
update sys_rule_action_param set obj_key='SUBACCT-781c7fb3:12a57db6d08:-7c94', obj_value='COMMUNITY TAX-INTEREST' where objid = 'RAPf84726b:166bdea1875:-7fba' 
; 
