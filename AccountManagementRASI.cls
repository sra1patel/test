/*************************************************************************************************************************************************************************************************
   Name: AccountManagementRASI
   Description: The class is a wrapper class to form the structure in which values have to be sent to Dell Boomi for Location and Billing
   Account Request. The instance of this class is used in  from "AccountCalloutActionHandler" to create a request and send it to DSS via
   Boomi.
   Created By: Navya Vasa, Pranav Sudhakar and Arpita Suryawanshi
   Creation Date: February, 2020
   Project: Account and Contact Master
 **************************************************************************************************************************************************************************************************/

global class AccountManagementRASI
{

    public PublishAccountData publishAccountData;
    public static boolean localFieldFlow=false;

    public class PublishAccountData
    {
        public PublishTrustAccounts publishTrustAccounts;

    }

    public class ContactFunctionData
    {
        public String accountANumber;
        public String actionCode;
        public Boolean CPAMFlag;
        public Boolean primaryFlag;
        public String creationDate;
        public String lastUpdatedBy;
        public String lastUpdatedDate;
        public String scope;
        public String cNumber;
    }

    public class AccountAttributes
    {
        public String attributeValue;
        public String accountAttribute;
        public String accountId;
    }

    public class AccountRequest
    {
        public MessageHeader messageHeader;
        public String actionCode;
        public String sourceSystem;
        public String accountCAID;
        public String invoiceOutput;
        public String accountFamily;
        public String building;
        public String externalBillingAccountDescription;
        public String internalBillingAccountDescription;
        public String softDollarBroker;
        public String VATGeoCode;
        public String billingContactPayer;
        public String subscriberCountry;
        public String subAccountName;
        public String subscriberCountryCode;
        public String organisationTypeDesc;
        public String coreSuiteStatus;
        public String billingFrequency;
        public String hardcopyDispatchMethod;
        public String payTerms;
        public String financialCharges;
        public String IRASReference;
        public String invoiceDeliveryMethod;
        public String billingCurrency;
        public String eikonAccountName;
        public String welcomeEmailConfiguration;
        public String billingLanguage;
        public String subAccNumber;
        public String subscriberNumber;
        public String panID;
        public List<AccountTeamData> accountTeamData;
        public String agreementNumber;
        public String agreementStatus;
        public String agreementType;
        public String businessChannel;
        public String CJRs;
        public String accountGenesisFlag;
        public String relationshipModel;
        public String creditCheckDate;
        public String creditCheckStatus;
        public String currencyCode;
        public String customerType;
        public String description;
        public String fax;
        public String localAccountName;
        public String localCity;
        public String localCountry;
        public String localPostal;
        public String localState;
        public String localStreet;
        public String MCCCode;
        public String name;
        public String ownerEmail;
        public String phone;
        public String region;
        public String segment;
        public String SFDCId;
        public String shippingCity;
        public String shippingCountry;
        public String shippingPostal;
        public String shippingState;
        public String shippingStreet;
        public String locationCity;
        public String locationCountry;
        public String locationPostal;
        public String locationState;
        public String locationStreet;
        public String applyDate;
        public String orderCreationFlag;
        public String siebelAccountStatus;
        public String siebelId;
        public String TDOCheckDate;
        public String TDOStatus;
        public String website;
        public String customerJourney;
        public String TCID;
        public String isPrimaryAccount;
        public String isPrimaryBilling;
        public String KNOwned;
        public String accountClass;
        public String nomCustomerGroup;
        public String parentAccountId;
        public String ultimateParentAccountId;
        public String hierarchyType;
        public String VATCode;
        public String initialTerm;
        public String renewalTerm;
        public String noticeTerm;
        public String partnerType;
        public String accessStatementMigrated;
        public String internalAccFlag;
        public String accountANumber;
        public String permId;
        public String parentAccount;
        public String organisationHierarchy;
        public String ultimateParent;
        public Boolean isSupplier;
        public PartnerTier partnerTier;
        public List<PartnerTier> proposition;
        public List<AccountTeamData> accountOwner;
        public String shippingAddressName;
        public Boolean shippingAddressValidated;
        public String onlyPSIISync;
        public List<AdditionalAccountRef> additionalAccountRef;
        public List<CreatedBy> createdBy;
        public String creationDate;
        public List<CreatedBy> lastUpdatedBy;
        public String lastUpdatedDate;
        public String supplierStatus;
        public String alternateName;
        public String legalEntity;
        public String urgentBillingFlag;
        public String extBillingAccountDesc;
        public String suspendBillingFlag;
        public String OAID;
        public String OAName;
        public String multiCenterNumber;
        public String invoiceDescription;
        public String geoCode;
        public String customerReference;
        public String cityCode;
        public String alternateSubscriberNumber;
        public String accountNotes;
        public String accountDescription;
        public String legacyParentId;
        public String billedFromCountry;
        public String primaryAccountCity;
        public String primaryAccountCountry;
        public String fieldServiceLocation;
        public String quotronClient;
        public String subAccountNumber;
        public String subscriberShortName;
        public String taxCode;
        public String site;
        public String accountPrimaryAddressId;
        public String addressName;
        public String addressType;
        public String floorAddress;
        public List<ContactFunctionData> contactFunctionData;
        public String mainPhoneNumber;
        public String mainFaxNumber;
        public String TRSCAgreementNumber;
        public String contractType;
        public String localFloorAddress;
        public String localStreetAddress;
        public String localBuilding;
        public String billPayerContact;
        public List<AccountAttributes> accountAttributes;
        public String softDollarCode;
        public String publishAccountToSAP;
        public String CSIntegrationFlag;
        public String SAPInactiveFlag;
        public List<ExtensibleAttribute> extensibleAttribute;
        public Boolean keyStrategicAccount; //CIPS Integration        
        public String ultimateparentAccNumber;//CIPS Integration
        public String RefinitivMarket;  //CIPS Integration 
        public String RefinitivSubMarket;  //CIPS Integration 
        public String LocSubscriberNumber;  //CIPS Integration      
    }

    public class CreatedBy
    {
        public String Id;
        public String firstName;
        public String lastName;
        public String userName;
        public String userStatus;
        public String email;
        public String phone;
        public String fax;
        public List<Region> region;
        public List<ExtensibleAttribute> extensibleAttribute;
    }

    public PublishTrustAccounts publishTrustAccounts;

    public class PublishTrustAccounts
    {
        public AccountRequest accountRequest;
    }

    public class AccountTeamData
    {
        public String accountTeamFirstName;
        public String accountTeamLastName;
        public String accountTeamJobTitle;
        public String accountTeamEmail;
        public String accountTeamPhoneNumber;
        public String accountTeamDivision;
        public String accounTeamPositionName;
        public String actionCode;
        public String accountUserName;
        public Boolean isSupplier;
        public String createdBy;
        public String creationDate;
        public String lastUpdatedBy;
        public String lastUpdatedDate;
        public String positionType;
        public String contactWorkNumber;
        public String contactState;
        public String contactPostalCode;
        public String contactFaxNumber;
        public String contactCountry;
        public String contactCity;
        public String contactAddress;
        public String activeFirstName;
        public String activeLastName;
        public String activeLoginName;
        public String activeMM;
        public String activePhone;
        public String loginId;
        public String responsiblity;
        public List<ExtensibleAttribute> extensibleAttribute;
        public String publishContactToSAP;
    }

    public class PartnerTier
    {
        public String Id;
        public String value;
    }

    public class Region
    {
        public String Id;
        public String regionCode;
        public String regionName;
        public String primaryFlag;
    }

    public class AdditionalAccountRef
    {
        public String refType;
        public String Id;
        public Boolean isSupplier;
        public String creationDate;
        public String createdBy;
        public String lastUpdatedBy;
        public String lastUpdatedDate;
        public List<ExtensibleAttribute> extensibleAttribute;
    }

    public class ExtensibleAttribute
    {
        public String key;
        public String value;
    }

    public class MessageHeader
    {
        public String applicationId;
        public String transactionId;
        public String messageId;
        public String messageHistory;
        public String tracingId;
        public String timeStamp;
        public String instanceId;
        public Integer timeToLive;
        public String payloadVersion;
        public List<ExtensibleAttribute> extensibleAttribute;
    }

    public static PublishAccountData prepareJSONRequest(Id sfdcId, Set<Id> customAccTeamIds,Set<Id> legacySysIds, String actionCode)
    {
        if(!Schema.sObjectType.Account.fields.Id.isAccessible())
        {
            ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.ERROR,'Error: Insufficient Access'));
            return null;
        }

        Account[] accArray = [select Id,trAccountClass__c,Ult_Prnt_Act_No__c,lastModifiedBy.Username, Only_PSII_Sync__c,OA_ID__c,
                              Parentid,Ultimate_Parent_Account__c, trCustomerJourney__c, tfcmCustomerMasterId__c, Siebel_Id__c,Name,tfcrmregion__c,
                              tocAgreementType__c,Contract_Type__c, Genesis_Flag__c, Description,tocCMRelationId__c,tfcmCustomerStatus__c,Owner.Email,
                              Phone,fax,Website,Segment__c,CurrencyIsoCode,shippingStreet,shippingCity,shippingState,shippingCountry,ShippingPostalCode,
                              tfcmCountryCode__c,tocLocalAccountName__c,tocLocalStreet__c,tocLocalCity__c,tocLocalState__c,tocLocalCountry__c,tocLocalPostal__c,
                              tfMCC_Code__c,tocBusiness_Channel__c, Relationship_Model__c, TDO_Status__c,trTDOCheckDate__c,Credit_Check_Status__c,
                              trCreditCheckDate__c,tocAgreementNo__c,tocAgreementStatus__c,CJR__c, NOM_Customer_Group__c, KN_Owned__c, isTAMbeforeOpty__c,
                              Vat_Number__c,Access_Statement_Migrated__c,Order_Form_Initial_Term_in_months__c,Order_Form_Cancellation_term_days__c,
                              Order_Form_Renewal_Term_in_months__c,Partner_Role__c,Supplier__c,Parent_ANumber__c,Billing_Language_Formula__c,
                              Ultimate_Parent_Account_Number__c,Ultimate_Parent_Siebel_Id__c,Parent_Siebel_Id__c,Alternate_Name__c,Address_Validated__c,
                              Owner.username,Lastmodifiedby.firstname,Lastmodifiedby.lastname,Lastmodifiedby.email,Legal_Entity__c,OrganizationHierarchy__c,
                              createdBy.firstname,createdBy.lastname,createdBy.email, hierarchy_tree__c,Supplier_Status__c,Parent.AccountNumber,
                              Ultimate_Parent_Account__r.AccountNumber,Partner_Tier__c,Proposition__c,AccountNumber,CreatedDate,LastModifiedDate,
                              owner.firstname, owner.lastname, owner.name, Internal_Account__c,PAN_Number__c,Eikon_Account_Name__c,
                              WelcomeEmail_Configuration__c,Site__c,Publish_Account_To_SAP_Integration__c,Re_trigger_date__c,
                              Business_Area_Code__c,Direct_Debit__c,E_R_Purchase_Order__c,Ex_Postel__c,Profession__c,
                              RIO_Indicator__c,Tax_Office__c,R_I_Purchase_Order__c,External_Billing_Note__c,Key_Strategic_Accounts__c,
                              Refinitiv_Market__c,Refinitiv_SubMarket__c ,Subscriber_Number_AM__c from Account where Id =: sfdcId];

        if(accArray.size()>0)
        {
            Account acc = accArray[0];

            AccountRequest accRequest = new AccountRequest();

            System.debug('Shipping Address validate' + acc.Address_Validated__c);

            accRequest.messageHeader = AccountManagementRASI.sendmsgtoRASI();

            accRequest.sourceSystem='SFDC';
            accRequest.accountCAID = acc.tocCMRelationId__c;
            accRequest.accountANumber = acc.AccountNumber;
            accRequest.SFDCId= acc.Id;
            accRequest.name = acc.Name;
            accRequest.parentAccount=acc.Parent_ANumber__c;
            accRequest.ultimateParent = acc.Ult_Prnt_Act_No__c;
            accRequest.parentAccountId =acc.Parent_Siebel_Id__c;
            accRequest.ultimateParentAccountId = acc.Ultimate_Parent_Siebel_Id__c;
            accRequest.siebelAccountStatus = acc.tfcmCustomerStatus__c;
            accRequest.siebelId = acc.Siebel_Id__c;
            accRequest.RefinitivMarket = acc.Refinitiv_Market__c;                 //CIPS Integration    
            accRequest.RefinitivSubMarket = acc.Refinitiv_SubMarket__c ;          //CIPS Integration    
            accRequest.LocSubscriberNumber = acc.Subscriber_Number_AM__c ;        //CIPS Integration  
            
            if(acc.Internal_Account__c)
            {
                accRequest.internalAccFlag = 'Y';
            }
            else
            {
                accRequest.internalAccFlag = 'N';
            }

            accRequest.welcomeEmailConfiguration = acc.WelcomeEmail_Configuration__c;  //FRO-825
            accRequest.phone = acc.Phone;
            accRequest.fax = acc.fax;
            accRequest.website = acc.Website;
            accRequest.segment = acc.Segment__c;
            accRequest.accountGenesisFlag = String.valueof(acc.Genesis_Flag__c);
            accRequest.currencyCode = acc.CurrencyIsoCode;
            accRequest.shippingStreet = acc.shippingStreet;
            accRequest.shippingCity = acc.shippingCity;
            accRequest.shippingState = acc.shippingState;
            accRequest.shippingCountry = acc.shippingCountry;
            accRequest.shippingPostal = acc.ShippingPostalCode;
            accRequest.region = acc.tfcrmregion__c;
            accRequest.MCCCode = acc.tfMCC_Code__c;
            accRequest.businessChannel = acc.tocBusiness_Channel__c;
            accRequest.relationshipModel = acc.Relationship_Model__c;
            accRequest.description = acc.Description;
            accRequest.ownerEmail = acc.Owner.Email;
            accRequest.TDOStatus = acc.TDO_Status__c;
            accRequest.TDOCheckDate = String.valueOf(acc.trTDOCheckDate__c);
            accRequest.creditCheckStatus = acc.Credit_Check_Status__c;
            accRequest.creditCheckDate = String.valueOf(acc.trCreditCheckDate__c);
            accRequest.agreementNumber = acc.tocAgreementNo__c;
            accRequest.agreementStatus = acc.tocAgreementStatus__c;
            accRequest.ultimateparentAccNumber = acc.Ultimate_Parent_Account_Number__c;
            accRequest.keyStrategicAccount = acc.Key_Strategic_Accounts__c;

            //Changes to handle TRMA to RMA branding TSY-160  Start

            String agmtType = (TRUST_Constants__c.getOrgDefaults().AgreementName__c == null) ? 'RMA' : TRUST_Constants__c.getOrgDefaults().AgreementName__c;
            String oldAgmtType = (TRUST_Constants__c.getOrgDefaults().OldAgreementName__c == null) ? 'TRMA' : TRUST_Constants__c.getOrgDefaults().OldAgreementName__c;
            accRequest.agreementType=(acc.tocAgreementType__c == oldAgmtType) ? agmtType : acc.tocAgreementType__c;

            //Changes to handle TRMA to RMA branding TSY-160  End

            accRequest.partnerType = acc.Partner_Role__c;
            accRequest.customerJourney = acc.trCustomerJourney__c;
            accRequest.TCID = acc.tfcmCustomerMasterId__c;
            accRequest.accountClass = acc.trAccountClass__c;
            accRequest.accessStatementMigrated = String.valueOf(acc.Access_Statement_Migrated__c);
            accRequest.organisationTypeDesc= acc.Segment__c;
            accRequest.BillingLanguage = acc.Billing_Language_Formula__c;
            accRequest.billingFrequency='Quarterly';
            accRequest.actionCode=actionCode;

            if(acc.NOM_Customer_Group__c != NULL)
            {
                LIST<String> nomValues= new LIST<String>();
                SET<String> nomValuesSET= new SET<String>();
                nomValues= acc.NOM_Customer_Group__c.split(';');
                nomValuesSET.addall(nomValues);

                if(nomValuesSET.contains('GRC'))
                {
                    accRequest.nomCustomerGroup= 'GRC';
                }

                else if(nomValuesSET.contains('Not Set'))
                {
                    accRequest.nomCustomerGroup= 'Not Set';
                }

                else
                {
                    accRequest.nomCustomerGroup='';
                }
            }

            else
            {
                accRequest.nomCustomerGroup='';
            }

            accRequest.VATCode= acc.Vat_Number__c;
            accRequest.panID=acc.PAN_Number__c;
            accRequest.eikonAccountName = acc.Eikon_Account_Name__c;
            accRequest.localAccountName=acc.tocLocalAccountName__c;
            accRequest.localCity=acc.tocLocalCity__c;
            accRequest.localCountry=acc.tocLocalCountry__c;
            accRequest.localPostal=acc.tocLocalPostal__c;
            accRequest.localState=acc.tocLocalState__c;
            accRequest.localStreet=acc.tocLocalStreet__c;
            accRequest.KNOwned=acc.KN_Owned__c;
            accRequest.HierarchyType='Location';
            accRequest.invoiceDeliveryMethod = 'Electronic';
            accRequest.isPrimaryBilling = 'N';
            accRequest.BillingCurrency = acc.CurrencyIsoCode;
            accRequest.financialCharges='1';
            accRequest.urgentBillingFlag='N';
            accRequest.CSIntegrationFlag='Y';
            accRequest.SAPInactiveFlag='N';
            accRequest.coreSuiteStatus='Pending Submission';
            accRequest.site=acc.Site__c;

            if(acc.Publish_Account_To_SAP_Integration__c)
            {
                accRequest.publishAccountToSAP='Y';
            }
            else
            {
                accRequest.publishAccountToSAP='N';
            }

            /*Logic for sending "Created By" user details,"Last Modified By" user details,"Proposition" details
               in the Account Request*/

            //Creating a new list "createdbydata" as the return type is expected to be a list of type "CreatedBy"
            List<AccountManagementRASI.CreatedBy> createdbydata=new List<AccountManagementRASI.CreatedBy>();

            //Creating a new list "modifiedbydata" as the return type is expected to be a list of type "CreatedBy"
            List<AccountManagementRASI.CreatedBy> modifiedbydata=new List<AccountManagementRASI.CreatedBy>();

            //Creating a new list "propdatalist" as the return type is expected to be a list of type "PartnerTier"
            List<AccountManagementRASI.PartnerTier> propdatalist=new List<AccountManagementRASI.PartnerTier>();

            //Creating a new list "accountownerlist" as the return type is expected to be a list of type "AccountTeamData"

            List<AccountTeamData> accountownerlist=new List<AccountTeamData>();

            //Adding the Location Account queried above to a list of type Account as parsing is possible only for a collection
            List<Account> tempacc=new List<Account>();
            tempacc.add(acc);

            //Traversing through the "tempacc" list

            for(Account a : tempacc)
            {
                User u=a.CreatedBy;    //Getting the user who created the Location Account
                AccountManagementRASI.CreatedBy createdata = new AccountManagementRASI.CreatedBy();    //Creating an instance of CreatedBy class

                //Assigning relevant values of Created By data
                createdata.firstName=u.firstname;
                createdata.lastName=u.lastname;
                createdata.email=u.email;
                createdbydata.add(createdata);    //Adding data to the list

                u=a.LastModifiedBy;    //Getting the user who last modified the Location Account
                AccountManagementRASI.CreatedBy modifydata = new AccountManagementRASI.CreatedBy();    //Creating an instance of CreatedBy class

                //Assigning relevant values for Last Modfied By data
                modifydata.firstName=u.firstname;
                modifydata.lastName=u.lastname;
                modifydata.email=u.email;
                modifiedbydata.add(modifydata);    //Adding data to the list

                String p=a.Proposition__c;    //Getting the Partner Tier for the Location Account
                AccountManagementRASI.PartnerTier propdata = new AccountManagementRASI.PartnerTier();    //Creating an instance of PartnerTier class

                //Assigning relevant values for Partner Tier data
                propdata.Id='Id';
                propdata.value=p;
                propdatalist.add(propdata);    //Adding data to the list

                AccountManagementRASI.AccountTeamData accOwnerData=new AccountManagementRASI.AccountTeamData(); //Creating an instance of AccountTeamData class

                //Assigning relevant values for Account Owner data
                accOwnerData.accountTeamFirstName=a.Owner.firstname;
                accOwnerData.accountTeamLastName=a.Owner.lastname;
                accOwnerData.accountTeamEmail=acc.Owner.Email;
                accountownerlist.add(accOwnerData);
            }

            //Logic for sending "Created By" user details in the Account Request
            
            accRequest.createdBy=createdbydata;        //Assigning the list to the "createdBy" list which is a part of AccountRequest class
            accRequest.creationDate = String.valueOf(acc.CreatedDate);
            accRequest.shippingAddressValidated = acc.Address_Validated__c;

            //Logic for sending "Last Modified By" user details in the Account Request

            accRequest.lastUpdatedBy=modifiedbydata;        //Assigning the list to the "lastUpdatedBy" list which is a part of AccountRequest class

            accRequest.lastUpdatedDate = String.valueOf(acc.LastModifiedDate);
            accRequest.isSupplier = acc.Supplier__c;
            accRequest.alternateName = acc.Alternate_Name__c;
            accRequest.supplierStatus = acc.Supplier_Status__c;

            //Logic for sending "Proposition" details in the Account Request

            accRequest.proposition=propdatalist;        //Assigning the list to the "proposition" list which is a part of AccountRequest class


            //Logic for sending "Partner Tier" details in the Account Request

            AccountManagementRASI.PartnerTier ptierdata = new AccountManagementRASI.PartnerTier();        //Creating an instance of PartnerTier class
            
            //Assigning relevant values
            
            ptierdata.Id='Id';
            ptierdata.value=(String)acc.Partner_Tier__c;
            accRequest.partnerTier=ptierdata;        //Assigning the "ptierdata" to "partnerTier"  which is a part of AccountRequest class

            //Logic for sending "Account Owner" details in the Account Request
            accRequest.accountOwner=accountownerlist; //Assigning the list "accountownerlist" to the "accountOwner" list which is a part of AccountRequest class

            //Logic for sending Country Specific fields in the Account Request

            List<AccountManagementRASI.AccountAttributes> accountAttributesList=new List<AccountManagementRASI.AccountAttributes>();

            if(acc.Business_Area_Code__c!=null)
            {
                AccountManagementRASI.AccountAttributes attribute1=new AccountManagementRASI.AccountAttributes();

                attribute1.accountAttribute='Business Area Code';
                attribute1.attributeValue=acc.Business_Area_Code__c;
                attribute1.accountId='';

                accountAttributesList.add(attribute1);
            }

            if(acc.Direct_Debit__c!=null)
            {
                AccountManagementRASI.AccountAttributes attribute2=new AccountManagementRASI.AccountAttributes();

                attribute2.accountAttribute='Direct Debit';
                attribute2.attributeValue=acc.Direct_Debit__c;
                attribute2.accountId='';

                accountAttributesList.add(attribute2);
            }

            if(acc.E_R_Purchase_Order__c!=null)
            {
                AccountManagementRASI.AccountAttributes attribute3=new AccountManagementRASI.AccountAttributes();

                attribute3.accountAttribute='E.R. Purchase Order';
                attribute3.attributeValue=acc.E_R_Purchase_Order__c;
                attribute3.accountId='';

                accountAttributesList.add(attribute3);
            }

            if(acc.Ex_Postel__c!=null)
            {
                AccountManagementRASI.AccountAttributes attribute4=new AccountManagementRASI.AccountAttributes();

                attribute4.accountAttribute='Ex-Postel';
                attribute4.attributeValue=acc.Ex_Postel__c;
                attribute4.accountId='';

                accountAttributesList.add(attribute4);
            }

            if(acc.Profession__c!=null)
            {
                AccountManagementRASI.AccountAttributes attribute5=new AccountManagementRASI.AccountAttributes();

                attribute5.accountAttribute='Profession';
                attribute5.attributeValue=acc.Profession__c;
                attribute5.accountId='';

                accountAttributesList.add(attribute5);
            }

            if(acc.RIO_Indicator__c!=null)
            {
                AccountManagementRASI.AccountAttributes attribute6=new AccountManagementRASI.AccountAttributes();

                attribute6.accountAttribute='RIO Indicator';
                attribute6.attributeValue=acc.RIO_Indicator__c;
                attribute6.accountId='';

                accountAttributesList.add(attribute6);
            }

            if(acc.Tax_Office__c!=null)
            {
                AccountManagementRASI.AccountAttributes attribute7=new AccountManagementRASI.AccountAttributes();

                attribute7.accountAttribute='Tax Office';
                attribute7.attributeValue=acc.Tax_Office__c;
                attribute7.accountId='';

                accountAttributesList.add(attribute7);
            }

            if(acc.R_I_Purchase_Order__c!=null)
            {
                AccountManagementRASI.AccountAttributes attribute8=new AccountManagementRASI.AccountAttributes();

                attribute8.accountAttribute='R.I. Purchase Order';
                attribute8.attributeValue=acc.R_I_Purchase_Order__c;
                attribute8.accountId='';

                accountAttributesList.add(attribute8);
            }

            if(!accountAttributesList.isEmpty())
            {
                accRequest.accountAttributes=accountAttributesList;
            }

            //Logic for sending Contract Type value on Location Accounts

            if(acc.Contract_Type__c!=null)
            {
                accRequest.contractType = (acc.Contract_Type__c == oldAgmtType) ? agmtType : acc.Contract_Type__c;
            }

            else
            {
                accRequest.contractType = (acc.tocAgreementType__c == oldAgmtType)? agmtType : acc.tocAgreementType__c;
            }

           //Send PS2 flag true if supplier is true for the account
            if(acc.Supplier__c)
            {
                accRequest.onlyPSIISync = 'true';
            }

            else
            {
                accRequest.onlyPSIISync = 'false';
            }
            
            if(acc.Legal_Entity__c)
            {
                accRequest.legalEntity = 'Y';
            }
            else
            {
                accRequest.legalEntity = 'N';
            }
            
            accRequest.permId = acc.OA_ID__c;
            accRequest.organisationHierarchy = acc.OrganizationHierarchy__c;
            accRequest.CJRs=acc.CJR__c;
            accRequest.initialTerm = String.valueof(acc.Order_Form_Initial_Term_in_months__c);
            accRequest.renewalTerm = String.valueof(acc.Order_Form_Renewal_Term_in_months__c);
            accRequest.noticeTerm =  String.valueof(acc.Order_Form_Cancellation_term_days__c);

            accRequest.externalBillingAccountDescription=acc.External_Billing_Note__c;  // FRO-4897

            //Mastering Account Team Flow to Siebel on Location Account
            
            List<Custom_Account_Team__c> customAccTeam = new List<Custom_Account_Team__c>();
            List<AccountManagementRASI.AccountTeamData> accTeamList = new List<AccountManagementRASI.AccountTeamData>();
            AccountManagementRASI.AccountTeamData accountTeamData = new AccountManagementRASI.AccountTeamData();
            
            customAccTeam = [ Select Id,Team_Role__c,IsDeleted, Team_Member__r.firstname,Team_Member__r.lastname,Team_Member__r.Email,
                              Team_Member__r.Phone,Team_Member__r.City,Team_Member__r.State,Team_Member__r.PostalCode,Team_Member__r.Country,
                              Team_Member__r.Street,Team_Member__r.Fax,createdBy.Name,CreatedDate,LastModifiedBy.Name,
                              LastModifiedDate,Team_Member__r.username from Custom_Account_Team__c where Account__c =: sfdcid ALL ROWS];

            if(customAccTeam.size()>0)
            {
                for(Custom_Account_Team__c cat:customAccTeam)
                {
                    System.debug(LoggingLevel.Info,'AccManagementRASI forEach customAccountTeam'+customAccTeam);
                    accountTeamData = setAccountTeamData(cat,acc.Re_trigger_date__c,acc.Siebel_Id__c,customAccTeamIds);
                    accTeamList.add(accountTeamData);
                }
            } 

            System.debug(LoggingLevel.Info,'accTeamList '+accTeamList);
            /*Logic to send account team data when team role is other then 'Sales Order Specialist','Account Manager','Order Management  Specialist'(DAAIRASI-7589) */
            if(!accTeamList.isEmpty())
            {
                System.debug(LoggingLevel.ERROR,'Entered condition where there is already a team member');

                accRequest.accountTeamData=accTeamList;
                System.debug('accRequest 1: ' + accRequest);
            }
            
            //Logic to send Local Fields on Location Account. The flow required the publishContactToSAP flag to be sent as 'Y' (FRO-4757)

            //Below block gets executed when there is already an Account Team Member eligible to be published to SAP on LA
            if(!accTeamList.isEmpty() && localFieldFlow)
            {
                System.debug(LoggingLevel.ERROR,'Entered condition where there is already a team member eligible to be published to SAP');

                accRequest.accountTeamData=accTeamList;
            }

            //Below block gets executed when there is no Account Team Member eligible to be published to SAP on LA
            else if(!accTeamList.isEmpty() && !localFieldFlow && (acc.tocLocalAccountName__c!=null || acc.tocLocalCity__c!=null || acc.tocLocalCountry__c!=null ||
            acc.tocLocalPostal__c!=null || acc.tocLocalState__c!=null || acc.tocLocalStreet__c!=null))
            {
                System.debug(LoggingLevel.ERROR,'Entered condition where there is no team member eligible to be published to SAP');
                
                AccountManagementRASI.AccountTeamData accountTeamDataForLocalFieldFlow = new AccountManagementRASI.AccountTeamData();
                accountTeamDataForLocalFieldFlow.publishContactToSAP='Y';
                accTeamList.add(accountTeamDataForLocalFieldFlow);

                accRequest.accountTeamData=accTeamList;
            }

            //Below block gets executed when there is no Account Team Member added on LA till now but the Local Fields are not empty
            else if(accTeamList.isEmpty() && (acc.tocLocalAccountName__c!=null || acc.tocLocalCity__c!=null || acc.tocLocalCountry__c!=null ||
            acc.tocLocalPostal__c!=null || acc.tocLocalState__c!=null || acc.tocLocalStreet__c!=null))
            {
                System.debug(LoggingLevel.ERROR,'Entered condition where there is no team member added on LA');

                accountTeamData.publishContactToSAP='Y';
                accTeamList.add(accountTeamData);

                accRequest.accountTeamData=accTeamList;
            }
            
            System.debug(LoggingLevel.Info,'accRequest.accountTeamData '+accRequest.accountTeamData );

            System.debug(LoggingLevel.Info,'LegacySysIds'+legacySysIds);

            AccountManagementRASI.additionalAccountRef legacySysRequest = new AccountManagementRASI.additionalAccountRef();
            List<Legacy_system_Identifiers__c> legacySysList = new List<Legacy_system_Identifiers__c>();

            if(!Schema.sObjectType.Legacy_system_Identifiers__c.fields.Id.isAccessible())
            {
                ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.ERROR,'Error: Insufficient Access'));
                return null;
            }

            legacySysList = [Select Id,Account__c,Account__r.AccountNumber,Contact__c,Ref_ID_Type__c,isSupplier__c,Value__c,
                             createdBy.Name,CreatedDate,LastModifiedBy.Name,LastModifiedDate from Legacy_system_Identifiers__c where Account__c =:SFDCId];

            List<AccountManagementRASI.additionalAccountRef> legacySystemList = new List<AccountManagementRASI.additionalAccountRef>();

            System.debug(LoggingLevel.Info,'printing legacySysList'+legacySysList);

            for (Legacy_system_Identifiers__c ls:legacySysList)
            {
                if(ls.Ref_ID_Type__c == 'CAT ID' || ls.Ref_ID_Type__c == 'EXFILES ID')
                {

                    legacySysRequest = new AccountManagementRASI.additionalAccountRef();
                    legacySysRequest.refType = ls.Ref_ID_Type__c;
                    legacySysRequest.Id = ls.Value__c;
                    System.debug('Value of CAT Id or EXFILES ID'+ls.Value__c);

                    legacySysRequest.isSupplier = ls.isSupplier__c;

                    System.debug('legacy isSupplier'+ls.isSupplier__c);
                    legacySysRequest.createdBy = ls.createdBy.Name;
                    legacySysRequest.creationDate = String.valueOf(ls.CreatedDate);

                    legacySysRequest.lastUpdatedBy = ls.LastModifiedBy.Name;
                    legacySysRequest.lastUpdatedDate = String.valueOf(ls.LastModifiedDate);
                    legacySystemList.add(legacySysRequest);
                }
            }

            System.debug('Legacy System: '+legacySystemList);
            accRequest.additionalAccountRef =legacySystemList;
            System.debug('Additional Account: '+accRequest.additionalAccountRef);
            System.debug('The value partner role is is: ' + accRequest);

            PublishTrustAccounts publishacc=new PublishTrustAccounts();
            publishacc.accountRequest=accRequest;

            PublishAccountData publishaccdata=new PublishAccountData();
            publishaccdata.publishTrustAccounts=publishacc;
            return publishaccdata;
        }

        return null;
    }

    public static PublishAccountData prepareBillingJson(String sfdcId,String actionCode)
    {
        //Querying for the Billing Account field values to be sent to Dell Boomi


        tocSubscriber__c[] billingArray = [Select Id,Name,Financial_Charges__c,Name__c,SAP_Inactive_Flag__c, Account__c,
                                           Account_Class__c,Billing_Address__c, Account_Status__c, StreetAddress__c, City__c, Country__c, Postal_Code__c,
                                           Primary__c, Account_Number__c, Local_Building__c,Local_City__c, Local_Country__c, Local_Name__c, Local_Postal_Code__c,
                                           Local_State_Province__c, Local_Street_Address__c, State_Province__c, Billing_Type__c, Internal_Account__c, Soft_Dollar_Code__c,
                                           Sub_Account_Number__c, Siebel_Id__c, Currency_Read_Only__c,Billing_Currency_For__c,Billing_Frequency__c,Invoice_Output__c,
                                           CoreSuite_Status__c,Invoice_Special_Handling__c,Payment_Terms__c,tocCMRelationIdBill__c,tfcmCustomerMasterIdBill__c,
                                           Billing_Language__c,CS_Integration_Flag__c,Subscriber_Short_Name__c,City_Code__c,Account_Family__c,Internal_Billing_Account_Description__c,
                                           Business_Channel__c,Soft_Dollar_Broker__c,Building__c,VAT_Geo_Code__c,External_Billing_Account_Description__c,Tax_Code__c,
                                           GRC_Account__c,Site__c,Publish_Account_To_SAP_Integration__c,Business_Area_Code__c,Direct_Debit__c,E_R_Purchase_Order__c,Ex_Postel__c,
                                           Profession__c,RIO_Indicator__c,Tax_Office__c,R_I_Purchase_Order__c,Re_trigger_date__c from tocSubscriber__c where Id =:sfdcId limit 1 ];

        tocSubscriber__c sfdcBill = billingArray[0];

        System.debug('sfdcBill : ' + sfdcBill);
        System.debug('sfdcId @@@@@@@: ' + sfdcId );

        Account parentLoc = [Select Id, AccountNumber,Siebel_Id__c,Segment__c,ShippingStreet,ShippingCity,ShippingState,ShippingCountry,Parent_ANumber__c,
                             ShippingPostalCode,Subscriber_Country_Code__c,Legal_Entity__c,Ultimate_Parent_Account_Number__c,Ultimate_Parent_Siebel_Id__c,Ult_Prnt_Act_No__c from Account where Id = :sfdcBill.Account__c limit 1 ];

        System.debug('Billing Address Parent Account : ' + parentLoc);

        AccountRequest eaiBill = new AccountRequest();

        eaiBill.SFDCId = sfdcBill.Id;
        eaiBill.name = sfdcBill.Name__c;
        eaiBill.sourceSystem='SFDC';

        if(sfdcBill.Primary__c == true)
        {
            eaiBill.isPrimaryBilling = 'Y';
        }

        else
        {
            eaiBill.isPrimaryBilling = 'N';
        }

        eaiBill.actionCode = actionCode;
        eaiBill.shippingStreet = sfdcBill.StreetAddress__c;
        eaiBill.shippingCity = sfdcBill.City__c;
        eaiBill.shippingState = sfdcBill.State_Province__c;
        eaiBill.shippingCountry = sfdcBill.Country__c;
        eaiBill.shippingPostal = sfdcBill.Postal_Code__c;
        eaiBill.hierarchyType = sfdcBill.Billing_Type__c;
        eaiBill.parentAccountId = parentLoc.Siebel_id__c;
        eaiBill.ultimateParentAccountId = parentLoc.Ultimate_Parent_Siebel_Id__c;
        eaiBill.parentAccount=parentLoc.AccountNumber;
        eaiBill.ultimateParent = parentLoc.Ult_Prnt_Act_No__c;
        eaiBill.localBuilding = sfdcBill.Local_Building__c;
        eaiBill.localCity= sfdcBill.Local_City__c;
        eaiBill.localCountry= sfdcBill.Local_Country__c;
        eaiBill.localAccountName = sfdcBill.Local_Name__c;
        eaiBill.localPostal= sfdcBill.Local_Postal_Code__c;
        eaiBill.localState= sfdcBill.Local_State_Province__c;
        eaiBill.localStreet= sfdcBill.Local_Street_Address__c;
        eaiBill.billingCurrency=sfdcBill.Billing_Currency_For__c;
        eaiBill.siebelAccountStatus=sfdcBill.Account_Status__c;
        eaiBill.siebelId = sfdcBill.Siebel_Id__c;
        eaiBill.accountANumber = sfdcBill.Account_Number__c;
        eaiBill.organisationTypeDesc =parentLoc.Segment__c;
        eaiBill.subscriberCountryCode=parentLoc.Subscriber_Country_Code__c;
        eaiBill.billingContactPayer=sfdcBill.Billing_Address__c;
        eaiBill.payTerms=sfdcBill.Payment_Terms__c;
        eaiBill.billingFrequency=sfdcBill.Billing_Frequency__c;
        eaiBill.coreSuiteStatus=sfdcBill.CoreSuite_Status__c;
        eaiBill.invoiceOutput=sfdcBill.Invoice_Output__c;
        eaiBill.hardcopyDispatchMethod=sfdcBill.Invoice_Special_Handling__c;
        eaiBill.subscriberCountry=sfdcBill.Country__c;
        eaiBill.subAccountName=sfdcBill.Name__c;
        eaiBill.BillingLanguage = sfdcBill.Billing_Language__c;
        eaiBill.subAccNumber=sfdcBill.Sub_Account_Number__c;
        eaiBill.subscriberNumber=sfdcBill.Name;
        eaiBill.primaryAccountCountry =parentLoc.ShippingCountry;
        eaiBill.primaryAccountCity =parentLoc.ShippingCity;

        if(!Test.isRunningTest())
        {
            if(parentLoc.ShippingCountry.equals('United States') || parentLoc.ShippingCountry.equals('Barbados')
               || parentLoc.ShippingCountry.equals('Bermuda') || parentLoc.ShippingCountry.equals('Bahamas')
               || parentLoc.ShippingCountry.equals('Dominican Republic') || parentLoc.ShippingCountry.equals('Jamaica')
               || parentLoc.ShippingCountry.equals('Saint Kitts and Nevis') || parentLoc.ShippingCountry.equals('Cayman Islands')
               || parentLoc.ShippingCountry.equals('Puerto Rico') || parentLoc.ShippingCountry.equals('Turks and Caicos Islands')
               || parentLoc.ShippingCountry.equals('Trinidad and Tobago') || parentLoc.ShippingCountry.equals('Virgin Islands (U.S.)'))
            {
                eaiBill.IRASReference='CH1';
            }

            else if(parentLoc.ShippingCountry.equals('Canada'))
            {
                eaiBill.IRASReference='RT1';
            }

            else
            {
                eaiBill.IRASReference='001';
            }
        }

        if(sfdcBill.Publish_Account_To_SAP_Integration__c)
        {
            eaiBill.publishAccountToSAP='Y';
        }
        else
        {
            eaiBill.publishAccountToSAP='N';
        }

        if(sfdcBill.Currency_Read_Only__c)
        {
            eaiBill.orderCreationFlag = 'Y';
        }
        else
        {
            eaiBill.orderCreationFlag = 'N';
        }

        eaiBill.accountClass = sfdcBill.Account_Class__c;
        eaiBill.accountCAID = sfdcBill.tocCMRelationIdBill__c;
        eaiBill.TCID= sfdcBill.tfcmCustomerMasterIdBill__c;
        eaiBill.financialCharges = sfdcBill.Financial_Charges__c;
        eaiBill.softDollarCode=sfdcBill.Soft_Dollar_Code__c;
        eaiBill.invoiceDeliveryMethod=sfdcBill.Invoice_Output__c;
        eaiBill.MCCCode=sfdcBill.Account_Family__c;
        eaiBill.internalBillingAccountDescription=sfdcBill.Internal_Billing_Account_Description__c;
        eaiBill.businessChannel=sfdcBill.Business_Channel__c;
        eaiBill.softDollarBroker=sfdcBill.Soft_Dollar_Broker__c;
        eaiBill.building=sfdcBill.Building__c;
        eaiBill.VATCode=sfdcBill.VAT_Geo_Code__c;
        eaiBill.externalBillingAccountDescription=sfdcBill.External_Billing_Account_Description__c;
        eaiBill.taxCode=sfdcbill.Tax_Code__c;
        eaiBill.nomCustomerGroup=sfdcbill.GRC_Account__c;
        eaiBill.site=sfdcbill.Site__c;

        if(sfdcBill.CS_Integration_Flag__c)
        {
            eaiBill.CSIntegrationFlag ='Y';
        }
        else
        {
            eaiBill.CSIntegrationFlag ='N';
        }

        if(sfdcBill.SAP_Inactive_Flag__c)
        {
            eaiBill.SAPInactiveFlag='Y';
        }
        else
        {
            eaiBill.SAPInactiveFlag='N';
        }

        if(sfdcBill.Internal_Account__c)
        {
            eaiBill.internalAccFlag = 'Y';
        }

        else
        {
            eaiBill.internalAccFlag = 'N';
        }

        //Logic for sending Location Account Address Details on Billing Account
        eaiBill.locationStreet=parentLoc.ShippingStreet;
        eaiBill.locationCity=parentLoc.ShippingCity;
        eaiBill.locationState=parentLoc.ShippingState;
        eaibill.locationCountry=parentLoc.ShippingCountry;
        eaibill.locationPostal=parentLoc.ShippingPostalCode;

        //Logic for sending Country Specific fields in the Account Request
        List<AccountManagementRASI.AccountAttributes> accountAttributesList=new List<AccountManagementRASI.AccountAttributes>();

        if(sfdcBill.Business_Area_Code__c!=null)
        {
            AccountManagementRASI.AccountAttributes attribute1=new AccountManagementRASI.AccountAttributes();

            attribute1.accountAttribute='Business Area Code';
            attribute1.attributeValue=sfdcBill.Business_Area_Code__c;
            attribute1.accountId='';

            accountAttributesList.add(attribute1);
        }

        if(sfdcBill.Direct_Debit__c!=null)
        {
            AccountManagementRASI.AccountAttributes attribute2=new AccountManagementRASI.AccountAttributes();

            attribute2.accountAttribute='Direct Debit';
            attribute2.attributeValue=sfdcBill.Direct_Debit__c;
            attribute2.accountId='';

            accountAttributesList.add(attribute2);
        }

        if(sfdcBill.E_R_Purchase_Order__c!=null)
        {
            AccountManagementRASI.AccountAttributes attribute3=new AccountManagementRASI.AccountAttributes();

            attribute3.accountAttribute='E.R. Purchase Order';
            attribute3.attributeValue=sfdcBill.E_R_Purchase_Order__c;
            attribute3.accountId='';

            accountAttributesList.add(attribute3);
        }

        if(sfdcBill.Ex_Postel__c!=null)
        {
            AccountManagementRASI.AccountAttributes attribute4=new AccountManagementRASI.AccountAttributes();

            attribute4.accountAttribute='Ex-Postel';
            attribute4.attributeValue=sfdcBill.Ex_Postel__c;
            attribute4.accountId='';

            accountAttributesList.add(attribute4);
        }

        if(sfdcBill.Profession__c!=null)
        {
            AccountManagementRASI.AccountAttributes attribute5=new AccountManagementRASI.AccountAttributes();

            attribute5.accountAttribute='Profession';
            attribute5.attributeValue=sfdcBill.Profession__c;
            attribute5.accountId='';

            accountAttributesList.add(attribute5);
        }

        if(sfdcBill.RIO_Indicator__c!=null)
        {
            AccountManagementRASI.AccountAttributes attribute6=new AccountManagementRASI.AccountAttributes();

            attribute6.accountAttribute='RIO Indicator';
            attribute6.attributeValue=sfdcBill.RIO_Indicator__c;
            attribute6.accountId='';

            accountAttributesList.add(attribute6);
        }

        if(sfdcBill.Tax_Office__c!=null)
        {
            AccountManagementRASI.AccountAttributes attribute7=new AccountManagementRASI.AccountAttributes();

            attribute7.accountAttribute='Tax Office';
            attribute7.attributeValue=sfdcBill.Tax_Office__c;
            attribute7.accountId='';

            accountAttributesList.add(attribute7);
        }

        if(sfdcBill.R_I_Purchase_Order__c!=null)
        {
            AccountManagementRASI.AccountAttributes attribute8=new AccountManagementRASI.AccountAttributes();

            attribute8.accountAttribute='R.I. Purchase Order';
            attribute8.attributeValue=sfdcBill.R_I_Purchase_Order__c;
            attribute8.accountId='';

            accountAttributesList.add(attribute8);
        }

        if(!accountAttributesList.isEmpty())
        {
            eaiBill.accountAttributes=accountAttributesList;
        }

        //Sending Location Account Team details on Billing Account (FRO-4755)

        List<Custom_Account_Team__c> customAccTeam = new List<Custom_Account_Team__c>();
        List<AccountManagementRASI.AccountTeamData> accTeamList = new List<AccountManagementRASI.AccountTeamData>();
        AccountManagementRASI.AccountTeamData accountTeamData = new AccountManagementRASI.AccountTeamData();
        Set<Id> customAccTeamIds=new Set<Id>();
            
        customAccTeam=[Select Id,Team_Role__c,IsDeleted, Team_Member__r.firstname,Team_Member__r.lastname,Team_Member__r.Email,
        Team_Member__r.Phone,Team_Member__r.City,Team_Member__r.State,Team_Member__r.PostalCode,Team_Member__r.Country,
        Team_Member__r.Street,Team_Member__r.Fax,createdBy.Name,CreatedDate,LastModifiedBy.Name,
        LastModifiedDate,Team_Member__r.username from Custom_Account_Team__c where Account__c =:parentLoc.Id ALL ROWS];

        if(!customAccTeam.isEmpty())
        {
            System.debug(LoggingLevel.ERROR,'Parsing Account Team Members and Creating Set of Id');

            for(Custom_Account_Team__c accountTeamMember:customAccTeam)
            {
                customAccTeamIds.add(accountTeamMember.Id);
            }
        }
            
        if(!customAccTeam.isEmpty())
        {
            for(Custom_Account_Team__c accountTeamMember:customAccTeam)
            {
                System.debug(LoggingLevel.ERROR,'Parsing Account Team Member on Billing Account: '+accountTeamMember);

                accountTeamData=setAccountTeamData(accountTeamMember,sfdcBill.Re_trigger_date__c,sfdcBill.Siebel_Id__c,customAccTeamIds);
                accTeamList.add(accountTeamData);
            }
        } 

        System.debug(LoggingLevel.ERROR,'accTeamList on Billing Account: '+accTeamList);

        //Logic to send Local Fields on Billing Account. The flow required the publishContactToSAP flag to be sent as 'Y' (FRO-4757)

        //Below block gets executed when there is already an Account Team Member eligible to be published to SAP on LA
        if(!accTeamList.isEmpty() && localFieldFlow)
        {
            System.debug(LoggingLevel.ERROR,'Entered condition on BA where there is already a team member eligible to be published to SAP');

            eaiBill.accountTeamData=accTeamList;
        }

        //Below block gets executed when there is no Account Team Member eligible to be published to SAP on LA
        else if(!accTeamList.isEmpty() && !localFieldFlow && (sfdcBill.Local_Name__c!=null || sfdcBill.Local_City__c!=null || sfdcBill.Local_Country__c!=null ||
        sfdcBill.Local_Postal_Code__c!=null || sfdcBill.Local_State_Province__c!=null || sfdcBill.Local_Street_Address__c!=null || sfdcBill.Local_Building__c!=null))
        {
            System.debug(LoggingLevel.ERROR,'Entered condition on BA where there is no team member eligible to be published to SAP');
                
            AccountManagementRASI.AccountTeamData accountTeamDataForLocalFieldFlow = new AccountManagementRASI.AccountTeamData();
            accountTeamDataForLocalFieldFlow.publishContactToSAP='Y';
            accTeamList.add(accountTeamDataForLocalFieldFlow);

            eaiBill.accountTeamData=accTeamList;
        }

        //Below block gets executed when there is no Account Team Member added on LA till now but the Local Fields are not empty on BA
        else if(accTeamList.isEmpty() && (sfdcBill.Local_Name__c!=null || sfdcBill.Local_City__c!=null || sfdcBill.Local_Country__c!=null ||
        sfdcBill.Local_Postal_Code__c!=null || sfdcBill.Local_State_Province__c!=null || sfdcBill.Local_Street_Address__c!=null || sfdcBill.Local_Building__c!=null))
        {
            System.debug(LoggingLevel.ERROR,'Entered condition on BA where there is no team member added on LA');

            accountTeamData.publishContactToSAP='Y';
            accTeamList.add(accountTeamData);

            eaiBill.accountTeamData=accTeamList;
        }
            
        System.debug(LoggingLevel.ERROR,'eaiBill.accountTeamData on Billing Account: '+eaiBill.accountTeamData );

        System.debug(LoggingLevel.INFO,'Final Message to Boomi: ' + eaiBill);

        PublishTrustAccounts publisheaibill=new PublishTrustAccounts();
        publisheaibill.accountRequest=eaiBill;

        PublishAccountData publisheaibilldata=new PublishAccountData();
        publisheaibilldata.publishTrustAccounts=publisheaibill;
        return publisheaibilldata;
    }

    global class TRUSTResponse
    {
        public String StatusCode;
        public String StatusDescription;
        public String SFDCId;
        public String siebelId;
        public String Comments;
        public String businessChannel;
        public String relationshipModel;
        public Boolean isSuccess;
        public String errorMessage;
        public String responseBodyJSON;
    }

    public static MessageHeader sendmsgtoRASI()
    {
        MessageHeader eaiHdr =new MessageHeader();
        Date cDate = System.today();
        DateTime dtime = System.now();
        eaiHdr.applicationId='111';
        eaiHdr.transactionId = '1111';
        eaiHdr.messageId= '1111';
        eaiHdr.messageHistory ='24234';
        eaiHdr.tracingId ='45345';
        eaiHdr.timeStamp=String.valueOf(dtime);
        eaiHdr.instanceId='34534545';
        eaiHdr.timeToLive = 0;
        eaiHdr.payloadVersion='aaa';
        return eaiHdr;
    }

    public static AccountManagementRASI.AccountTeamData setAccountTeamData(Custom_Account_Team__c cat, String Re_trigger_date,String siebelIdVal,Set<Id> custAccountTeamIds)
    {
        AccountManagementRASI.AccountTeamData accountTeamData = new AccountManagementRASI.AccountTeamData();
                
        if(Test.isRunningTest())
        {
            accountTeamData.contactWorkNumber=cat.Team_Member__r.Phone;
            accountTeamData.activePhone=cat.Team_Member__r.Phone;
        }
        else
        {
            accountTeamData.contactWorkNumber= cat.Team_Member__r.Phone != null ? cat.Team_Member__r.Phone.replaceAll('[^a-zA-Z0-9\\s+]', '') : cat.Team_Member__r.Phone;
            accountTeamData.activePhone= cat.Team_Member__r.Phone != null ? cat.Team_Member__r.Phone.replaceAll('[^a-zA-Z0-9\\s+]', '') : cat.Team_Member__r.Phone;
        }
        
        accountTeamData.contactState=cat.Team_Member__r.State;
        accountTeamData.contactPostalCode=cat.Team_Member__r.PostalCode;
        accountTeamData.contactFaxNumber=cat.Team_Member__r.Fax;
        accountTeamData.contactCountry=cat.Team_Member__r.Country;
        accountTeamData.contactCity=cat.Team_Member__r.City;
        accountTeamData.contactAddress=cat.Team_Member__r.Street;
        accountTeamData.accountTeamFirstName = cat.Team_Member__r.firstname;
        accountTeamData.accountTeamLastName  = cat.Team_Member__r.lastname;
        accountTeamData.accountTeamJobTitle = cat.Team_Role__c;
        accountTeamData.accountTeamEmail = cat.Team_Member__r.Email;
        accountTeamData.createdBy = cat.createdBy.Name;
        accountTeamData.creationDate = String.valueOf(cat.CreatedDate);
        accountTeamData.lastUpdatedBy = cat.LastModifiedBy.Name;
        accountTeamData.lastUpdatedDate = String.valueOf(cat.LastModifiedDate);
        accountTeamData.activeFirstName=cat.Team_Member__r.firstname;
        accountTeamData.activeLastName=cat.Team_Member__r.lastname;
        
        System.debug(LoggingLevel.Info,'AccountManagementRASI:sendAccountTeamdData,TrimmedWorkPhone'+accountTeamData.contactWorkNumber+' TrimmedActivePhone '+accountTeamData.activePhone);

        if(cat.Team_Role__c=='Media Account Manager'|| cat.Team_Role__c=='TR Account Manager')
        {
            accountTeamData.positionType='Account Manager';
            accountTeamData.publishContactToSAP='Y';
        }

        else if(cat.Team_Role__c=='Sales Order Specialist')
        {
            accountTeamData.positionType='Order Management Specialist';
            accountTeamData.publishContactToSAP='Y';
        }

        else 
        {
            accountTeamData.positionType=cat.Team_Role__c;

            if(cat.Team_Role__c=='Account Manager'|| cat.Team_Role__c=='Order Management Specialist')
            {
                accountTeamData.publishContactToSAP='Y';
            }

            else
            {
                accountTeamData.publishContactToSAP='N';
            }
        }

        System.debug(LoggingLevel.Info,'passed custAccountTeamIds to sendAccountTeamdData'+custAccountTeamIds);
        
        if(custAccountTeamIds!=null)
        {
            System.debug(LoggingLevel.Info,'AccountManagementRASI:sendAccountTeamdData if AcctTeamIds '+custAccountTeamIds+' contains id='+cat.id+' and IsDeleted='+cat.IsDeleted);

            if(custAccountTeamIds.contains(cat.Id))
            {
                if(cat.IsDeleted==true)
                {
                    accountTeamData.actionCode = 'Delete';
                }
                else
                {
                    accountTeamData.actionCode = '';
                }
            }

            else
            {
                accountTeamData.actionCode = 'NO_ACTION';
            }
        }

        else
        {
            accountTeamData.actionCode = 'NO_ACTION';
        }

        if(cat.IsDeleted==true && accountTeamData.actionCode.equalsIgnorecase('NO_ACTION'))
        {
            accountTeamData = null;
        }

        System.debug(LoggingLevel.Info,'AccountManagementRASI:sendAccountTeamdData,returning accountTeamData'+accountTeamData);

        if(accountTeamData != null && accountTeamData.publishContactToSAP=='Y')
        {
            localFieldFlow=true;
        }

        System.debug(LoggingLevel.ERROR,'Value of localFieldFlow in setAccountTeamData() '+localFieldFlow);

        return accountTeamData;
    } 
}