IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'tracked_changes_tx')
EXEC sys.sp_executesql N'CREATE SCHEMA [tracked_changes_tx]'
GO

IF NOT EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[tracked_changes_tx].[BasicReportingPeriodAttendance]'))
CREATE TABLE [tracked_changes_tx].[BasicReportingPeriodAttendance]
(
       OldCalendarCode [NVARCHAR](60) NOT NULL,
       OldGradeLevelDescriptorId [INT] NOT NULL,
       OldGradeLevelDescriptorNamespace [NVARCHAR](255) NOT NULL,
       OldGradeLevelDescriptorCodeValue [NVARCHAR](50) NOT NULL,
       OldReportingPeriodDescriptorId [INT] NOT NULL,
       OldReportingPeriodDescriptorNamespace [NVARCHAR](255) NOT NULL,
       OldReportingPeriodDescriptorCodeValue [NVARCHAR](50) NOT NULL,
       OldSchoolId [INT] NOT NULL,
       OldStudentUSI [INT] NOT NULL,
       OldStudentUniqueId [NVARCHAR](32) NOT NULL,
       NewCalendarCode [NVARCHAR](60) NULL,
       NewGradeLevelDescriptorId [INT] NULL,
       NewGradeLevelDescriptorNamespace [NVARCHAR](255) NULL,
       NewGradeLevelDescriptorCodeValue [NVARCHAR](50) NULL,
       NewReportingPeriodDescriptorId [INT] NULL,
       NewReportingPeriodDescriptorNamespace [NVARCHAR](255) NULL,
       NewReportingPeriodDescriptorCodeValue [NVARCHAR](50) NULL,
       NewSchoolId [INT] NULL,
       NewStudentUSI [INT] NULL,
       NewStudentUniqueId [NVARCHAR](32) NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       Discriminator [NVARCHAR](128) NULL,
       CreateDate DateTime2 NOT NULL DEFAULT (getutcdate()),
       CONSTRAINT PK_BasicReportingPeriodAttendance PRIMARY KEY CLUSTERED (ChangeVersion)
)
IF NOT EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[tracked_changes_tx].[BilingualESLProgramReportingPeriodAttendance]'))
CREATE TABLE [tracked_changes_tx].[BilingualESLProgramReportingPeriodAttendance]
(
       OldBilingualESLFundingDescriptorId [INT] NOT NULL,
       OldBilingualESLFundingDescriptorNamespace [NVARCHAR](255) NOT NULL,
       OldBilingualESLFundingDescriptorCodeValue [NVARCHAR](50) NOT NULL,
       OldCalendarCode [NVARCHAR](60) NOT NULL,
       OldGradeLevelDescriptorId [INT] NOT NULL,
       OldGradeLevelDescriptorNamespace [NVARCHAR](255) NOT NULL,
       OldGradeLevelDescriptorCodeValue [NVARCHAR](50) NOT NULL,
       OldReportingPeriodDescriptorId [INT] NOT NULL,
       OldReportingPeriodDescriptorNamespace [NVARCHAR](255) NOT NULL,
       OldReportingPeriodDescriptorCodeValue [NVARCHAR](50) NOT NULL,
       OldSchoolId [INT] NOT NULL,
       OldStudentUSI [INT] NOT NULL,
       OldStudentUniqueId [NVARCHAR](32) NOT NULL,
       NewBilingualESLFundingDescriptorId [INT] NULL,
       NewBilingualESLFundingDescriptorNamespace [NVARCHAR](255) NULL,
       NewBilingualESLFundingDescriptorCodeValue [NVARCHAR](50) NULL,
       NewCalendarCode [NVARCHAR](60) NULL,
       NewGradeLevelDescriptorId [INT] NULL,
       NewGradeLevelDescriptorNamespace [NVARCHAR](255) NULL,
       NewGradeLevelDescriptorCodeValue [NVARCHAR](50) NULL,
       NewReportingPeriodDescriptorId [INT] NULL,
       NewReportingPeriodDescriptorNamespace [NVARCHAR](255) NULL,
       NewReportingPeriodDescriptorCodeValue [NVARCHAR](50) NULL,
       NewSchoolId [INT] NULL,
       NewStudentUSI [INT] NULL,
       NewStudentUniqueId [NVARCHAR](32) NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       Discriminator [NVARCHAR](128) NULL,
       CreateDate DateTime2 NOT NULL DEFAULT (getutcdate()),
       CONSTRAINT PK_BilingualESLProgramReportingPeriodAttendance PRIMARY KEY CLUSTERED (ChangeVersion)
)
IF NOT EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[tracked_changes_tx].[BudgetExt]'))
CREATE TABLE [tracked_changes_tx].[BudgetExt]
(
       OldBeginDate [DATE] NOT NULL,
       OldBudgetFunctionDescriptorId [INT] NOT NULL,
       OldBudgetFunctionDescriptorNamespace [NVARCHAR](255) NOT NULL,
       OldBudgetFunctionDescriptorCodeValue [NVARCHAR](50) NOT NULL,
       OldBudgetFundDescriptorId [INT] NOT NULL,
       OldBudgetFundDescriptorNamespace [NVARCHAR](255) NOT NULL,
       OldBudgetFundDescriptorCodeValue [NVARCHAR](50) NOT NULL,
       OldBudgetObjectDescriptorId [INT] NOT NULL,
       OldBudgetObjectDescriptorNamespace [NVARCHAR](255) NOT NULL,
       OldBudgetObjectDescriptorCodeValue [NVARCHAR](50) NOT NULL,
       OldBudgetProgramIntentDescriptorId [INT] NOT NULL,
       OldBudgetProgramIntentDescriptorNamespace [NVARCHAR](255) NOT NULL,
       OldBudgetProgramIntentDescriptorCodeValue [NVARCHAR](50) NOT NULL,
       OldEducationOrganizationId [INT] NOT NULL,
       OldFiscalYear [INT] NOT NULL,
       OldOrganization [INT] NOT NULL,
       NewBeginDate [DATE] NULL,
       NewBudgetFunctionDescriptorId [INT] NULL,
       NewBudgetFunctionDescriptorNamespace [NVARCHAR](255) NULL,
       NewBudgetFunctionDescriptorCodeValue [NVARCHAR](50) NULL,
       NewBudgetFundDescriptorId [INT] NULL,
       NewBudgetFundDescriptorNamespace [NVARCHAR](255) NULL,
       NewBudgetFundDescriptorCodeValue [NVARCHAR](50) NULL,
       NewBudgetObjectDescriptorId [INT] NULL,
       NewBudgetObjectDescriptorNamespace [NVARCHAR](255) NULL,
       NewBudgetObjectDescriptorCodeValue [NVARCHAR](50) NULL,
       NewBudgetProgramIntentDescriptorId [INT] NULL,
       NewBudgetProgramIntentDescriptorNamespace [NVARCHAR](255) NULL,
       NewBudgetProgramIntentDescriptorCodeValue [NVARCHAR](50) NULL,
       NewEducationOrganizationId [INT] NULL,
       NewFiscalYear [INT] NULL,
       NewOrganization [INT] NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       Discriminator [NVARCHAR](128) NULL,
       CreateDate DateTime2 NOT NULL DEFAULT (getutcdate()),
       CONSTRAINT PK_BudgetExt PRIMARY KEY CLUSTERED (ChangeVersion)
)
IF NOT EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[tracked_changes_tx].[ContractedInstructionalStaffFTEExt]'))
CREATE TABLE [tracked_changes_tx].[ContractedInstructionalStaffFTEExt]
(
       OldCIStaffProgramIntentDescriptorId [INT] NOT NULL,
       OldCIStaffProgramIntentDescriptorNamespace [NVARCHAR](255) NOT NULL,
       OldCIStaffProgramIntentDescriptorCodeValue [NVARCHAR](50) NOT NULL,
       OldEducationOrganizationId [INT] NOT NULL,
       OldSchoolId [INT] NOT NULL,
       NewCIStaffProgramIntentDescriptorId [INT] NULL,
       NewCIStaffProgramIntentDescriptorNamespace [NVARCHAR](255) NULL,
       NewCIStaffProgramIntentDescriptorCodeValue [NVARCHAR](50) NULL,
       NewEducationOrganizationId [INT] NULL,
       NewSchoolId [INT] NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       Discriminator [NVARCHAR](128) NULL,
       CreateDate DateTime2 NOT NULL DEFAULT (getutcdate()),
       CONSTRAINT PK_ContractedInstructionalStaffFTEExt PRIMARY KEY CLUSTERED (ChangeVersion)
)
IF NOT EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[tracked_changes_tx].[CTEProgramReportingPeriodAttendance]'))
CREATE TABLE [tracked_changes_tx].[CTEProgramReportingPeriodAttendance]
(
       OldCalendarCode [NVARCHAR](60) NOT NULL,
       OldCTEServiceIdDescriptorId [INT] NOT NULL,
       OldCTEServiceIdDescriptorNamespace [NVARCHAR](255) NOT NULL,
       OldCTEServiceIdDescriptorCodeValue [NVARCHAR](50) NOT NULL,
       OldGradeLevelDescriptorId [INT] NOT NULL,
       OldGradeLevelDescriptorNamespace [NVARCHAR](255) NOT NULL,
       OldGradeLevelDescriptorCodeValue [NVARCHAR](50) NOT NULL,
       OldReportingPeriodDescriptorId [INT] NOT NULL,
       OldReportingPeriodDescriptorNamespace [NVARCHAR](255) NOT NULL,
       OldReportingPeriodDescriptorCodeValue [NVARCHAR](50) NOT NULL,
       OldSchoolId [INT] NOT NULL,
       OldStudentUSI [INT] NOT NULL,
       OldStudentUniqueId [NVARCHAR](32) NOT NULL,
       NewCalendarCode [NVARCHAR](60) NULL,
       NewCTEServiceIdDescriptorId [INT] NULL,
       NewCTEServiceIdDescriptorNamespace [NVARCHAR](255) NULL,
       NewCTEServiceIdDescriptorCodeValue [NVARCHAR](50) NULL,
       NewGradeLevelDescriptorId [INT] NULL,
       NewGradeLevelDescriptorNamespace [NVARCHAR](255) NULL,
       NewGradeLevelDescriptorCodeValue [NVARCHAR](50) NULL,
       NewReportingPeriodDescriptorId [INT] NULL,
       NewReportingPeriodDescriptorNamespace [NVARCHAR](255) NULL,
       NewReportingPeriodDescriptorCodeValue [NVARCHAR](50) NULL,
       NewSchoolId [INT] NULL,
       NewStudentUSI [INT] NULL,
       NewStudentUniqueId [NVARCHAR](32) NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       Discriminator [NVARCHAR](128) NULL,
       CreateDate DateTime2 NOT NULL DEFAULT (getutcdate()),
       CONSTRAINT PK_CTEProgramReportingPeriodAttendance PRIMARY KEY CLUSTERED (ChangeVersion)
)
IF NOT EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[tracked_changes_tx].[DescriptorMappingHistory]'))
CREATE TABLE [tracked_changes_tx].[DescriptorMappingHistory]
(
       OldDateOfOperation [DATETIME2](7) NOT NULL,
       OldMappedNamespace [NVARCHAR](255) NOT NULL,
       OldMappedValue [NVARCHAR](50) NOT NULL,
       OldNamespace [NVARCHAR](255) NOT NULL,
       OldValue [NVARCHAR](50) NOT NULL,
       NewDateOfOperation [DATETIME2](7) NULL,
       NewMappedNamespace [NVARCHAR](255) NULL,
       NewMappedValue [NVARCHAR](50) NULL,
       NewNamespace [NVARCHAR](255) NULL,
       NewValue [NVARCHAR](50) NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       Discriminator [NVARCHAR](128) NULL,
       CreateDate DateTime2 NOT NULL DEFAULT (getutcdate()),
       CONSTRAINT PK_DescriptorMappingHistory PRIMARY KEY CLUSTERED (ChangeVersion)
)
IF NOT EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[tracked_changes_tx].[ExtendedSchoolYearServicesAttendance]'))
CREATE TABLE [tracked_changes_tx].[ExtendedSchoolYearServicesAttendance]
(
       OldFirstInstructionalSettingDescriptorId [INT] NOT NULL,
       OldFirstInstructionalSettingDescriptorNamespace [NVARCHAR](255) NOT NULL,
       OldFirstInstructionalSettingDescriptorCodeValue [NVARCHAR](50) NOT NULL,
       OldGradeLevelDescriptorId [INT] NOT NULL,
       OldGradeLevelDescriptorNamespace [NVARCHAR](255) NOT NULL,
       OldGradeLevelDescriptorCodeValue [NVARCHAR](50) NOT NULL,
       OldSchoolId [INT] NOT NULL,
       OldStudentUSI [INT] NOT NULL,
       OldStudentUniqueId [NVARCHAR](32) NOT NULL,
       NewFirstInstructionalSettingDescriptorId [INT] NULL,
       NewFirstInstructionalSettingDescriptorNamespace [NVARCHAR](255) NULL,
       NewFirstInstructionalSettingDescriptorCodeValue [NVARCHAR](50) NULL,
       NewGradeLevelDescriptorId [INT] NULL,
       NewGradeLevelDescriptorNamespace [NVARCHAR](255) NULL,
       NewGradeLevelDescriptorCodeValue [NVARCHAR](50) NULL,
       NewSchoolId [INT] NULL,
       NewStudentUSI [INT] NULL,
       NewStudentUniqueId [NVARCHAR](32) NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       Discriminator [NVARCHAR](128) NULL,
       CreateDate DateTime2 NOT NULL DEFAULT (getutcdate()),
       CONSTRAINT PK_ExtendedSchoolYearServicesAttendance PRIMARY KEY CLUSTERED (ChangeVersion)
)
IF NOT EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[tracked_changes_tx].[FlexibleBilingualESLProgramReportingPeriodAttendance]'))
CREATE TABLE [tracked_changes_tx].[FlexibleBilingualESLProgramReportingPeriodAttendance]
(
       OldBilingualESLFundingDescriptorId [INT] NOT NULL,
       OldBilingualESLFundingDescriptorNamespace [NVARCHAR](255) NOT NULL,
       OldBilingualESLFundingDescriptorCodeValue [NVARCHAR](50) NOT NULL,
       OldCalendarCode [NVARCHAR](60) NOT NULL,
       OldFlexAttendanceProgramDescriptorId [INT] NOT NULL,
       OldFlexAttendanceProgramDescriptorNamespace [NVARCHAR](255) NOT NULL,
       OldFlexAttendanceProgramDescriptorCodeValue [NVARCHAR](50) NOT NULL,
       OldGradeLevelDescriptorId [INT] NOT NULL,
       OldGradeLevelDescriptorNamespace [NVARCHAR](255) NOT NULL,
       OldGradeLevelDescriptorCodeValue [NVARCHAR](50) NOT NULL,
       OldReportingPeriodDescriptorId [INT] NOT NULL,
       OldReportingPeriodDescriptorNamespace [NVARCHAR](255) NOT NULL,
       OldReportingPeriodDescriptorCodeValue [NVARCHAR](50) NOT NULL,
       OldSchoolId [INT] NOT NULL,
       OldStudentUSI [INT] NOT NULL,
       OldStudentUniqueId [NVARCHAR](32) NOT NULL,
       NewBilingualESLFundingDescriptorId [INT] NULL,
       NewBilingualESLFundingDescriptorNamespace [NVARCHAR](255) NULL,
       NewBilingualESLFundingDescriptorCodeValue [NVARCHAR](50) NULL,
       NewCalendarCode [NVARCHAR](60) NULL,
       NewFlexAttendanceProgramDescriptorId [INT] NULL,
       NewFlexAttendanceProgramDescriptorNamespace [NVARCHAR](255) NULL,
       NewFlexAttendanceProgramDescriptorCodeValue [NVARCHAR](50) NULL,
       NewGradeLevelDescriptorId [INT] NULL,
       NewGradeLevelDescriptorNamespace [NVARCHAR](255) NULL,
       NewGradeLevelDescriptorCodeValue [NVARCHAR](50) NULL,
       NewReportingPeriodDescriptorId [INT] NULL,
       NewReportingPeriodDescriptorNamespace [NVARCHAR](255) NULL,
       NewReportingPeriodDescriptorCodeValue [NVARCHAR](50) NULL,
       NewSchoolId [INT] NULL,
       NewStudentUSI [INT] NULL,
       NewStudentUniqueId [NVARCHAR](32) NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       Discriminator [NVARCHAR](128) NULL,
       CreateDate DateTime2 NOT NULL DEFAULT (getutcdate()),
       CONSTRAINT PK_FlexibleBilingualESLProgramReportingPeriodAttendance PRIMARY KEY CLUSTERED (ChangeVersion)
)
IF NOT EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[tracked_changes_tx].[FlexibleCTEProgramReportingPeriodAttendance]'))
CREATE TABLE [tracked_changes_tx].[FlexibleCTEProgramReportingPeriodAttendance]
(
       OldCalendarCode [NVARCHAR](60) NOT NULL,
       OldFlexAttendanceProgramDescriptorId [INT] NOT NULL,
       OldFlexAttendanceProgramDescriptorNamespace [NVARCHAR](255) NOT NULL,
       OldFlexAttendanceProgramDescriptorCodeValue [NVARCHAR](50) NOT NULL,
       OldGradeLevelDescriptorId [INT] NOT NULL,
       OldGradeLevelDescriptorNamespace [NVARCHAR](255) NOT NULL,
       OldGradeLevelDescriptorCodeValue [NVARCHAR](50) NOT NULL,
       OldReportingPeriodDescriptorId [INT] NOT NULL,
       OldReportingPeriodDescriptorNamespace [NVARCHAR](255) NOT NULL,
       OldReportingPeriodDescriptorCodeValue [NVARCHAR](50) NOT NULL,
       OldSchoolId [INT] NOT NULL,
       OldStudentUSI [INT] NOT NULL,
       OldStudentUniqueId [NVARCHAR](32) NOT NULL,
       NewCalendarCode [NVARCHAR](60) NULL,
       NewFlexAttendanceProgramDescriptorId [INT] NULL,
       NewFlexAttendanceProgramDescriptorNamespace [NVARCHAR](255) NULL,
       NewFlexAttendanceProgramDescriptorCodeValue [NVARCHAR](50) NULL,
       NewGradeLevelDescriptorId [INT] NULL,
       NewGradeLevelDescriptorNamespace [NVARCHAR](255) NULL,
       NewGradeLevelDescriptorCodeValue [NVARCHAR](50) NULL,
       NewReportingPeriodDescriptorId [INT] NULL,
       NewReportingPeriodDescriptorNamespace [NVARCHAR](255) NULL,
       NewReportingPeriodDescriptorCodeValue [NVARCHAR](50) NULL,
       NewSchoolId [INT] NULL,
       NewStudentUSI [INT] NULL,
       NewStudentUniqueId [NVARCHAR](32) NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       Discriminator [NVARCHAR](128) NULL,
       CreateDate DateTime2 NOT NULL DEFAULT (getutcdate()),
       CONSTRAINT PK_FlexibleCTEProgramReportingPeriodAttendance PRIMARY KEY CLUSTERED (ChangeVersion)
)
IF NOT EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[tracked_changes_tx].[FlexibleRegularProgramReportingPeriodAttendance]'))
CREATE TABLE [tracked_changes_tx].[FlexibleRegularProgramReportingPeriodAttendance]
(
       OldCalendarCode [NVARCHAR](60) NOT NULL,
       OldFlexAttendanceProgramDescriptorId [INT] NOT NULL,
       OldFlexAttendanceProgramDescriptorNamespace [NVARCHAR](255) NOT NULL,
       OldFlexAttendanceProgramDescriptorCodeValue [NVARCHAR](50) NOT NULL,
       OldGradeLevelDescriptorId [INT] NOT NULL,
       OldGradeLevelDescriptorNamespace [NVARCHAR](255) NOT NULL,
       OldGradeLevelDescriptorCodeValue [NVARCHAR](50) NOT NULL,
       OldReportingPeriodDescriptorId [INT] NOT NULL,
       OldReportingPeriodDescriptorNamespace [NVARCHAR](255) NOT NULL,
       OldReportingPeriodDescriptorCodeValue [NVARCHAR](50) NOT NULL,
       OldSchoolId [INT] NOT NULL,
       OldStudentUSI [INT] NOT NULL,
       OldStudentUniqueId [NVARCHAR](32) NOT NULL,
       NewCalendarCode [NVARCHAR](60) NULL,
       NewFlexAttendanceProgramDescriptorId [INT] NULL,
       NewFlexAttendanceProgramDescriptorNamespace [NVARCHAR](255) NULL,
       NewFlexAttendanceProgramDescriptorCodeValue [NVARCHAR](50) NULL,
       NewGradeLevelDescriptorId [INT] NULL,
       NewGradeLevelDescriptorNamespace [NVARCHAR](255) NULL,
       NewGradeLevelDescriptorCodeValue [NVARCHAR](50) NULL,
       NewReportingPeriodDescriptorId [INT] NULL,
       NewReportingPeriodDescriptorNamespace [NVARCHAR](255) NULL,
       NewReportingPeriodDescriptorCodeValue [NVARCHAR](50) NULL,
       NewSchoolId [INT] NULL,
       NewStudentUSI [INT] NULL,
       NewStudentUniqueId [NVARCHAR](32) NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       Discriminator [NVARCHAR](128) NULL,
       CreateDate DateTime2 NOT NULL DEFAULT (getutcdate()),
       CONSTRAINT PK_FlexibleRegularProgramReportingPeriodAttendance PRIMARY KEY CLUSTERED (ChangeVersion)
)
IF NOT EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[tracked_changes_tx].[FlexibleSpecialEducationProgramReportingPeriodAttendance]'))
CREATE TABLE [tracked_changes_tx].[FlexibleSpecialEducationProgramReportingPeriodAttendance]
(
       OldCalendarCode [NVARCHAR](60) NOT NULL,
       OldFlexAttendanceProgramDescriptorId [INT] NOT NULL,
       OldFlexAttendanceProgramDescriptorNamespace [NVARCHAR](255) NOT NULL,
       OldFlexAttendanceProgramDescriptorCodeValue [NVARCHAR](50) NOT NULL,
       OldGradeLevelDescriptorId [INT] NOT NULL,
       OldGradeLevelDescriptorNamespace [NVARCHAR](255) NOT NULL,
       OldGradeLevelDescriptorCodeValue [NVARCHAR](50) NOT NULL,
       OldInstructionalSettingDescriptorId [INT] NOT NULL,
       OldInstructionalSettingDescriptorNamespace [NVARCHAR](255) NOT NULL,
       OldInstructionalSettingDescriptorCodeValue [NVARCHAR](50) NOT NULL,
       OldReportingPeriodDescriptorId [INT] NOT NULL,
       OldReportingPeriodDescriptorNamespace [NVARCHAR](255) NOT NULL,
       OldReportingPeriodDescriptorCodeValue [NVARCHAR](50) NOT NULL,
       OldSchoolId [INT] NOT NULL,
       OldStudentUSI [INT] NOT NULL,
       OldStudentUniqueId [NVARCHAR](32) NOT NULL,
       NewCalendarCode [NVARCHAR](60) NULL,
       NewFlexAttendanceProgramDescriptorId [INT] NULL,
       NewFlexAttendanceProgramDescriptorNamespace [NVARCHAR](255) NULL,
       NewFlexAttendanceProgramDescriptorCodeValue [NVARCHAR](50) NULL,
       NewGradeLevelDescriptorId [INT] NULL,
       NewGradeLevelDescriptorNamespace [NVARCHAR](255) NULL,
       NewGradeLevelDescriptorCodeValue [NVARCHAR](50) NULL,
       NewInstructionalSettingDescriptorId [INT] NULL,
       NewInstructionalSettingDescriptorNamespace [NVARCHAR](255) NULL,
       NewInstructionalSettingDescriptorCodeValue [NVARCHAR](50) NULL,
       NewReportingPeriodDescriptorId [INT] NULL,
       NewReportingPeriodDescriptorNamespace [NVARCHAR](255) NULL,
       NewReportingPeriodDescriptorCodeValue [NVARCHAR](50) NULL,
       NewSchoolId [INT] NULL,
       NewStudentUSI [INT] NULL,
       NewStudentUniqueId [NVARCHAR](32) NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       Discriminator [NVARCHAR](128) NULL,
       CreateDate DateTime2 NOT NULL DEFAULT (getutcdate()),
       CONSTRAINT PK_FlexibleSpecialEducationProgramReportingPeriodAttendance PRIMARY KEY CLUSTERED (ChangeVersion)
)
IF NOT EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[tracked_changes_tx].[PayrollExt]'))
CREATE TABLE [tracked_changes_tx].[PayrollExt]
(
       OldBeginDate [DATE] NOT NULL,
       OldEducationOrganizationId [INT] NOT NULL,
       OldFiscalYear [INT] NOT NULL,
       OldOrganization [INT] NOT NULL,
       OldPayrollActivityDescriptorId [INT] NOT NULL,
       OldPayrollActivityDescriptorNamespace [NVARCHAR](255) NOT NULL,
       OldPayrollActivityDescriptorCodeValue [NVARCHAR](50) NOT NULL,
       OldPayrollFunctionDescriptorId [INT] NOT NULL,
       OldPayrollFunctionDescriptorNamespace [NVARCHAR](255) NOT NULL,
       OldPayrollFunctionDescriptorCodeValue [NVARCHAR](50) NOT NULL,
       OldPayrollFundDescriptorId [INT] NOT NULL,
       OldPayrollFundDescriptorNamespace [NVARCHAR](255) NOT NULL,
       OldPayrollFundDescriptorCodeValue [NVARCHAR](50) NOT NULL,
       OldPayrollObjectDescriptorId [INT] NOT NULL,
       OldPayrollObjectDescriptorNamespace [NVARCHAR](255) NOT NULL,
       OldPayrollObjectDescriptorCodeValue [NVARCHAR](50) NOT NULL,
       OldPayrollProgramIntentDescriptorId [INT] NOT NULL,
       OldPayrollProgramIntentDescriptorNamespace [NVARCHAR](255) NOT NULL,
       OldPayrollProgramIntentDescriptorCodeValue [NVARCHAR](50) NOT NULL,
       OldStaffUSI [INT] NOT NULL,
       OldStaffUniqueId [NVARCHAR](32) NOT NULL,
       NewBeginDate [DATE] NULL,
       NewEducationOrganizationId [INT] NULL,
       NewFiscalYear [INT] NULL,
       NewOrganization [INT] NULL,
       NewPayrollActivityDescriptorId [INT] NULL,
       NewPayrollActivityDescriptorNamespace [NVARCHAR](255) NULL,
       NewPayrollActivityDescriptorCodeValue [NVARCHAR](50) NULL,
       NewPayrollFunctionDescriptorId [INT] NULL,
       NewPayrollFunctionDescriptorNamespace [NVARCHAR](255) NULL,
       NewPayrollFunctionDescriptorCodeValue [NVARCHAR](50) NULL,
       NewPayrollFundDescriptorId [INT] NULL,
       NewPayrollFundDescriptorNamespace [NVARCHAR](255) NULL,
       NewPayrollFundDescriptorCodeValue [NVARCHAR](50) NULL,
       NewPayrollObjectDescriptorId [INT] NULL,
       NewPayrollObjectDescriptorNamespace [NVARCHAR](255) NULL,
       NewPayrollObjectDescriptorCodeValue [NVARCHAR](50) NULL,
       NewPayrollProgramIntentDescriptorId [INT] NULL,
       NewPayrollProgramIntentDescriptorNamespace [NVARCHAR](255) NULL,
       NewPayrollProgramIntentDescriptorCodeValue [NVARCHAR](50) NULL,
       NewStaffUSI [INT] NULL,
       NewStaffUniqueId [NVARCHAR](32) NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       Discriminator [NVARCHAR](128) NULL,
       CreateDate DateTime2 NOT NULL DEFAULT (getutcdate()),
       CONSTRAINT PK_PayrollExt PRIMARY KEY CLUSTERED (ChangeVersion)
)
IF NOT EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[tracked_changes_tx].[PriorYearActualExt]'))
CREATE TABLE [tracked_changes_tx].[PriorYearActualExt]
(
       OldActualFunctionDescriptorId [INT] NOT NULL,
       OldActualFunctionDescriptorNamespace [NVARCHAR](255) NOT NULL,
       OldActualFunctionDescriptorCodeValue [NVARCHAR](50) NOT NULL,
       OldActualFundDescriptorId [INT] NOT NULL,
       OldActualFundDescriptorNamespace [NVARCHAR](255) NOT NULL,
       OldActualFundDescriptorCodeValue [NVARCHAR](50) NOT NULL,
       OldActualObjectDescriptorId [INT] NOT NULL,
       OldActualObjectDescriptorNamespace [NVARCHAR](255) NOT NULL,
       OldActualObjectDescriptorCodeValue [NVARCHAR](50) NOT NULL,
       OldActualProgramIntentDescriptorId [INT] NOT NULL,
       OldActualProgramIntentDescriptorNamespace [NVARCHAR](255) NOT NULL,
       OldActualProgramIntentDescriptorCodeValue [NVARCHAR](50) NOT NULL,
       OldEducationOrganizationId [INT] NOT NULL,
       OldFiscalYear [INT] NOT NULL,
       OldOrganization [INT] NOT NULL,
       NewActualFunctionDescriptorId [INT] NULL,
       NewActualFunctionDescriptorNamespace [NVARCHAR](255) NULL,
       NewActualFunctionDescriptorCodeValue [NVARCHAR](50) NULL,
       NewActualFundDescriptorId [INT] NULL,
       NewActualFundDescriptorNamespace [NVARCHAR](255) NULL,
       NewActualFundDescriptorCodeValue [NVARCHAR](50) NULL,
       NewActualObjectDescriptorId [INT] NULL,
       NewActualObjectDescriptorNamespace [NVARCHAR](255) NULL,
       NewActualObjectDescriptorCodeValue [NVARCHAR](50) NULL,
       NewActualProgramIntentDescriptorId [INT] NULL,
       NewActualProgramIntentDescriptorNamespace [NVARCHAR](255) NULL,
       NewActualProgramIntentDescriptorCodeValue [NVARCHAR](50) NULL,
       NewEducationOrganizationId [INT] NULL,
       NewFiscalYear [INT] NULL,
       NewOrganization [INT] NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       Discriminator [NVARCHAR](128) NULL,
       CreateDate DateTime2 NOT NULL DEFAULT (getutcdate()),
       CONSTRAINT PK_PriorYearActualExt PRIMARY KEY CLUSTERED (ChangeVersion)
)
IF NOT EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[tracked_changes_tx].[PriorYearLeaver]'))
CREATE TABLE [tracked_changes_tx].[PriorYearLeaver]
(
       OldSchoolId [INT] NOT NULL,
       OldStudentUId [NVARCHAR](32) NOT NULL,
       NewSchoolId [INT] NULL,
       NewStudentUId [NVARCHAR](32) NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       Discriminator [NVARCHAR](128) NULL,
       CreateDate DateTime2 NOT NULL DEFAULT (getutcdate()),
       CONSTRAINT PK_PriorYearLeaver PRIMARY KEY CLUSTERED (ChangeVersion)
)
IF NOT EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[tracked_changes_tx].[PriorYearLeaverParent]'))
CREATE TABLE [tracked_changes_tx].[PriorYearLeaverParent]
(
       OldParentUId [NVARCHAR](32) NOT NULL,
       NewParentUId [NVARCHAR](32) NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       Discriminator [NVARCHAR](128) NULL,
       CreateDate DateTime2 NOT NULL DEFAULT (getutcdate()),
       CONSTRAINT PK_PriorYearLeaverParent PRIMARY KEY CLUSTERED (ChangeVersion)
)
IF NOT EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[tracked_changes_tx].[PriorYearLeaverStudentParentAssociation]'))
CREATE TABLE [tracked_changes_tx].[PriorYearLeaverStudentParentAssociation]
(
       OldParentUId [NVARCHAR](32) NOT NULL,
       OldSchoolId [INT] NOT NULL,
       OldStudentUId [NVARCHAR](32) NOT NULL,
       NewParentUId [NVARCHAR](32) NULL,
       NewSchoolId [INT] NULL,
       NewStudentUId [NVARCHAR](32) NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       Discriminator [NVARCHAR](128) NULL,
       CreateDate DateTime2 NOT NULL DEFAULT (getutcdate()),
       CONSTRAINT PK_PriorYearLeaverStudentParentAssociation PRIMARY KEY CLUSTERED (ChangeVersion)
)
IF NOT EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[tracked_changes_tx].[ReportingPeriodExt]'))
CREATE TABLE [tracked_changes_tx].[ReportingPeriodExt]
(
       OldCalendarCode [NVARCHAR](60) NOT NULL,
       OldDate [DATE] NOT NULL,
       OldReportingPeriodDescriptorId [INT] NOT NULL,
       OldReportingPeriodDescriptorNamespace [NVARCHAR](255) NOT NULL,
       OldReportingPeriodDescriptorCodeValue [NVARCHAR](50) NOT NULL,
       OldSchoolId [INT] NOT NULL,
       OldSchoolYear [SMALLINT] NOT NULL,
       NewCalendarCode [NVARCHAR](60) NULL,
       NewDate [DATE] NULL,
       NewReportingPeriodDescriptorId [INT] NULL,
       NewReportingPeriodDescriptorNamespace [NVARCHAR](255) NULL,
       NewReportingPeriodDescriptorCodeValue [NVARCHAR](50) NULL,
       NewSchoolId [INT] NULL,
       NewSchoolYear [SMALLINT] NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       Discriminator [NVARCHAR](128) NULL,
       CreateDate DateTime2 NOT NULL DEFAULT (getutcdate()),
       CONSTRAINT PK_ReportingPeriodExt PRIMARY KEY CLUSTERED (ChangeVersion)
)
IF NOT EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[tracked_changes_tx].[SharedServiceArrangementExt]'))
CREATE TABLE [tracked_changes_tx].[SharedServiceArrangementExt]
(
       OldEducationOrganizationId [INT] NOT NULL,
       OldFiscalYear [INT] NOT NULL,
       OldSSAFundDescriptorId [INT] NOT NULL,
       OldSSAFundDescriptorNamespace [NVARCHAR](255) NOT NULL,
       OldSSAFundDescriptorCodeValue [NVARCHAR](50) NOT NULL,
       OldSSAMemberDistrictId [INT] NOT NULL,
       OldSSATypeDescriptorId [INT] NOT NULL,
       OldSSATypeDescriptorNamespace [NVARCHAR](255) NOT NULL,
       OldSSATypeDescriptorCodeValue [NVARCHAR](50) NOT NULL,
       NewEducationOrganizationId [INT] NULL,
       NewFiscalYear [INT] NULL,
       NewSSAFundDescriptorId [INT] NULL,
       NewSSAFundDescriptorNamespace [NVARCHAR](255) NULL,
       NewSSAFundDescriptorCodeValue [NVARCHAR](50) NULL,
       NewSSAMemberDistrictId [INT] NULL,
       NewSSATypeDescriptorId [INT] NULL,
       NewSSATypeDescriptorNamespace [NVARCHAR](255) NULL,
       NewSSATypeDescriptorCodeValue [NVARCHAR](50) NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       Discriminator [NVARCHAR](128) NULL,
       CreateDate DateTime2 NOT NULL DEFAULT (getutcdate()),
       CONSTRAINT PK_SharedServiceArrangementExt PRIMARY KEY CLUSTERED (ChangeVersion)
)
IF NOT EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[tracked_changes_tx].[SpecialEducationProgramReportingPeriodAttendance]'))
CREATE TABLE [tracked_changes_tx].[SpecialEducationProgramReportingPeriodAttendance]
(
       OldCalendarCode [NVARCHAR](60) NOT NULL,
       OldGradeLevelDescriptorId [INT] NOT NULL,
       OldGradeLevelDescriptorNamespace [NVARCHAR](255) NOT NULL,
       OldGradeLevelDescriptorCodeValue [NVARCHAR](50) NOT NULL,
       OldInstructionalSettingDescriptorId [INT] NOT NULL,
       OldInstructionalSettingDescriptorNamespace [NVARCHAR](255) NOT NULL,
       OldInstructionalSettingDescriptorCodeValue [NVARCHAR](50) NOT NULL,
       OldRegionalDaySchoolProgramForDeafDescriptorId [INT] NOT NULL,
       OldRegionalDaySchoolProgramForDeafDescriptorNamespace [NVARCHAR](255) NOT NULL,
       OldRegionalDaySchoolProgramForDeafDescriptorCodeValue [NVARCHAR](50) NOT NULL,
       OldReportingPeriodDescriptorId [INT] NOT NULL,
       OldReportingPeriodDescriptorNamespace [NVARCHAR](255) NOT NULL,
       OldReportingPeriodDescriptorCodeValue [NVARCHAR](50) NOT NULL,
       OldSchoolId [INT] NOT NULL,
       OldStudentUSI [INT] NOT NULL,
       OldStudentUniqueId [NVARCHAR](32) NOT NULL,
       NewCalendarCode [NVARCHAR](60) NULL,
       NewGradeLevelDescriptorId [INT] NULL,
       NewGradeLevelDescriptorNamespace [NVARCHAR](255) NULL,
       NewGradeLevelDescriptorCodeValue [NVARCHAR](50) NULL,
       NewInstructionalSettingDescriptorId [INT] NULL,
       NewInstructionalSettingDescriptorNamespace [NVARCHAR](255) NULL,
       NewInstructionalSettingDescriptorCodeValue [NVARCHAR](50) NULL,
       NewRegionalDaySchoolProgramForDeafDescriptorId [INT] NULL,
       NewRegionalDaySchoolProgramForDeafDescriptorNamespace [NVARCHAR](255) NULL,
       NewRegionalDaySchoolProgramForDeafDescriptorCodeValue [NVARCHAR](50) NULL,
       NewReportingPeriodDescriptorId [INT] NULL,
       NewReportingPeriodDescriptorNamespace [NVARCHAR](255) NULL,
       NewReportingPeriodDescriptorCodeValue [NVARCHAR](50) NULL,
       NewSchoolId [INT] NULL,
       NewStudentUSI [INT] NULL,
       NewStudentUniqueId [NVARCHAR](32) NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       Discriminator [NVARCHAR](128) NULL,
       CreateDate DateTime2 NOT NULL DEFAULT (getutcdate()),
       CONSTRAINT PK_SpecialEducationProgramReportingPeriodAttendance PRIMARY KEY CLUSTERED (ChangeVersion)
)
IF NOT EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[tracked_changes_tx].[SpecialProgramsReportingPeriodAttendance]'))
CREATE TABLE [tracked_changes_tx].[SpecialProgramsReportingPeriodAttendance]
(
       OldCalendarCode [NVARCHAR](60) NOT NULL,
       OldGradeLevelDescriptorId [INT] NOT NULL,
       OldGradeLevelDescriptorNamespace [NVARCHAR](255) NOT NULL,
       OldGradeLevelDescriptorCodeValue [NVARCHAR](50) NOT NULL,
       OldReportingPeriodDescriptorId [INT] NOT NULL,
       OldReportingPeriodDescriptorNamespace [NVARCHAR](255) NOT NULL,
       OldReportingPeriodDescriptorCodeValue [NVARCHAR](50) NOT NULL,
       OldSchoolId [INT] NOT NULL,
       OldStudentUSI [INT] NOT NULL,
       OldStudentUniqueId [NVARCHAR](32) NOT NULL,
       NewCalendarCode [NVARCHAR](60) NULL,
       NewGradeLevelDescriptorId [INT] NULL,
       NewGradeLevelDescriptorNamespace [NVARCHAR](255) NULL,
       NewGradeLevelDescriptorCodeValue [NVARCHAR](50) NULL,
       NewReportingPeriodDescriptorId [INT] NULL,
       NewReportingPeriodDescriptorNamespace [NVARCHAR](255) NULL,
       NewReportingPeriodDescriptorCodeValue [NVARCHAR](50) NULL,
       NewSchoolId [INT] NULL,
       NewStudentUSI [INT] NULL,
       NewStudentUniqueId [NVARCHAR](32) NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       Discriminator [NVARCHAR](128) NULL,
       CreateDate DateTime2 NOT NULL DEFAULT (getutcdate()),
       CONSTRAINT PK_SpecialProgramsReportingPeriodAttendance PRIMARY KEY CLUSTERED (ChangeVersion)
)
IF NOT EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[tracked_changes_tx].[SSAOrgAssociationExt]'))
CREATE TABLE [tracked_changes_tx].[SSAOrgAssociationExt]
(
       OldEducationOrganizationId [INT] NOT NULL,
       OldFiscalAgentDistrictId [INT] NOT NULL,
       OldSSATypeDescriptorId [INT] NOT NULL,
       OldSSATypeDescriptorNamespace [NVARCHAR](255) NOT NULL,
       OldSSATypeDescriptorCodeValue [NVARCHAR](50) NOT NULL,
       NewEducationOrganizationId [INT] NULL,
       NewFiscalAgentDistrictId [INT] NULL,
       NewSSATypeDescriptorId [INT] NULL,
       NewSSATypeDescriptorNamespace [NVARCHAR](255) NULL,
       NewSSATypeDescriptorCodeValue [NVARCHAR](50) NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       Discriminator [NVARCHAR](128) NULL,
       CreateDate DateTime2 NOT NULL DEFAULT (getutcdate()),
       CONSTRAINT PK_SSAOrgAssociationExt PRIMARY KEY CLUSTERED (ChangeVersion)
)
IF NOT EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[tracked_changes_tx].[StudentApplication]'))
CREATE TABLE [tracked_changes_tx].[StudentApplication]
(
       OldApplicationIdentifier [NVARCHAR](10) NOT NULL,
       OldEducationOrganizationId [INT] NOT NULL,
       OldSchoolYear [SMALLINT] NOT NULL,
       NewApplicationIdentifier [NVARCHAR](10) NULL,
       NewEducationOrganizationId [INT] NULL,
       NewSchoolYear [SMALLINT] NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       Discriminator [NVARCHAR](128) NULL,
       CreateDate DateTime2 NOT NULL DEFAULT (getutcdate()),
       CONSTRAINT PK_StudentApplication PRIMARY KEY CLUSTERED (ChangeVersion)
)
IF NOT EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[tracked_changes_tx].[StudentSpecialEducationProgramEligibilityAssociation]'))
CREATE TABLE [tracked_changes_tx].[StudentSpecialEducationProgramEligibilityAssociation]
(
       OldEducationOrganizationId [INT] NOT NULL,
       OldProgramName [NVARCHAR](60) NOT NULL,
       OldProgramTypeDescriptorId [INT] NOT NULL,
       OldProgramTypeDescriptorNamespace [NVARCHAR](255) NOT NULL,
       OldProgramTypeDescriptorCodeValue [NVARCHAR](50) NOT NULL,
       OldStudentUSI [INT] NOT NULL,
       OldStudentUniqueId [NVARCHAR](32) NOT NULL,
       NewEducationOrganizationId [INT] NULL,
       NewProgramName [NVARCHAR](60) NULL,
       NewProgramTypeDescriptorId [INT] NULL,
       NewProgramTypeDescriptorNamespace [NVARCHAR](255) NULL,
       NewProgramTypeDescriptorCodeValue [NVARCHAR](50) NULL,
       NewStudentUSI [INT] NULL,
       NewStudentUniqueId [NVARCHAR](32) NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       Discriminator [NVARCHAR](128) NULL,
       CreateDate DateTime2 NOT NULL DEFAULT (getutcdate()),
       CONSTRAINT PK_StudentSpecialEducationProgramEligibilityAssociation PRIMARY KEY CLUSTERED (ChangeVersion)
)
