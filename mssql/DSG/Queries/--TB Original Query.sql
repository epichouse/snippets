--TB Original Query




DECLARE @Report_Date DATE;
DECLARE @Report_Date_Time DATETIME;
SET @Report_Date = CONVERT(DATE, DATEADD(d,-1,GETDATE()));
SET @Report_Date_Time = DATEADD(d,-1,GETDATE());
SELECT @Report_Date AS_AT_DATE,
       at.[AgreementNumber] Agreement_Number,
	   [AgreementAnalysisCode] Analysis_Code,
	   ft1.[FunderName] Current_Funder_Name,
	   [AgreementDealerNumber] Dealer_ID,
	   ucd.[DealerName]  Dealer_Name,
	   [CustomerAddress1] Customer_Address_1,
	   [CustomerAddress2] Customer_Address_2,
	   [CustomerAddress3] Customer_Address_3,
	   [CustomerAddress4] Customer_Address_4,
	   [CustomerAddress5] Customer_Address_5,
	   [CustomerPostcode] Postcode, 
	   [CustomerFirstname] First_Name,
	   [CustomerSurName] Last_Name,
	   [CustomerDateOfBirth] DOB,
       [AgreementDefName] Agreement_Type,
	   ucd.[ProductName] Aquarius_Product_Name,
	   [AgreementAgreementDate] Agreement_Start_Date, 
       [AgreementContractEndDate] Agreement_End_Date,
	   [AgreementNumPayments] Number_of_Payments,
       ucd.[OriginalTerm] Agreement_Term,
	   [AgreementOriginalPrincipal] Advance,
	   [AgreementCharges] Interest,
	   [AgreementTotalFees] Fees,
	   [AgreementOriginalPrincipal] + [AgreementCharges] + [AgreementTotalFees] Total_Payable,
       [AgreementTotalPrincipalPaid] Principal_Paid_to_date, 
	   [AgreementTotalInterestPaid] Interest_Paid_to_date,
       [AgreementOriginalPrincipal] + [AgreementTotalFees] - [AgreementTotalPrincipalPaid] Principal_Outstanding, 
	   [AgreementCharges] - [AgreementTotalInterestPaid] Interest_Outstanding,
	   [AgreementOriginalPrincipal] + [AgreementTotalFees] - [AgreementTotalPrincipalPaid] + [AgreementCharges] - [AgreementTotalInterestPaid] Total_Balance_Outstanding,
	   [TransTypeDescription] Payment_Method,
	   Next_Scheduled_Payment_Date,
	   Next_Scheduled_Net_Payment, 
       Next_Scheduled_Principal_Payment, 
       Next_Scheduled_Interest_Payment,
	   [AgreementResidualNET] Balloon_Amount, 
       [AgreementDepositCash] Cash_Deposit, 
       [AgreementDepositPartEx] Prt_Exchange, 
       [AgreementDepositCash] + [AgreementDepositPartEx] Total_Down_Payment, 
       [AgreementAPR] Contractual_APR,
	   [AgreementDebitInterest] Flat_Rate,
	   [GoodsRegNo] Vehicle_Registration,
       [GoodsMake] Manufacturer,
	   [GoodsModel] Model, 
       [GoodsRegDate] Year_Registered, 
	   [AgreementArrearsNETPrincipal] Principal_Arrears, 
       [AgreementArrearsNETInterest] Interest_Arrears, 
       [AgreementTotalArrearsNET] Arrears_balance,
	   [AgreementAutoStatus] Auto_Status,
	   [AgreementWarningFlag] Warning_Flag,
	   [AgreementWarningText] Warning_Text
FROM Unity_S3DB01.dbo.AgreementTable at
     JOIN Unity_S3CUSTDB.dbo.CustomerTable ct ON at.AgreementCustomerNumber = ct.CustomerNumber
     JOIN Unity_S3DB01.dbo.AgreementDefinitionTable adt ON at.AgreementAgreementTypeID = adt.AgreementDefID
     JOIN Unity_S3DB01.dbo.TransactionTypeTable ttt ON at.AgreementPaymentMethod = ttt.TransTypeID
     JOIN Unity_S3DB01.dbo.GoodsTable gt ON at.AgreementNumber = gt.GoodsAgreementNumber
     JOIN Unity_S3DB01.dbo.GoodsUserDefTable gudt ON at.AgreementNumber = gudt.GoodsUserDefAgreementNumber
     LEFT JOIN 
	 (
		SELECT ppt.PayProAgreementNumber,		
		[PayProDate] AS Next_Scheduled_Payment_Date,
		[PayProNetAmount] AS Next_Scheduled_Net_Payment,
		[PayProPrincipal] AS Next_Scheduled_Principal_Payment,
		[PayProInterest] AS Next_Scheduled_Interest_Payment
		FROM PaymentProfileTable ppt
		INNER JOIN (
			SELECT PayProAgreementNumber,		
				   Min(PayProID)as MinPaymentID
			FROM dbo.PaymentProfileTable
			WHERE PayProDate BETWEEN DATEADD(s, -1, CONVERT(DATETIME, @Report_Date)) AND 
								     DATEADD(m, 1, DATEADD(s, -1, CONVERT(DATETIME, @Report_Date)))
			GROUP BY PayProAgreementNumber
		) firstppt on ppt.PayProID = firstppt.MinPaymentID		
	 ) ppt ON at.AgreementNumber = ppt.PayProAgreementNumber                                                           
    LEFT JOIN Unity_S3CUSTDB.dbo.CustUserDefTable cudt ON at.AgreementNumber = cudt.CustomerNumber
	LEFT JOIN Unity_S3DB01.dbo.FunderTable ft1 ON at.AgreementFunderID = ft1.FunderID
	LEFT JOIN Unity_S3DB01.dbo.FunderTable ft2 ON at.AgreementPreviousFunderID = ft2.FunderID
	LEFT JOIN Unity_Analytics.dbo.Unity_Custom_Definables ucd ON at.AgreementNumber = ucd.ProposalId
ORDER BY Agreement_Number