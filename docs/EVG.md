---
title: Guidelines for the Issuance and Management of Extended Validation Certificates
subtitle: Version 2.0.0
author:
  - CA/Browser Forum
date: 8 June, 2023
copyright: |
  Copyright 2023 CA/Browser Forum

  This work is licensed under the Creative Commons Attribution 4.0 International license.
---

# 1.  INTRODUCTION
The Guidelines describe an integrated set of technologies, protocols, identity proofing, lifecycle management, and auditing practices specifying the minimum requirements that must be met in order to issue and maintain Extended Validation Certificates ("EV Certificates") concerning an organization.  Subject Organization information from valid EV Certificates can then be used in a special manner by certain relying-party software applications (e.g., browser software) in order to provide users with a trustworthy confirmation of the identity of the entity that controls the Web site or other services they are accessing.  Although initially intended for use in establishing Web-based data communication conduits via TLS/SSL protocols, extensions are envisioned for S/MIME, time-stamping, VoIP, IM, Web services, etc.

The primary purposes of Extended Validation Certificates are to: 1) identify the legal entity that controls a Web or service site, and 2) enable encrypted communications with that site.  The secondary purposes include significantly enhancing cybersecurity by helping establish the legitimacy of an organization claiming to operate a Web site, and providing a vehicle that can be used to assist in addressing problems related to distributing malware, phishing, identity theft, and diverse forms of online fraud.

**Notice to Readers**

The Guidelines for the Issuance and Management of Extended Validation Certificates present criteria established by the CA/Browser Forum for use by certification authorities when issuing, maintaining, and revoking certain digital certificates for use in Internet Web site commerce.  These Guidelines may be revised from time to time, as appropriate, in accordance with procedures adopted by the CA/Browser Forum.  Questions or suggestions concerning these guidelines may be directed to the CA/Browser Forum at <questions@cabforum.org>.

**The CA/Browser Forum**

The CA/Browser Forum is a voluntary open organization of certification authorities and suppliers of Internet browsers and other relying-party software applications.  Membership is listed at <https://cabforum.org/members/>.
## 1.1  Scope
These Guidelines for the issuance and management of Extended Validation Certificates describe certain of the minimum requirements that a Certification Authority must meet in order to issue Extended Validation Certificates.   Subject Organization information from Valid EV Certificates may be displayed in a special manner by certain relying-party software applications (e.g., browser software) in order to provide users with a trustworthy confirmation of the identity of the entity that controls the Web site they are accessing. These Guidelines incorporate the Baseline Requirements established by the CA/Browser Forum by reference.  A copy of the Baseline Requirements is available on the CA/Browser Forum's website at <https://www.cabforum.org/>.

These Guidelines address the basic issue of validating Subject identity information in EV Certificates and some related matters.   They do not address all of the related matters, such as certain technical and operational ones. This version of the Guidelines addresses only requirements for EV Certificates intended to be used for SSL/TLS authentication on the Internet and for code signing.  Similar requirements for S/MIME, time-stamping, VoIP, IM, Web services, etc. may be covered in future versions.

These Guidelines do not address the verification of information, or the issuance, use, maintenance, or revocation of EV Certificates by enterprises that operate their own Public Key Infrastructure for internal purposes only, where its Root CA Certificate is not distributed by any Application Software Supplier.

## 1.2  Document name and identification
### 1.2.1  Revisions
| **Ver.** | **Ballot** | **Description** | **Adopted** | **Effective\*** |
|-|-|-----|--|--|
| 1.4.0 | 72 | Reorganize EV Documents | 29 May 2012 | 29 May 2012 |
| 1.4.1 | 75 | NameConstraints Criticality Flag | 8 June 2012 | 8 June 2012 |
| 1.4.2 | 101 | EV 11.10.2 Accountants | 31 May 2013 | 31 May 2013 |
| 1.4.3 | 104 | Domain verification for EV Certificates | 9 July 2013 | 9 July 2013 |
| 1.4.4 | 113 | Revision to QIIS in EV Guidelines | 13 Jan 2014 | 13 Jan 2014 |
| 1.4.5 | 114 | Improvements to the EV Definitions | 28 Jan 2014 | 28 Jan 2014 |
| 1.4.6 | 119 | Remove "OfIncorporation" from OID descriptions in EVG 9.2.5 | 24 Mar 2014 | 24 Mar 2014 |
| 1.4.7 | 120 | Affiliate Authority to Verify Domain | 5 June 2014 | 5 June 2014 |
| 1.4.8 | 124 | Business Entity Clarification | 5 June 2014 | 5 June 2014 |
| 1.4.9 | 127 | Verification of Name, Title and Agency | 17 July 2014 | 17 July 2014 |
| 1.5.0 | 126 | Operational Existence | 24 July 2014 | 24 July 2014 |
| 1.5.1 | 131 | Verified Method of Communication | 12 Sept 2014 | 12 Sept 2014 |
| 1.5.2 | 123 | Reuse of Information | 16 Oct. 2014 | 16 Oct. 2014 |
| 1.5.3 | 144 | Validation rules for .onion names | 18 Feb. 2015 | 18 Feb. 2015 |
| 1.5.4 | 146 | Convert Baseline Requirements to RFC 3647 Framework | 16 Apr. 2015 | 16 Apr. 2015 |
| 1.5.5 | 145 | Operational Existence for Government Entities | 5 Mar. 2015 | 5 Mar. 2015 |
| 1.5.6 | 147 | Attorney-Accountant Letter Changes | 25 June 2015 | 25 June 2015 |
| 1.5.7 | 151 | Addition of Optional OIDs for Indicating Level of Validation | 28 Sept 2015 | 28 Sept 2015 |
| 1.5.8 | 162 | Sunset of Exceptions | 15 Mar 2016 | 15 Mar 2016 |
| 1.5.9 | 163 | Fix Errata in EV Guidelines 11.2.1 | 18 Mar 2016 | 18 Mar 2016 |
| 1.6.0 | 171 | Updating ETSI Standards | 1 July 2016  | 1 July 2016   |
| 1.6.1 | 180 | In EV 11.7.1, removed outdated cross-reference to BR 3.2.2.4(7)  | 7 Jan. 2017  | 7 Jan. 2017   |
| 1.6.2 | 103 | 825-day Certificate Lifetimes | 17 Mar. 2017 | 17 Mar. 2017 |
| 1.6.3 | 198 | .Onion Revisions (declared invalid) | 7 May 2017 | 8 June 2017 |
| 1.6.4 | 191 | Clarify Place of Business Information | 23 May 2017 | 23 June 2017 |
| 1.6.5 | 201 | .onion Revisions | 8 June 2017 | 8 July 2017 |
| 1.6.6 | 192 | Notary revision | 28 June 2017 | 28 July 2017 |
| 1.6.7 | 207 | ASN.1 Jurisdiction | 23 October 2017 | 23 November 2017 |
| 1.6.8 | 217 | Sunset RFC 2527 | 21 Dec 2017 | 9 Mar 2018 |
| 1.6.9 | SC16 | Other Subject Attributes | 15 Mar 2019 | 16 Apr 2019 |
| 1.7.0 | SC17 | Alternative registration numbers for EV certificates | 21 May 2019 | 21 June 2019 |
| 1.7.1 | SC24 | Fall cleanup v2 | 12 Nov 2019 | 19 Dec 2019 |
| 1.7.2 | SC27 | Version 3 Onion Certificates | 19-Feb-2020 | 27-Mar-2020 |
| 1.7.3 | SC30 | Disclosure of Registration / Incorporating Agency | 13-Jul-2020 | 20-Aug-2020 |
| 1.7.3 | SC31 | Browser Alignment | 16-Jul-2020 | 20-Aug-2020 |
| 1.7.4 | SC35 | Cleanups and Clarifications | 9-Sep-2020 | 19-Oct-2020 |
| 1.7.5 | SC41 | Reformatting the BRs, EVGs, and NCSSRs | 24-Feb-2021 | 5-Apr-2021 |
| 1.7.6 | SC42 | 398-day Re-use Period | 22-Apr-2021 | 2-Jun-2021 |
| 1.7.7 | SC47 | Sunset subject:organizationalUnitName | 30-Jun-2021 | 16-Aug-2021 |
| 1.7.8 | SC48 | Domain Name and IP Address Encoding | 22-Jul-2021 | 25-Aug-2021 |
| 1.7.9 | SC54 | Onion Cleanup | 24-Mar-2022 | 23-Apr-2022 |
| 1.8.0 | SC56 | 2022 Cleanup | 25-Oct-2022 | 30-Nov-2022 |

\* Effective Date and Additionally Relevant Compliance Date(s)

## Relevant Dates

| **Compliance** | **Section(s)** | **Summary Description (See Full Text for Details)** |
|--|--|----------|
| 2020-01-31 | [9.2.8](#928-subject-organization-identifier-field) | If subject:organizationIdentifier is present, the CA/Browser Forum Organization Identifier Extension MUST be present |
| 2020-09-01 | [9.4](#94-maximum-validity-period-for-ev-certificate) & Appendix F | Certificates issued MUST NOT have a Validity Period greater than 398 days. |
| 2020-10-01 | [11.1.3](#1113-disclosure-of-verification-sources) | Prior to using an Incorporating Agency or Registration Agency, the CA MUST ensure the agency has been publicly disclosed |
| 2022-09-01 | [9.2.7](#927-subject-organizational-unit-name-field) | CAs MUST NOT include the organizationalUnitName field in the Subject |

**Implementers' Note**: Version 1.3 of these EV Guidelines was published on 20 November 2010 and supplemented through May 2012 when version 1.4 was published.  ETSI TS 102 042 and ETSI TR 101 564 Technical Report: Guidance on ETSI TS 102 042 for Issuing Extended Validation Certificates for Auditors and CSPs reference version 1.3 of these EV Guidelines, and ETSI Draft EN 319 411-1 references version 1.4.  Version 1.4.5 of Webtrust(r) for Certification Authorities – Extended Validation Audit Criteria references version 1.4.5 of these EV Guidelines.  As illustrated in the Document History table above, the CA/Browser Forum continues to improve relevant industry guidelines, including this document, the Baseline Requirements, and the Network and Certificate System Security Requirements.  We encourage all CAs to conform to each revision on the date specified without awaiting a corresponding update to an applicable audit criterion.  In the event of a conflict between an existing audit criterion and a guideline revision, we will communicate with the audit community and attempt to resolve any uncertainty. We will respond to implementation questions directed to questions@cabforum.org.  Our coordination with compliance auditors will continue as we develop guideline revision cycles that harmonize with the revision cycles for audit criteria, the compliance auditing periods and cycles of CAs, and the CA/Browser Forum's guideline implementation dates.

## 1.3  PKI participants
### 1.3.1  Certification authorities
### 1.3.2  Registration authorities
The CA MAY delegate the performance of all or any part of a requirement of these Guidelines to an Affiliate or a Registration Authority (RA) or subcontractor, provided that the process employed by the CA fulfills all of the requirements of [Section 11.13](#1113-final-cross-correlation-and-due-diligence).
Affiliates and/or RAs must comply with the qualification requirements of [Section 14.1](#141-trustworthiness-and-competence).

The CA SHALL verify that the Delegated Third Party's personnel involved in the issuance of a Certificate meet the training and skills requirements of [Section 14](#14-employee-and-third-party-issues) and the document retention and event logging requirements of [Section 15](#15-data-records).

In all cases, the CA MUST contractually obligate each Affiliate, RA, subcontractor, and Enterprise RA to comply with all applicable requirements in these Guidelines and to perform them as required of the CA itself.  The CA SHALL enforce these obligations and internally audit each Affiliate's, RA's, subcontractor's, and Enterprise RA's compliance with these Requirements on an annual basis.
#### 1.3.2.1  Enterprise Registration authorities
The CA MAY contractually authorize a Subscriber to perform the RA function and authorize the CA to issue additional EV Certificates.  In such case, the Subscriber SHALL be considered an Enterprise RA, and the following requirements SHALL apply:

1. In all cases, the Subscriber MUST be an organization verified by the CA in accordance with these Guidelines;
2. The CA MUST impose these limitations as a contractual requirement with the Enterprise RA and monitor compliance by the Enterprise RA; and
3. The Final Cross-Correlation and Due Diligence requirements of [Section 11.13](#1113-final-cross-correlation-and-due-diligence) MAY be performed by a single person representing the Enterprise RA.

Enterprise RAs that authorize the issuance of EV Certificates solely for its own organization are exempted from the audit requirements of [Section 17.1](#171-eligible-audit-schemes). In all other cases, the requirements of [Section 17.1](#171-eligible-audit-schemes) SHALL apply.

### 1.3.3  Subscribers
### 1.3.4 Relying parties
### 1.3.5  Other participants
## 1.4  Certificate usage
### 1.4.1  Appropriate certificate uses
EV Certificates are intended for establishing Web-based data communication conduits via the TLS/SSL protocols and for verifying the authenticity of executable code.

#### 1.4.1.1. Primary Purposes

The primary purposes of an EV Certificate are to:

1. **Identify the legal entity that controls a Web site**: Provide a reasonable assurance to the user of an Internet browser that the Web site the user is accessing is controlled by a specific legal entity identified in the EV Certificate by name, address of Place of Business, Jurisdiction of Incorporation or Registration and Registration Number or other disambiguating information; and

2. **Enable encrypted communications with a Web site**: Facilitate the exchange of encryption keys in order to enable the encrypted communication of information over the Internet between the user of an Internet browser and a Web site.

#### 1.4.1.2. Secondary Purposes

The secondary purposes of an EV Certificate are to help establish the legitimacy of a business claiming to operate a Web site or distribute executable code, and to provide a vehicle that can be used to assist in addressing problems related to phishing, malware, and other forms of online identity fraud.  By providing more reliable third-party verified identity and address information regarding the business, EV Certificates may help to:

1. Make it more difficult to mount phishing and other online identity fraud attacks using Certificates;
2. Assist companies that may be the target of phishing attacks or online identity fraud by providing them with a tool to better identify themselves to users; and
3. Assist law enforcement organizations in their investigations of phishing and other online identity fraud, including where appropriate, contacting, investigating, or taking legal action against the Subject.

### 1.4.2 Prohibited certificate uses
EV Certificates focus only on the identity of the Subject named in the Certificate, and not on the behavior of the Subject.  As such, an EV Certificate is **not** intended to provide any assurances, or otherwise represent or warrant:

1. That the Subject named in the EV Certificate is actively engaged in doing business;
2. That the Subject named in the EV Certificate complies with applicable laws;
3. That the Subject named in the EV Certificate is trustworthy, honest, or reputable in its business dealings; or
4. That it is "safe" to do business with the Subject named in the EV Certificate.
## 1.5  Policy administration
### 1.5.1  Organization administering the document
### 1.5.2  Contact person
### 1.5.3  Person determining CPS suitability for the policy
### 1.5.4  CPS approval procedures
## 1.6  Definitions and acronyms
### 1.6.1  Definitions
Capitalized Terms are defined in the Baseline Requirements except where provided below:

**Accounting Practitioner**: A certified public accountant, chartered accountant, or a person with an equivalent license within the country of the Applicant's Jurisdiction of Incorporation or Registration or any jurisdiction where the Applicant maintains an office or physical facility; provided that an accounting standards body in the jurisdiction maintains full (not "suspended" or "associate") membership status with the International Federation of Accountants.

**Baseline Requirements**: The Baseline Requirements for the Issuance and Management of Publicly-Trusted Certificates as published by the CA/Browser Forum and any amendments to such document.

**Business Entity**: Any entity that is not a Private Organization, Government Entity, or Non-Commercial Entity as defined herein. Examples include, but are not limited to, general partnerships, unincorporated associations, sole proprietorships, etc.

**Certificate Approver**: A natural person who is either the Applicant, employed by the Applicant, or an authorized agent who has express authority to represent the Applicant to

  i. act as a Certificate Requester and to authorize other employees or third parties to act as a Certificate Requester, and
  ii. to approve EV Certificate Requests submitted by other Certificate Requesters.

**Certificate Requester**: A natural person who is either the Applicant, employed by the Applicant, an authorized agent who has express authority to represent the Applicant, or a third party (such as an ISP or hosting company) that completes and submits an EV Certificate Request on behalf of the Applicant.

**Confirmation Request**: An appropriate out-of-band communication requesting verification or confirmation of the particular fact at issue.

**Confirming Person**: A position within an Applicant's organization that confirms the particular fact at issue.

**Contract Signer**: A natural person who is either the Applicant, employed by the Applicant, or an authorized agent who has express authority to represent the Applicant, and who has authority on behalf of the Applicant to sign Subscriber Agreements.

**Demand Deposit Account**: A deposit account held at a bank or other financial institution, the funds deposited in which are payable on demand.  The primary purpose of demand accounts is to facilitate cashless payments by means of check, bank draft, direct debit, electronic funds transfer, etc.  Usage varies among countries, but a demand deposit account is commonly known as a share draft account, a current account, or a checking account.

**EV Authority**: A source other than the Certificate Approver, through which verification occurs that the Certificate Approver is expressly authorized by the Applicant, as of the date of the EV Certificate Request, to take the Request actions described in these Guidelines.

**EV Certificate**: A certificate that contains subject information specified in these Guidelines and that has been validated in accordance with these Guidelines.

**EV Certificate Beneficiaries**: Persons to whom the CA and its Root CA make specified EV Certificate Warranties.

**EV Certificate Renewal**: The process whereby an Applicant who has a valid unexpired and non-revoked EV Certificate makes an application, to the CA that issued the original certificate, for a newly issued EV Certificate for the same organizational name and Domain Name prior to the expiration of the Applicant's existing EV Certificate but with a new 'valid to' date beyond the expiry of the current EV Certificate.

**EV Certificate Reissuance**: The process whereby an Applicant who has a valid unexpired and non-revoked EV Certificate makes an application, to the CA that issued the original certificate, for a newly issued EV Certificate for the same organizational name and Domain Name prior to the expiration of the Applicant's existing EV Certificate but with a 'valid to' date that matches that of the current EV Certificate.

**EV Certificate Request**: A request from an Applicant to the CA requesting that the CA issue an EV Certificate to the Applicant, which request is validly authorized by the Applicant and signed by the Applicant Representative.

**EV Certificate Warranties**: In conjunction with the CA issuing an EV Certificate, the CA and its Root CA, during the period when the EV Certificate is Valid, promise that the CA has followed the requirements of these Guidelines and the CA's EV Policies in issuing the EV Certificate and in verifying the accuracy of the information contained in the EV Certificate.

**EV OID**: An identifying number, in the form of an "object identifier," that is included in the `certificatePolicies` field of a certificate that:

  i. indicates which CA policy statement relates to that certificate, and
  ii. is either the CA/Browser Forum EV policy identifier or a policy identifier that, by pre-agreement with one or more Application Software Supplier, marks the certificate as being an EV Certificate.

**EV Policies**: Auditable EV Certificate practices, policies and procedures, such as a certification practice statement  and certificate policy, that are developed, implemented, and enforced by the CA and its Root CA.

**EV Processes**: The keys, software, processes, and procedures by which the CA verifies Certificate Data under this Guideline, issues EV Certificates, maintains a Repository, and revokes EV Certificates.

**Extended Validation Certificate**: See EV Certificate.

**Government Agency**: In the context of a Private Organization, the government agency in the Jurisdiction of Incorporation under whose authority the legal existence of Private Organizations is established (e.g., the government agency that issued the Certificate of Incorporation).  In the context of Business Entities, the government agency in the jurisdiction of operation that registers business entities.  In the case of a Government Entity, the entity that enacts law, regulations, or decrees establishing the legal existence of Government Entities.

**Guidelines**: This document.

**Incorporating Agency**: In the context of a Private Organization, the government agency in the Jurisdiction of Incorporation under whose authority the legal existence of the entity is registered (e.g., the government agency that issues certificates of formation or incorporation).  In the context of a Government Entity, the entity that enacts law, regulations, or decrees establishing the legal existence of Government Entities.

**Independent Confirmation From Applicant**: Confirmation of a particular fact received by the CA pursuant to the provisions of the Guidelines or binding upon the Applicant.

**Individual**: A natural person.

**International Organization**: An organization founded by a constituent document, e.g., a charter, treaty, convention or similar document, signed by, or on behalf of, a minimum of two Sovereign State governments.

**Jurisdiction of Incorporation**: In the context of a Private Organization, the country and (where applicable) the state or province or locality where the organization's legal existence was established by a filing with (or an act of) an appropriate government agency or entity (e.g., where it was incorporated).  In the context of a Government Entity, the country and (where applicable) the state or province where the Entity's legal existence was created by law.

**Jurisdiction of Registration**: In the case of a Business Entity, the state, province, or locality where the organization has registered its business presence by means of filings by a Principal Individual involved in the business.

**Latin Notary**: A person with legal training whose commission under applicable law not only includes authority to authenticate the execution of a signature on a document but also responsibility for the correctness and content of the document. A Latin Notary is sometimes referred to as a Civil Law Notary.

**Legal Entity**: A Private Organization, Government Entity, Business Entity, or Non-Commercial Entity.

**Legal Existence**: A Private Organization, Government Entity, or Business Entity has Legal Existence if it has been validly formed and not otherwise terminated, dissolved, or abandoned.

**Legal Practitioner**: A person who is either a lawyer or a Latin Notary as described in these Guidelines and competent to render an opinion on factual claims of the Applicant.

**Maximum Validity Period**:

  1. The maximum time period for which the issued EV Certificate is valid.
  2. The maximum period after validation by the CA that certain Applicant information may be relied upon in issuing an EV Certificate pursuant to these Guidelines.

**Notary**: A person whose commission under applicable law includes authority to authenticate the execution of a signature on a document.

**Place of Business**: The location of any facility (such as a factory, retail store, warehouse, etc) where the Applicant's business is conducted.

**Principal Individual**: An individual of a Private Organization, Government Entity, or Business Entity that is either an owner, partner, managing member, director, or officer, as identified by their title of employment, or an employee, contractor or agent authorized by such entity or organization to conduct business related to the request, issuance, and use of EV Certificates.

**Private Organization**: A non-governmental legal entity (whether ownership interests are privately held or publicly traded) whose existence was created by a filing with (or an act of) the Incorporating Agency or equivalent in its Jurisdiction of Incorporation.

**Qualified Auditor**: An independent public accounting firm that meets the auditing qualification requirements specified in [Section 17.6](#176-auditor-qualification).

**Qualified Government Information Source**: A database maintained by a Government Entity (e.g. SEC filings) that meets the requirements of [Section 11.11.6](#11116-qualified-government-information-source).

**Qualified Government Tax Information Source**: A Qualified Governmental Information Source that specifically contains tax information relating to Private Organizations, Business Entities, or Individuals.

**Qualified Independent Information Source**: A regularly-updated and current, publicly available, database designed for the purpose of accurately providing the information for which it is consulted, and which is generally recognized as a dependable source of such information.

**Registration Agency**: A Governmental Agency that registers business information in connection with an entity's business formation or authorization to conduct business under a license, charter or other certification.  A Registration Agency MAY include, but is not limited to

  i. a State Department of Corporations or a Secretary of State;
  ii. a licensing agency, such as a State Department of Insurance; or
  iii. a chartering agency, such as a state office or department of financial regulation, banking or finance, or a federal agency such as the Office of the Comptroller of the Currency or Office of Thrift Supervision.

**Registration Reference**: A unique identifier assigned to a Legal Entity.

**Registration Scheme**: A scheme for assigning a Registration Reference meeting the requirements identified in [Appendix H](#appendix-h--registration-schemes).

**Registered Agent**: An individual or entity that is:

  i. authorized by the Applicant to receive service of process and business communications on behalf of the Applicant; and
  ii. listed in the official records of the Applicant's Jurisdiction of Incorporation as acting in the role specified in (i) above.

**Registered Office**: The official address of a company, as recorded with the Incorporating Agency, to which official documents are sent and at which legal notices are received.

**Registration Number**: The unique number assigned to a Private Organization by the Incorporating Agency in such entity's Jurisdiction of Incorporation.

**Regulated Financial Institution**: A financial institution that is regulated, supervised, and examined by governmental, national, state or provincial, or local authorities.

**Root Key Generation Script**: A documented plan of procedures to be performed for the generation of the Root CA Key Pair.

**Signing Authority**: One or more Certificate Approvers designated to act on behalf of the Applicant.

**Superior Government Entity**: Based on the structure of government in a political subdivision, the Government Entity or Entities that have the ability to manage, direct and control the activities of the Applicant.

**Suspect code**: Code that contains malicious functionality or serious vulnerabilities, including spyware, malware and other code that installs without the user's consent and/or resists its own removal, and code that can be exploited in ways not intended by its designers to compromise the trustworthiness of the platforms on which it executes.

**Translator**: An individual or Business Entity that possesses the requisite knowledge and expertise to accurately translate the words of a document written in one language to the native language of the CA.

**Verified Accountant Letter**: A document meeting the requirements specified in [Section 11.11.2](#11112-verified-accountant-letter).

**Verified Legal Opinion**: A document meeting the requirements specified in [Section 11.11.1](#11111-verified-legal-opinion).

**Verified Method of Communication**: The use of a telephone number, a fax number, an email address, or postal delivery address, confirmed by the CA in accordance with [Section 11.5](#115-verified-method-of-communication) as a reliable way of communicating with the Applicant.

**Verified Professional Letter**: A Verified Accountant Letter or Verified Legal Opinion.

**WebTrust EV Program**: The additional audit procedures specified for CAs that issue EV Certificates by the AICPA/CICA to be used in conjunction with its WebTrust Program for Certification Authorities.

**WebTrust Program for CAs**: The then-current version of the AICPA/CICA WebTrust Program for Certification Authorities.

**WebTrust Seal of Assurance**: An affirmation of compliance resulting from the WebTrust Program for CAs.
### 1.6.2  Acronyms
Abbreviations and Acronyms are defined in the Baseline Requirements except as otherwise defined herein:

| **Acronym** | **Meaning** |
| --- | --- |
| BIPM | International Bureau of Weights and Measures |
| BIS | (US Government) Bureau of Industry and Security |
| CEO | Chief Executive Officer |
| CFO | Chief Financial Officer |
| CIO | Chief Information Officer |
| CISO | Chief Information Security Officer |
| COO | Chief Operating Officer |
| CPA | Chartered Professional Accountant |
| CSO | Chief Security Officer |
| EV | Extended Validation |
| gTLD | Generic Top-Level Domain |
| IFAC | International Federation of Accountants |
| IRS | Internal Revenue Service |
| ISP | Internet Service Provider |
| QGIS | Qualified Government Information Source |
| QTIS | Qualified Government Tax Information Source |
| QIIS | Qualified Independent Information Source |
| SEC | (US Government) Securities and Exchange Commission |
| UTC(k) | National realization of Coordinated Universal Time |
### 1.6.3  References
See Baseline Requirements, which are available at <https://www.cabforum.org/>.
### 1.6.4  Conventions
Terms not otherwise defined in these Guidelines shall be as defined in applicable agreements, user manuals, certification practice statements (CPS), and certificate policies (CP) of the CA issuing EV Certificates.

The key words "REQUIRED", "SHALL", "SHALL NOT", "SHOULD", "SHOULD NOT", "RECOMMENDED", "MAY", and "OPTIONAL" in these Guidelines shall be interpreted in accordance with RFC 2119.

By convention, this document omits time and timezones when listing effective requirements such as dates. Except when explicitly specified, the associated time with a date shall be 00:00:00 UTC.

# 2. PUBLICATION AND REPOSITORY RESPONSIBILITIES
## 2.1  Repositories
## 2.2  Publication of certification information
## 2.3  Time or frequency of publication
## 2.4  Access controls on repositories
# 3. IDENTIFICATION AND AUTHENTICATION
## 3.1  Naming
### 3.1.1  Types of names
### 3.1.2  Need for names to be meaningful
### 3.1.3  Anonymity or pseudonymity of subscribers
### 3.1.4  Rules for interpreting various name forms
### 3.1.5  Uniqueness of names
### 3.1.6  Recognition, authentication, and role of trademarks
## 3.2  Initial identity validation
### 3.2.1  Method to prove possession of private key
### 3.2.2  Authentication of organization identity
### 3.2.3  Authentication of individual identity
### 3.2.4  Non-verified subscriber information
### 3.2.5 Validation of authority
### 3.2.6  Criteria for interoperation
## 3.3  Identification and authentication for re-key requests
### 3.3.1  Identification and authentication for routine re-key
### 3.3.2  Identification and authentication for re-key after revocation
## 3.4 Identification and authentication for revocation request
# 4.  CERTIFICATE LIFE-CYCLE OPERATIONAL REQUIREMENTS
## 4.1  Certificate Application
### 4.1.1  Who can submit a certificate application
### 4.1.2  Enrollment process and responsibilities
The documentation requirements in Section 4.1.2 of the Baseline Requirements apply equally to EV Certificates.
The Certificate Request requirements in Section 4.1.2 of the Baseline Requirements apply equally to EV Certificates subject to the additional more stringent ageing and updating requirement of [Section 11.14](#1114-requirements-for-re-use-of-existing-documentation).

## 4.2 Certificate application processing
### 4.2.1 Performing identification and authentication functions
The following Applicant roles are required for the issuance of an EV Certificate.

1. **Certificate Requester**: The EV Certificate Request MUST be submitted by an authorized Certificate Requester.  A Certificate Requester is a natural person who is either the Applicant, employed by the Applicant, an authorized agent who has express authority to represent the Applicant, or a third party (such as an ISP or hosting company) that completes and submits an EV Certificate Request on behalf of the Applicant.

2. **Certificate Approver**: The EV Certificate Request MUST be approved by an authorized Certificate Approver.  A Certificate Approver is a natural person who is either the Applicant, employed by the Applicant, or an authorized agent who has express authority to represent the Applicant to

   i. act as a Certificate Requester and to authorize other employees or third parties to act as a Certificate Requester, and
   ii. to approve EV Certificate Requests submitted by other Certificate Requesters.

3. **Contract Signer**: A Subscriber Agreement applicable to the requested EV Certificate MUST be signed by an authorized Contract Signer.  A Contract Signer is a natural person who is either the Applicant, employed by the Applicant, or an authorized agent who has express authority to represent the Applicant, and who has authority on behalf of the Applicant to sign Subscriber Agreements.

4. **Applicant Representative**: In the case where the CA and the Subscriber are affiliated, Terms of Use applicable to the requested EV Certificate MUST be acknowledged and agreed to by an authorized Applicant Representative.  An Applicant Representative is a natural person who is either the Applicant, employed by the Applicant, or an authorized agent who has express authority to represent the Applicant, and who has authority on behalf of the Applicant to acknowledge and agree to the Terms of Use.

The Applicant MAY authorize one individual to occupy two or more of these roles. The Applicant MAY authorize more than one individual to occupy any of these roles.

### 4.2.2 Approval or rejection of certificate applications
### 4.2.3  Time to process certificate applications
## 4.3  Certificate issuance
### 4.3.1  CA actions during certificate issuance
Certificate issuance by the Root CA SHALL require an individual authorized by the CA (i.e. the CA system operator, system officer, or PKI administrator) to deliberately issue a direct command in order for the Root CA to perform a certificate signing operation.

Root CA Private Keys MUST NOT be used to sign EV Certificates.

### 4.3.2  Notification to subscriber by the CA of issuance of certificate
## 4.4  Certificate acceptance
### 4.4.1  Conduct constituting certificate acceptance
### 4.4.2  Publication of the certificate by the CA
### 4.4.3  Notification of certificate issuance by the CA to other entities
## 4.5 Key pair and certificate usage
### 4.5.1  Subscriber private key and certificate usage
### 4.5.2  Relying party public key and certificate usage
## 4.6  Certificate renewal
### 4.6.1  Circumstance for certificate renewal
### 4.6.2  Who may request renewal
### 4.6.3  Processing certificate renewal requests
### 4.6.4  Notification of new certificate issuance to subscriber
### 4.6.5  Conduct constituting acceptance of a renewal certificate
### 4.6.6  Publication of the renewal certificate by the CA
### 4.6.7  Notification of certificate issuance by the CA to other entities
## 4.7  Certificate re-key
### 4.7.1  Circumstance for certificate re-key
### 4.7.2  Who may request certification of a new public key
### 4.7.3  Processing certificate re-keying requests
### 4.7.4  Notification of new certificate issuance to subscriber
### 4.7.5  Conduct constituting acceptance of a re-keyed certificate
### 4.7.6  Publication of the re-keyed certificate by the CA
### 4.7.7  Notification of certificate issuance by the CA to other entities
## 4.8  Certificate modification
### 4.8.1  Circumstance for certificate modification
### 4.8.2  Who may request certificate modification
### 4.8.3  Processing certificate modification requests
### 4.8.4  Notification of new certificate issuance to subscriber
### 4.8.5  Conduct constituting acceptance of modified certificate
### 4.8.6  Publication of the modified certificate by the CA
### 4.8.7  Notification of certificate issuance by the CA to other entities
## 4.9  Certificate revocation and suspension
### 4.9.1  Circumstances for revocation
### 4.9.2  Who can request revocation
### 4.9.3  Procedure for revocation request
### 4.9.4  Revocation request grace period
### 4.9.5  Time within which CA must process the revocation request
### 4.9.6  Revocation checking requirement for relying parties
### 4.9.7 CRL issuance frequency (if applicable)
### 4.9.8 Maximum latency for CRLs (if applicable)
### 4.9.9  On-line revocation/status checking availability
### 4.9.10 On-line revocation checking requirements
### 4.9.11 Other forms of revocation advertisements available
### 4.9.12 Special requirements re key compromise
### 4.9.13 Circumstances for suspension
### 4.9.14 Who can request suspension
### 4.9.15 Procedure for suspension request
### 4.9.16 Limits on suspension period
## 4.10  Certificate status services
### 4.10.1 Operational characteristics
### 4.10.2 Service availability
### 4.10.3 Optional features
## 4.11  End of subscription
## 4.12  Key escrow and recovery
### 4.12.1 Key escrow and recovery policy and practices
### 4.12.2 Session key encapsulation and recovery policy and practices
# 5.  FACILITY, MANAGEMENT, AND OPERATIONAL CONTROLS 
As specified in Section 5 of the Baseline Requirements. In addition, systems used to process and approve EV Certificate Requests MUST require actions by at least two trusted persons before creating an EV Certificate.
## 5.1  Physical controls
### 5.1.1  Site location and construction
### 5.1.2  Physical access
### 5.1.3  Power and air conditioning
### 5.1.4  Water exposures
### 5.1.5  Fire prevention and protection
### 5.1.6  Media storage
### 5.1.7  Waste disposal
### 5.1.8  Off-site backup
## 5.2  Procedural controls
### 5.2.1  Trusted roles
### 5.2.2  Number of persons required per task
### 5.2.3  Identification and authentication for each role
### 5.2.4  Roles requiring separation of duties
1. The CA MUST enforce rigorous control procedures for the separation of validation duties to ensure that no one person can single-handedly validate and authorize the issuance of an EV Certificate.  The Final Cross-Correlation and Due Diligence steps, as outlined in [Section 11.13](#1113-final-cross-correlation-and-due-diligence), MAY be performed by one of the persons.  For example, one Validation Specialist MAY review and verify all the Applicant information and a second Validation Specialist MAY approve issuance of the EV Certificate.
2. Such controls MUST be auditable.
## 5.3  Personnel controls
### 5.3.1  Qualifications, experience, and clearance requirements
### 5.3.2  Background check procedures
Prior to the commencement of employment of any person by the CA for engagement in the EV Processes, whether as an employee, agent, or an independent contractor of the CA, the CA MUST:

1. **Verify the Identity of Such Person**: Verification of identity MUST be performed through:

   A.  The personal (physical) presence of such person before trusted persons who perform human resource or security functions, and
   B.  The verification of well-recognized forms of government-issued photo identification (e.g., passports and/or drivers licenses);

   and

2. **Verify the Trustworthiness of Such Person**: Verification of trustworthiness SHALL include background checks, which address at least the following, or their equivalent:

   A.  Confirmation of previous employment,
   B.  Check of professional references;
   C.  Confirmation of the highest or most-relevant educational qualification obtained;
   D.  Search of criminal records (local, state or provincial, and national) where allowed by the jurisdiction in which the person will be employed;

   and

3. In the case of employees already in the employ of the CA at the time of adoption of these Guidelines whose identity and background has not previously been verified as set forth above, the CA SHALL conduct such verification within three months of the date of adoption of these Guidelines.

### 5.3.3  Training requirements
The requirements in Section 5.3.3 of the Baseline Requirements apply equally to EV Certificates and these Guidelines.  The required internal examination must relate to the EV Certificate validation criteria outlined in these Guidelines.
### 5.3.4  Retraining frequency and requirements
### 5.3.5  Job rotation frequency and sequence
### 5.3.6  Sanctions for unauthorized actions
### 5.3.7  Independent contractor requirements
### 5.3.8  Documentation supplied to personnel
## 5.4  Audit logging procedures
As specified in Section 5.4 of the Baseline Requirements.

### 5.4.1  Types of events recorded
### 5.4.2  Frequency of processing log
### 5.4.3  Retention period for audit log
### 5.4.4  Protection of audit log
### 5.4.5  Audit log backup procedures
### 5.4.6  Audit collection system (internal vs. external)
### 5.4.7  Notification to event-causing subject
### 5.4.8  Vulnerability assessments
## 5.5  Records archival
### 5.5.1  Types of records archived
### 5.5.2  Retention period for archive
### 5.5.3  Protection of archive
### 5.5.4  Archive backup procedures
### 5.5.5  Requirements for time-stamping of records
### 5.5.6  Archive collection system (internal or external)
### 5.5.7  Procedures to obtain and verify archive information
## 5.6  Key changeover
## 5.7  Compromise and disaster recovery
### 5.7.1  Incident and compromise handling procedures
### 5.7.2  Computing resources, software, and/or data are corrupted
### 5.7.3  Entity private key compromise procedures
### 5.7.4  Business continuity capabilities after a disaster
## 5.8  CA or RA termination
# 6.  TECHNICAL SECURITY CONTROLS 
## 6.1  Key pair generation and installation
### 6.1.1  Key pair generation
All requirements in Section 6.1.1.1 of the Baseline Requirements apply equally to EV Certificates. However, for Root CA Key Pairs generated after the release of these Guidelines, the Root CA Key Pair generation ceremony MUST be witnessed by the CA's Qualified Auditor in order to observe the process and the controls over the integrity and confidentiality of the Root CA Key Pairs produced.  The Qualified Auditor MUST then issue a report opining that the CA, during its Root CA Key Pair and Certificate generation process:

  1. Documented its Root CA key generation and protection procedures in its Certificate Policy, and its Certification Practices Statement;
  2. Included appropriate detail in its Root Key Generation Script;
  3. Maintained effective controls to provide reasonable assurance that the Root CA key pair was generated and protected in conformity with the procedures described in its CP/CPS and with its Root Key Generation Script;
  4. Performed, during the Root CA key generation process, all the procedures required by its Root Key Generation Script.

### 6.1.2  Private key delivery to subscriber
### 6.1.3  Public key delivery to certificate issuer
### 6.1.4  CA public key delivery to relying parties
### 6.1.5  Key sizes
### 6.1.6  Public key parameters generation and quality checking
### 6.1.7  Key usage purposes (as per X.509 v3 key usage field)
## 6.2  Private Key Protection and Cryptographic Module Engineering Controls
### 6.2.1  Cryptographic module standards and controls
### 6.2.2  Private key (n out of m) multi-person control
### 6.2.3  Private key escrow
### 6.2.4  Private key backup
### 6.2.5  Private key archival
### 6.2.6  Private key transfer into or from a cryptographic module
### 6.2.7  Private key storage on cryptographic module
### 6.2.8  Method of activating private key
### 6.2.9  Method of deactivating private key
### 6.2.10 Method of destroying private key
### 6.2.11 Cryptographic Module Rating
## 6.3  Other aspects of key pair management
### 6.3.1  Public key archival
### 6.3.2  Certificate operational periods and key pair usage periods
## 6.4  Activation data
### 6.4.1  Activation data generation and installation
### 6.4.2  Activation data protection
### 6.4.3  Other aspects of activation data
## 6.5  Computer security controls
### 6.5.1  Specific computer security technical requirements
### 6.5.2  Computer security rating
## 6.6  Life cycle technical controls
### 6.6.1  System development controls
### 6.6.2  Security management controls
### 6.6.3  Life cycle security controls
## 6.7  Network security controls
## 6.8  Time-stamping
# 7.  CERTIFICATE, CRL, AND OCSP PROFILES
## 7.1  Certificate profile
### 7.1.1  Version number(s)
### 7.1.2  Certificate extensions
### 7.1.3  Algorithm object identifiers
### 7.1.4  Name forms
### 7.1.5  Name constraints
### 7.1.6  Certificate policy object identifier
### 7.1.7  Usage of Policy Constraints extension
### 7.1.8  Policy qualifiers syntax and semantics
### 7.1.9 Processing semantics for the critical Certificate Policies extension
## 7.2  CRL profile
### 7.2.1  Version number(s)
### 7.2.2  CRL and CRL entry extensions
## 7.3  OCSP profile
### 7.3.1  Version number(s)
### 7.3.2  OCSP extensions
# 8.  COMPLIANCE AUDIT AND OTHER ASSESSMENTS
A CA issuing EV Certificates SHALL undergo an audit in accordance with one of the following schemes:

i. WebTrust Program for CAs audit and WebTrust EV Program audit,
ii. ETSI TS 102 042 audit for EVCP, or
iii. ETSI EN 319 411-1 audit for EVCP policy.

If the CA is a Government Entity, an audit of the CA by the appropriate internal government auditing agency is acceptable in lieu of the audits specified above, provided that such internal government auditing agency publicly certifies in writing that its audit addresses the criteria specified in one of the above audit schemes and certifies that the government CA has successfully passed the audit.

## 8.1  Frequency or circumstances of assessment
CAs issuing EV Certificates MUST undergo an annual audit that meets the criteria of [Section 17.1](#171-eligible-audit-schemes).
## 8.2  Identity/qualifications of assessor
A Qualified Auditor (as defined in Section 8.2 of the Baseline Requirements) MUST perform the CA's audit.
## 8.3  Assessor's relationship to assessed entity
## 8.4  Topics covered by assessment
## 8.5  Actions taken as a result of deficiency
## 8.6  Communication of results
CAs SHOULD make its audit report publicly available no later than three months after the end of the audit period.  If there is a delay greater than three months and if so requested by an Application Software Supplier, the CA MUST provide an explanatory letter signed by its auditor.
## 8.7  Pre-issuance Readiness Audit

1. If the CA has a currently valid WebTrust Seal of Assurance for CAs, then, before issuing EV Certificates, the CA and its Root CA MUST successfully complete a point-in-time readiness assessment audit against the WebTrust EV Program.
2. If the CA has a currently valid ETSI 102 042 audit, then, before issuing EV Certificates, the CA and its Root CA MUST successfully complete a point-in-time readiness assessment audit against ETSI TS 102 042.
3. If the CA has a currently valid ETSI EN 319 411-1 audit for EVCP policy, then, before issuing EV Certificates, the CA and its Root CA MUST successfully complete a point-in-time readiness assessment audit against ETSI EN 319 411-1 for EVCP.
4. If the CA does not have a currently valid WebTrust Seal of Assurance for CAs or an ETSI TS 102 042 EVCP audit or an ETSI EN 319 411-1 audit for EVCP policy, then, before issuing EV Certificates, the CA and its Root CA MUST successfully complete either:
   i. a point-in-time readiness assessment audit against the WebTrust for CA Program, or
   ii. a point-in-time readiness assessment audit against the WebTrust EV Program, the ETSI TS 102 042 EVCP, or the ETSI EN 319 411-1 for EVCP policy.

The CA MUST complete any required point-in-time readiness assessment no earlier than twelve (12) months prior to issuing an EV Certificate.  The CA MUST undergo a complete audit under such scheme within ninety (90) days of issuing the first EV Certificate.

## 8.8  Self audits
During the period in which it issues EV Certificates, the CA MUST strictly control its service quality by performing ongoing self audits against a randomly selected sample of at least three percent of the EV Certificates it has issued in the period beginning immediately after the last sample was taken.  For all EV Certificates where the Final Cross-Correlation and Due Diligence requirements of [Section 11.13](#1113-final-cross-correlation-and-due-diligence) is performed by an RA, the CA MUST strictly control its service quality by performing ongoing self audits against a randomly selected sample of at least six percent of the EV Certificates it has issued in the period beginning immediately after the last sample was taken.
# 9.  OTHER BUSINESS AND LEGAL MATTERS
## 9.1  Fees
### 9.1.1  Certificate issuance or renewal fees
### 9.1.2  Certificate access fees
### 9.1.3  Revocation or status information access fees
### 9.1.4  Fees for other services
### 9.1.5  Refund policy
## 9.2  Financial responsibility
### 9.2.1  Insurance coverage
### 9.2.2  Other assets
### 9.2.3  Insurance or warranty coverage for end-entities
## 9.3  Confidentiality of business information
### 9.3.1  Scope of confidential information
### 9.3.2  Information not within the scope of confidential information
### 9.3.3  Responsibility to protect confidential information
## 9.4  Privacy of personal information
### 9.4.1  Privacy plan
### 9.4.2  Information treated as private
### 9.4.3  Information not deemed private
### 9.4.4  Responsibility to protect private information
### 9.4.5  Notice and consent to use private information
### 9.4.6 Disclosure pursuant to judicial or administrative process
### 9.4.7  Other information disclosure circumstances
## 9.5  Intellectual property rights
## 9.6  Representations and warranties
### 9.6.1  CA representations and warranties
When the CA issues an EV Certificate, the CA and its Root CA represent and warrant to the Certificate Beneficiaries listed in Section 9.6.1 of the Baseline Requirements, during the period when the EV Certificate is Valid, that the CA has followed the requirements of these Guidelines and its EV Policies in issuing and managing the EV Certificate and in verifying the accuracy of the information contained in the EV Certificate.  The EV Certificate Warranties specifically include, but are not limited to, the following:

A.  **Legal Existence**: The CA has confirmed with the Incorporating or Registration Agency in the Subject's Jurisdiction of Incorporation or Registration that, as of the date the EV Certificate was issued, the Subject named in the EV Certificate legally exists as a valid organization or entity in the Jurisdiction of Incorporation or Registration;

B.  **Identity**: The CA has confirmed that, as of the date the EV Certificate was issued, the legal name of the Subject named in the EV Certificate matches the name on the official government records of the Incorporating or Registration Agency in the Subject's Jurisdiction of Incorporation or Registration, and if an assumed name is also included, that the assumed name is properly registered by the Subject in the jurisdiction of its Place of Business;

C.  **Right to Use Domain Name**: The CA has taken all steps reasonably necessary to verify that, as of the date the EV Certificate was issued, the Subject named in the EV Certificate has the right to use all the Domain Name(s) listed in the EV Certificate;

D.  **Authorization for EV Certificate**: The CA has taken all steps reasonably necessary to verify that the Subject named in the EV Certificate has authorized the issuance of the EV Certificate;

E.  **Accuracy of Information**: The CA has taken all steps reasonably necessary to verify that all of the other information in the EV Certificate is accurate, as of the date the EV Certificate was issued;

F.  **Subscriber Agreement**: The Subject named in the EV Certificate has entered into a legally valid and enforceable Subscriber Agreement with the CA that satisfies the requirements of these Guidelines or, if they are affiliated, the Applicant Representative has acknowledged and accepted the Terms of Use;

G.  **Status**: The CA will follow the requirements of these Guidelines and maintain a 24 x 7 online-accessible Repository with current information regarding the status of the EV Certificate as Valid or revoked; and

H.  **Revocation**: The CA will follow the requirements of these Guidelines and revoke the EV Certificate for any of the revocation reasons specified in these Guidelines.

### 9.6.2  RA representations and warranties
### 9.6.3  Subscriber representations and warranties
Section 9.6.3 of the Baseline Requirements applies equally to EV Certificates.  In cases where the Certificate Request does not contain all necessary information about the Applicant, the CA MUST additionally confirm the data with the Certificate Approver or Contract Signer rather than the Certificate Requester.

EV Certificate Applicants make the commitments and warranties set forth in Section 9.6.3 of the Baseline Requirements for the benefit of the CA and Certificate Beneficiaries.
### 9.6.4  Relying party representations and warranties
### 9.6.5  Representations and warranties of other participants
## 9.7  Disclaimers of warranties
## 9.8  Limitations of liability
CAs MAY limit their liability as described in Section 9.8 of the Baseline Requirements except that a CA MUST NOT limit its liability to Subscribers or Relying Parties for legally recognized and provable claims to a monetary amount less than two thousand US dollars per Subscriber or Relying Party per EV Certificate.
## 9.9  Indemnities
A CA's indemnification obligations and a Root CA's obligations with respect to subordinate CAs are set forth in Section 9.9 of the Baseline Requirements.
## 9.10  Term and termination
### 9.10.1  Term
### 9.10.2  Termination
### 9.10.3  Effect of termination and survival
## 9.11  Individual notices and communications with participants
## 9.12  Amendments
### 9.12.1  Procedure for amendment
### 9.12.2  Notification mechanism and period
### 9.12.3  Circumstances under which OID must be changed
## 9.13  Dispute resolution provisions
## 9.14  Governing law
## 9.15  Compliance with applicable law
## 9.16  Miscellaneous provisions
### 9.16.1  Entire agreement
### 9.16.2  Assignment
### 9.16.3  Severability
### 9.16.4  Enforcement (attorneys' fees and waiver of rights)
### 9.16.5  Force Majeure
## 9.17  Other provisions
# Appendix A - User Agent Verification (Normative)
The CA MUST host test Web pages that allow Application Software Suppliers to test their software with EV Certificates that chain up to each EV Root Certificate.  At a minimum, the CA MUST host separate Web pages using certificates that are:

  i. valid;
  ii. revoked; and
  iii. expired.

# Appendix B - Sample Attorney Opinions Confirming Specified Information

**(Informative)**

[Law Firm Letterhead]

[Date]

| To: | **(Name of Issuing Certification Authority)(Address / fax number of Issuing CA – may be sent by fax or email attachment)** |
| --- | --- |
| Re: | **EV Certificate Request No. (CA Reference Number)** |
| Client: | **(Exact company name of Client – see footnote 1)** |
| Client Representative: | **(Exact name of Client Representative who signed the Application – see footnote 2)** |
| Application Date: | **(Insert date of Client's Application to the Issuing CA)** |

This firm represents _[__exact__ company name of Client]_ [^1] ("Client"), who has submitted the Application to you dated as of the Application Date shown above ("Application").  We have been asked by our Client to present you with our opinion as stated in this letter.

[Insert customary preliminary matters for opinion letters in your jurisdiction.]

On this basis, we hereby offer the following opinion:

1. That [exact company name of Client] ("Company") is a duly formed [corporation, LLC, etc.] that is "active," "valid," "current," or the equivalent under the laws of the state/province of [name of governing jurisdiction where Client is incorporated or registered] and is not under any legal disability known to the author of this letter.

2. That Company conducts business under the assumed name or "DBA"_[assumed name of the Applicant]_ and has registered such name with the appropriate government agency in the jurisdiction of its place of business below.

3. That _[name of Client's Representative]_[^2]  has authority to act on behalf of Company to: [_select as appropriate_] (a) provide the information about Company required for issuance of the EV Certificates as contained in the attached Application, (b) request one or more EV Certificates and to designate other persons to request EV Certificates, and (c) agree to the relevant contractual obligations contained in the Subscriber Agreement on behalf of Company.

4. That Company has a physical presence and its place of business is at the following location:

   \_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_
   \_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_
   \_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_

5. That Company can be contacted at its stated place of business at the following telephone number:

   \_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_

6. That Company has an active current Demand Deposit Account with a regulated financial institution.

7. That Company has the right to use the following Domain Name in identifying itself on the Internet:

   \_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_

Insert customary limitations and disclaimers for opinion letters in your jurisdiction.

(Name and signature)

_[Jurisdiction(s) in which attorney / Latin notary is admitted to practice]_[^3]

cc: [Send copy to Client_]_

[^1]: This must be the Client's exact corporate name, as registered with the relevant Incorporating Agency in the Client's Jurisdiction of Incorporation.  This is the name that will be included in the EV Certificate.

[^2]: If necessary to establish the Client Representative's actual authority, you may rely on a Power of Attorney from an officer of Client who has authority to delegate the authority to the Client Representative.

[^3]: This letter may be issued by in-house counsel for the Client so long as permitted by the rules of your jurisdiction.

# Appendix C - Sample Accountant Letters Confirming Specified Information

**(Informative)**

It is acceptable for professional accountants to provide letters that address specified matters.  The letters would be provided in accordance with the professional standards in the jurisdiction in which the accountant practices.

Two examples of the letter that might be prepared by an accountant in the United States and in Canada follow:

## UNITED STATES

To the [Certification Authority] and Management of [Client]:

We have performed the procedures enumerated below, which were agreed to by the Managements of Client, solely to assist you in evaluating the company's application for an Extended Validation (EV) Certificate, dated......................., 20......  This agreed-upon procedures engagement was conducted in accordance with attestation standards established by the American Institute of Certified Public Accountants.  The sufficiency of these procedures is solely the responsibility of those parties specified in this report.  Consequently, we make no representation regarding the sufficiency of the procedures described below either for the purpose for which this report has been requested or for any other purpose.

| Specified Information: | Procedure:(Note 1: These are illustrative of the procedures that would be undertaken and are designed to meet the needs of the Certification Authorities issuing Extended Validation Certificates) | Results: (Note 2: If you are unavailable to perform any of the stated procedure, this should be noted in this column.  Any exceptions should be noted in a separate paragraph below) |
| --- | --- | --- |
|   |   |   |
| Legal Name - 123456 Delaware corporation | Agree legal name to permanent audit file information (If audit has been completed). | Legal name on the application agrees with the information contained in our permanent file with respect to Client.(If there is no permanent file, state this fact) |
|   |   |   |
| Doing business as - "Name" | Agree name to government data base of business names | The name "Name" is registered with the (name of database to which the name was agreed) |
|   |   |   |
| Physical location - "Address Information" | Visit the location at the address | Site visit completed at Address |
|   |   |   |
| Business Phone Number - 555 999 9999 | Phone the number provided and confirm that it was answered by the named organization  | Phoned Business Number and noted that it was answered with the Doing Business As name.  This would provided by the receptionist |
|   |   |   |
| Bank Account – "Bank Name", "Account Number" | Request a letter directly from "the Bank" confirming the existence of the account for the benefit of "the Client" | Received letter directly from "the Bank" confirming the existence of the account for the benefit of "the Client" |
|   |   |   |
| The corporate officers are "NAMED" (verified officer) | Agree Names to annual shareholders meeting minutes (Note - not required to personally know the officers) | Agreed Names listed as corporate officers on the application to minute books maintained by the Client |
|   |   |   |
| Name of application signer and approver | Obtain letter from verified Officer confirming the names of the application signer and approver | Obtained letter from the President confirming the names of the duly authorized names of the application signer and approver as they appear in the application |

We were not engaged to and did not conduct an examination, the objective of which would be the expression of an opinion on the Application for Extended Validation Certificate.  Accordingly, we do not express such an opinion.  Had we performed additional procedures, other matters might have come to our attention that would have been reported to you.

This report is intended solely for the information and use of the Certification Authority and managements of Client, and is not intended to be and should not be used by anyone other than these specified parties.

[Signature]

[Date]

## CANADA

To: [Name of Certification Authority]

Re: Client Limited [Applicant]

As specifically agreed, I/we have performed the following procedures in connection with the above company's application for an Extended Validation (EV) Certificate, dated ......................., 20....  with respect to the following specified information contained in the application

| Specified Information: | Procedure:(Note 1: These are illustrative of the procedures that would be undertaken and are designed to meet the needs of the Certification Authorities issuing Extended Validation Certificates) | Results: (Note 2: If you are unavailable to perform any of the stated procedure, this should be noted in this column.  Any exceptions should be noted in a separate paragraph below) |
| --- | --- | --- |
|   |   |   |
| Legal Name - 123456 Ontario limited | Agree legal name to permanent audit file information (If audit has been completed) | Legal name on the application agrees with the information contained in our permanent file with respect to Client.(If there is no permanent file, state this fact) |
|   |   |   |
| Doing business as - "Name" | Agree name to government data base of business names | The name "Name" is registered with the (name of database to which the name was agreed) |
|   |   |   |
| Physical location - "Address Information" | Visit the location at the address | Site visit completed at Address |
|   |   |   |
| Business Phone Number - 555 999 9999 | Phone the number provided and confirm that it was answered by the named organization  | Phoned Business Number and noted that it was answered with the Doing Business As name.  This would provided by the receptionist |
|   |   |   |
| Bank Account – "Bank Name", "Account Number" | Request a letter directly from "the Bank" confirming the existence of the account for the benefit of "the Client" | Received letter directly from "the Bank" confirming the existence of the account for the benefit of "the Client" |
|   |   |   |
| The corporate officers are "NAMED" (verified officer) | Agree Names to annual shareholders meeting minutes (Note - not required to personally know the officers) | Agreed Names listed as corporate officers on the application to minute books maintained by the Client |
|   |   |   |
| Name of application signer and approver | Obtain letter from verified Officer confirming the names of the application signer and approver | Obtained letter from the President confirming the names of the duly authorized names of the application signer and approver as they appear in the application |

As a result of applying the above procedures, I/we found [no / the following] exceptions [list of exceptions].  However, these procedures do not constitute an audit of the company's application for an EV Certificate, and therefore I express no opinion on the application dated ......................., 20.....

This letter is for use solely in connection with the application for an Extended Validation Certificate by [Client] dated ......................., 20......

City

(signed) ......................................

# Appendix D - Country-Specific Interpretative Guidelines (Normative)

NOTE: This appendix provides alternative interpretations of the EV Guidelines for countries that have a language, cultural, technical, or legal reason for deviating from a strict interpretation of the EV Guidelines.  More specific information for particular countries may be added to this appendix in the future.

## 1. Organization Names

1. Non-Latin Organization Name

   Where an EV Applicant's organization name is not registered with a QGIS in _Latin_ characters and the Applicant's foreign character organization name and registration have been verified with a QGIS in accordance with these Guidelines, a CA MAY include a Latin character organization name in the EV Certificate.  In such a case, the CA MUST follow the procedures laid down in this section.

2. Romanized Names

   In order to include a transliteration/Romanization of the registered name, the Romanization MUST be verified by the CA using a system officially recognized by the Government in the Applicant's Jurisdiction of Incorporation.

   If the CA can not rely on a transliteration/Romanization of the registered name using a system officially recognized by the Government in the Applicant's Jurisdiction of Incorporation, then it MUST rely on one of the options below, in order of preference:

   A.  A system recognized by the International Organization for Standardization (ISO);
   B.  A system recognized by the United Nations; or
   C.  A Lawyer's Opinion or Accountant's Letter confirming the proper Romanization of the registered name.

3. Translated Name

   In order to include a Latin character name in the EV certificate that is not a direct Romanization of the registered name (e.g. an English Name)  the CA MUST verify that the Latin character name is:

   A.  Included in the Articles of Incorporation (or equivalent document) filed as part of the organization registration; or
   B.  Recognized by a QTIS in the Applicant's Jurisdiction of Incorporation as the Applicant's recognized name for tax filings; or
   C.  Confirmed with a QIIS to be the name associated with the registered organization; or
   D.  Confirmed by a Verified Legal Opinion or Accountant's Letter to be a translated trading name associated with the registered organization.

### Country-Specific Procedures

#### D-1. Japan

As interpretation of the procedures set out above:

1. Organization Names

   A.  The Revised Hepburn method of Romanization, as well as Kunrei-shiki and Nihon-shiki methods described in ISO 3602, are acceptable for Japanese Romanizations.
   B.  The CA MAY verify the Romanized transliteration, language translation (e.g. English name), or other recognized Roman-letter substitute of the Applicant's formal legal name with either a QIIS, Verified Legal Opinion, or Verified Accountant Letter.
   C.  The CA MAY use the Financial Services Agency to verify a Romanized, translated, or other recognized Roman-letter substitute name.  When used, the CA MUST verify that the translated English is recorded in the audited Financial Statements.
   D.  When relying on Articles of Incorporation to verify a Romanized, translated, or other recognized Roman-letter substitute name, the Articles of Incorporation MUST be accompanied either: by a document, signed with the original Japanese Corporate Stamp, that proves that the Articles of Incorporation are authentic and current, or by a Verified Legal Opinion or a Verified Accountant Letter.  The CA MUST verify the authenticity of the Corporate Stamp.
   E.  A Romanized, translated, or other recognized Roman-lettered substitute name confirmed in accordance with this [Appendix D-1](#d-1-japan) stored in the ROBINS database operated by JIPDEC MAY be relied upon by a CA for determining the allowed organization name during any issuance or renewal process of an EV Certificate without the need to re-perform the above procedures.

2. Accounting Practitioner

   In Japan:

   A.  Accounting Practitioner includes either a certified public accountant (公認会計士 - Konin-kaikei-shi) or a licensed tax accountant (税理士 – Zei-ri-shi).
   B.  The CA MUST verify the professional status of the Accounting Practitioner through direct contact with the relevant local member association that is affiliated with either the Japanese Institute of Certified Public Accountants ([http://www.hp.jicpa.or.jp](http://www.hp.jicpa.or.jp/)), the Japan Federation of Certified Tax Accountant's Associations ([http://www.nichizeiren.or.jp](http://www.nichizeiren.or.jp/)), or any other authoritative source recognized by the Japanese Ministry of Finance ([http://www.mof.go.jp](http://www.mof.go.jp/)) as providing the current registration status of such professionals.

3. Legal Practitioner

   In Japan:

   A.  Legal Practitioner includes any of the following:

       - a licensed lawyer (弁護士 - Ben-go-shi),
       - a judicial scrivener (司法書士 - Shiho-sho-shi lawyer),
       - an administrative solicitor (行政書士 - Gyosei-sho-shi Lawyer),
       - or a notary public (公証人 - Ko-sho-nin).

       For purposes of the EV Guidelines, a Japanese Notary Public is considered equivalent to a Latin Notary.

   B.  The CA MUST verify the professional status of the Legal Practitioner by direct contact through the relevant local member association that is affiliated with one of the following national associations:

       - the Japan Federation of Bar Associations ([http://www.nichibenren.or.jp](http://www.nichibenren.or.jp/)),
       - the Japan Federation of Shiho-Shoshi Lawyer's Associations ([http://www.shiho-shoshi.or.jp](http://www.shiho-shoshi.or.jp/)),
       - the Japan Federation of Administrative Solicitors ([http://www.gyosei.or.jp](http://www.gyosei.or.jp/)),
       - the Japan National Notaries Association ([http://www.koshonin.gr.jp](http://www.koshonin.gr.jp/)), or
       - any other authoritative source recognized by the Japanese Ministry of Justice ([http://www.moj.go.jp](http://www.moj.go.jp/)) as providing the current registration status of such professionals.

# Appendix E - Sample Contract Signer's Representation/Warranty (Informative)

A CA may rely on the Contract Signer's authority to enter into the Subscriber Agreement using a representation/warranty executed by the Contract Signer.  An example of an acceptable warranty is as follows:

[CA] and Applicant are entering into a legally valid and enforceable Subscriber Agreement that creates extensive obligations on Applicant.  An EV Certificate serves as a form of digital identity for Applicant.  The loss or misuse of this identity can result in great harm to the Applicant.  By signing this Subscriber Agreement, the contract signer acknowledges that they have the authority to obtain the digital equivalent of a company stamp, seal, or (where applicable) officer's signature to establish the authenticity of the company's website, and that [Applicant name] is responsible for all uses of its EV Certificate.  By signing this Agreement on behalf of [Applicant name], the contract signer represents that the contract signer

   i. is acting as an authorized representative of [Applicant name],
   ii. is expressly authorized by [Applicant name] to sign Subscriber Agreements and approve EV Certificate requests on Applicant's behalf, and
   iii. has confirmed Applicant's right to use the domain(s) to be included in EV Certificates.

# Appendix F – Unused

This appendix is intentionally left blank.

# Appendix G – Abstract Syntax Notation One module for EV certificates

```ASN.1
CABFSelectedAttributeTypes {
    joint‐iso‐itu‐t(2) international‐organizations(23)
    ca‐browser‐forum(140) module(4)
    cabfSelectedAttributeTypes(1) 1 }
DEFINITIONS ::=
BEGIN
-- EXPORTS All
IMPORTS
  -- from Rec. ITU-T X.501 | ISO/IEC 9594-2
  selectedAttributeTypes, ID, ldap-enterprise
    FROM UsefulDefinitions {joint-iso-itu-t ds(5) module(1)
    usefulDefinitions(0) 7}

  -- from the X.500 series
  ub-locality-name, ub-state-name
    FROM UpperBounds {joint-iso-itu-t ds(5) module(1) upperBounds(10) 7}

  -- from Rec. ITU-T X.520 | ISO/IEC 9594-6
  DirectoryString{}, CountryName
    FROM SelectedAttributeTypes selectedAttributeTypes;

id-evat-jurisdiction ID ::= {ldap-enterprise 311 ev(60) 2 1}
id-evat-jurisdiction-localityName ID ::= {id-evat-jurisdiction 1}
id-evat-jurisdiction-stateOrProvinceName ID ::= {id-evat-jurisdiction 2}
id-evat-jurisdiction-countryName ID ::= {id-evat-jurisdiction 3}

jurisdictionLocalityName ATTRIBUTE ::= {
  SUBTYPE OF    name
  WITH SYNTAX   DirectoryString{ub-locality-name}
  LDAP-SYNTAX   directoryString.&id
  LDAP-NAME     {"jurisdictionL"}
  ID            id-evat-jurisdiction-localityName }

jurisdictionStateOrProvinceName ATTRIBUTE ::= {
  SUBTYPE OF    name
  WITH SYNTAX   DirectoryString{ub-state-name}
  LDAP-SYNTAX   directoryString.&id
  LDAP-NAME     {"jurisdictionST"}
  ID            id-evat-jurisdiction-stateOrProvinceName }

jurisdictionCountryName ATTRIBUTE ::= {
  SUBTYPE OF    name
  WITH SYNTAX   CountryName
  SINGLE VALUE  TRUE
  LDAP-SYNTAX   countryString.&id
  LDAP-NAME     {"jurisdictionC"}
  ID            id-evat-jurisdiction-countryName }

END
```

# Appendix H – Registration Schemes

The following Registration Schemes are currently recognized as valid under these
guidelines:

* **NTR**:

  The information carried in this field shall be the same as held in
  Subject Registration Number Field as specified in
  [Section 9.2.5](#925-subject-registration-number-field) and the country code
  used in the Registration Scheme identifier shall match that of the
  subject’s jurisdiction as specified in
  [Section 9.2.4](#924-subject-jurisdiction-of-incorporation-or-registration-field).

  Where the Subject Jurisdiction of Incorporation or Registration Field in 9.2.4
  includes more than the country code, the additional locality information shall
  be included as specified in [Section 9.2.8](#928-subject-organization-identifier-field)
  and/or [Section 9.8.2](#982-cabrowser-forum-organization-identifier-extension).

* **VAT**:

  Reference allocated by the national tax authorities to a Legal Entity. This
  information shall be validated using information provided by the national tax
  authority against the organization as identified by the Subject Organization
  Name Field (see [Section 9.2.1](#921-subject-organization-name-field)) and
  Subject Registration Number Field (see
  Section 9.2.5](#925-subject-registration-number-field)) within the context of
  the subject’s jurisdiction as specified in
  [Section 9.2.4](#924-subject-jurisdiction-of-incorporation-or-registration-field).

* **PSD**:

  Authorization number as specified in ETSI TS 119 495 clause 4.4
  allocated to a payment service provider and containing the information as
  specified in ETSI TS 119 495 clause 5.2.1.  This information SHALL be
  obtained directly from the national competent authority register for
  payment services or from an information source approved by a government
  agency, regulatory body, or legislation for this purpose.  This information
  SHALL be validated by being matched directly or indirectly (for example, by
  matching a globally unique registration number) against the organization as
  identified by the Subject Organization Name Field (see
  [Section 9.2.1](#921-subject-organization-name-field)) and
  Subject Registration Number Field (see
  [Section 9.2.5](#925-subject-registration-number-field)) within the context of
  the subject’s jurisdiction as specified in
  [Section 9.2.4](#924-subject-jurisdiction-of-incorporation-or-registration-field).
  The stated address of the organization combined with the organization name
  SHALL NOT be the only information used to disambiguate the organization.
