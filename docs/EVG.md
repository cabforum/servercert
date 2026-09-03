---
title: Guidelines for the Issuance and Management of Extended Validation Certificates

subtitle: Version 2.0.X
author:
  - CA/Browser Forum
date: TBD
copyright: |
  Copyright 2026 CA/Browser Forum


  This work is licensed under the Creative Commons Attribution 4.0 International license.
---

# 1. INTRODUCTION

The Guidelines describe an integrated set of technologies, protocols, identity proofing, lifecycle management, and auditing practices specifying the minimum requirements that must be met in order to issue and maintain Extended Validation Certificates ("EV Certificates") concerning an organization. Subject Organization information from valid EV Certificates can then be used in a special manner by certain relying-party software applications (e.g., browser software) in order to provide users with a trustworthy confirmation of the identity of the entity that controls the Web site or other services they are accessing. Although initially intended for use in establishing Web-based data communication conduits via TLS/SSL protocols, extensions are envisioned for S/MIME, time-stamping, VoIP, IM, Web services, etc.

The primary purposes of Extended Validation Certificates are to: 1) identify the legal entity that controls a Web or service site, and 2) enable encrypted communications with that site. The secondary purposes include significantly enhancing cybersecurity by helping establish the legitimacy of an organization claiming to operate a Web site, and providing a vehicle that can be used to assist in addressing problems related to distributing malware, phishing, identity theft, and diverse forms of online fraud.

**Notice to Readers**

The Guidelines for the Issuance and Management of Extended Validation Certificates present criteria established by the CA/Browser Forum for use by certification authorities when issuing, maintaining, and revoking certain digital certificates for use in Internet Web site commerce. These Guidelines may be revised from time to time, as appropriate, in accordance with procedures adopted by the CA/Browser Forum. Questions or suggestions concerning these guidelines may be directed to the CA/Browser Forum at <questions@cabforum.org>.

**The CA/Browser Forum**

The CA/Browser Forum is a voluntary open organization of certification authorities and suppliers of Internet browsers and other relying-party software applications. Membership is listed at <https://cabforum.org/members/>.

## 1.1 Overview

These Guidelines for the issuance and management of Extended Validation Certificates describe certain of the minimum requirements that a Certification Authority must meet in order to issue Extended Validation Certificates. Subject Organization information from Valid EV Certificates may be displayed in a special manner by certain relying-party software applications (e.g., browser software) in order to provide users with a trustworthy confirmation of the identity of the entity that controls the Web site they are accessing. These Guidelines incorporate the Baseline Requirements established by the CA/Browser Forum by reference. A copy of the Baseline Requirements is available on the CA/Browser Forum's website at <https://www.cabforum.org/>.

The CA MAY issue EV Certificates, provided that the CA and its Root CA satisfy the requirements in these Guidelines and the Baseline Requirements.

These Guidelines address the basic issue of validating Subject identity information in EV Certificates and some related matters. They do not address all of the related matters, such as certain technical and operational ones. This version of the Guidelines addresses only requirements for EV Certificates intended to be used for SSL/TLS authentication on the Internet. However, the Working Group encourages the re-use of these guidelines as a basis for similar requirements for S/MIME, time-stamping, VoIP, IM, Web services, etc.

These Guidelines do not address the verification of information, or the issuance, use, maintenance, or revocation of EV Certificates by enterprises that operate their own Public Key Infrastructure for internal purposes only, where its Root CA Certificate is not distributed by any Application Software Supplier.

## 1.2 Document name and identification

### 1.2.1 Revisions

| **Ver.** | **Ballot** | **Description** | **Adopted** | **Effective\*** |
|-|-|-----|--|--|
| 1.4.0 | 72 | Reorganize EV Documents | 2012-05-29 | 2012-05-29 |
| 1.4.1 | 75 | NameConstraints Criticality Flag | 2012-06-08 | 2012-06-08 |
| 1.4.2 | 101 | EV 11.10.2 Accountants | 2013-05-31 | 2013-05-31 |
| 1.4.3 | 104 | Domain verification for EV Certificates | 2013-07-09 | 2013-07-09 |
| 1.4.4 | 113 | Revision to QIIS in EV Guidelines | 2014-01-13 | 2014-01-13 |
| 1.4.5 | 114 | Improvements to the EV Definitions | 2014-01-28 | 2014-01-28 |
| 1.4.6 | 119 | Remove "OfIncorporation" from OID descriptions in EVG 9.2.5 | 2014-03-24 | 2014-03-24 |
| 1.4.7 | 120 | Affiliate Authority to Verify Domain | 2014-06-05 | 2014-06-05 |
| 1.4.8 | 124 | Business Entity Clarification | 2014-06-05 | 2014-06-05 |
| 1.4.9 | 127 | Verification of Name, Title and Agency | 2014-07-17 | 2014-07-17 |
| 1.5.0 | 126 | Operational Existence | 2014-07-24 | 2014-07-24 |
| 1.5.1 | 131 | Verified Method of Communication | 2014-09-12 | 2014-09-12 |
| 1.5.2 | 123 | Reuse of Information | 2014-10-16 | 2014-10-16 |
| 1.5.3 | 144 | Validation rules for .onion names | 2015-02-18 | 2015-02-18 |
| 1.5.4 | 146 | Convert Baseline Requirements to RFC 3647 Framework | 2015-04-16 | 2015-04-16 |
| 1.5.5 | 145 | Operational Existence for Government Entities | 2015-03-05 | 2015-03-05 |
| 1.5.6 | 147 | Attorney-Accountant Letter Changes | 2015-06-25 | 2015-06-25 |
| 1.5.7 | 151 | Addition of Optional OIDs for Indicating Level of Validation | 2015-09-28 | 2015-09-28 |
| 1.5.8 | 162 | Sunset of Exceptions | 2016-03-15 | 2016-03-15 |
| 1.5.9 | 163 | Fix Errata in EV Guidelines 11.2.1 | 2016-03-18 | 2016-03-18 |
| 1.6.0 | 171 | Updating ETSI Standards | 2016-07-01 | 2016-07-01 |
| 1.6.1 | 180 | In EV 11.7.1, removed outdated cross-reference to BR 3.2.2.4(7) | 2017-01-07 | 2017-01-07 |
| 1.6.2 | 103 | 825-day Certificate Lifetimes | 2017-03-17 | 2017-03-17 |
| 1.6.3 | 198 | .Onion Revisions (declared invalid) | 2017-05-07 | 2017-06-08 |
| 1.6.4 | 191 | Clarify Place of Business Information | 2017-05-23 | 2017-06-23 |
| 1.6.5 | 201 | .onion Revisions | 2017-06-08 | 2017-07-08 |
| 1.6.6 | 192 | Notary revision | 2017-06-28 | 2017-07-28 |
| 1.6.7 | 207 | ASN.1 Jurisdiction | 2017-10-23 | 2017-11-23 |
| 1.6.8 | 217 | Sunset RFC 2527 | 2017-12-21 | 2018-03-09 |
| 1.6.9 | SC016 | Other Subject Attributes | 2019-03-15 | 2019-04-16 |
| 1.7.0 | SC017 | Alternative registration numbers for EV certificates | 2019-05-21 | 2019-06-21 |
| 1.7.1 | SC024 | Fall cleanup v2 | 2019-11-12 | 2019-12-19 |
| 1.7.2 | SC027 | Version 3 Onion Certificates | 2020-02-19 | 2020-03-27 |
| 1.7.3 | SC030 | Disclosure of Registration / Incorporating Agency | 2020-07-13 | 2020-08-20 |
| 1.7.3 | SC031 | Browser Alignment | 2020-07-16 | 2020-08-20 |
| 1.7.4 | SC035 | Cleanups and Clarifications | 2020-09-09 | 2020-10-19 |
| 1.7.5 | SC041 | Reformatting the BRs, EVGs, and NCSSRs | 2021-02-24 | 2021-04-05 |
| 1.7.6 | SC042 | 398-day Re-use Period | 2021-04-22 | 2021-06-02 |
| 1.7.7 | SC047 | Sunset subject:organizationalUnitName | 2021-06-30 | 2021-08-16 |
| 1.7.8 | SC048 | Domain Name and IP Address Encoding | 2021-07-22 | 2021-08-25 |
| 1.7.9 | SC054 | Onion Cleanup | 2022-03-24 | 2022-04-23 |
| 1.8.0 | SC056 | 2022 Cleanup | 2022-10-25 | 2022-11-30 |
| 1.8.1 | SC068 | Allow VATEL and VATXI for organizationIdentifier | 2024-02-01 | 2024-03-04 |
| 2.0.0 | SC065 | Convert EVGs into RFC 3647 format | 2024-03-15 | 2024-05-15 |
| 2.0.1 | SC072 | Delete except to policyQualifiers in EVGs; align with BRs by making them NOT RECOMMENDED | 2024-04-03 | 2024-05-06 |
| 2.0.2 | SC095 | Clean-up 2025                                                                            | 2026-02-27 | 2026-05-04 |
| 2.0.3 | SC087 | Registration Number Improvement for EV Certificates                                      | 2026-06-03 | 2026-07-06 |
| 2.0.4 | SC102 | EV Domain Reuse and Validity Alignment                                                   | 2026-07-14 | 2026-08-13 |
| 2.0.5 | SC1XX | EVG Cleanup and BR Sync                                                                  | TBD        | TBD        |

\* Effective Date and Additionally Relevant Compliance Date(s)

### 1.2.2 Relevant Dates

| **Compliance** | **Section(s)** | **Summary Description (See Full Text for Details)** |
|--|--|----------|
| 2020-10-01 | [3.2.2.1.3](#32213-disclosure-of-verification-sources) | Prior to using an Incorporating Agency or Registration Agency, the CA MUST ensure the agency has been publicly disclosed |

**Implementers' Note**: As illustrated in the Document History table above, the CA/Browser Forum continues to improve relevant industry guidelines, including this document, the Baseline Requirements, and the Network and Certificate System Security Requirements. We encourage all CAs to conform to each revision on the date specified without awaiting a corresponding update to an applicable audit criterion. In the event of a conflict between an existing audit criterion and a guideline revision, we will communicate with the audit community and attempt to resolve any uncertainty. We will respond to implementation questions directed to <questions@cabforum.org>. Our coordination with compliance auditors will continue as we develop guideline revision cycles that harmonize with the revision cycles for audit criteria, the compliance auditing periods and cycles of CAs, and the CA/Browser Forum's guideline implementation dates.

## 1.3 PKI participants

### 1.3.1 Certification authorities

### 1.3.2 Registration authorities

Delegation is governed by Section 1.3.2 of the Baseline Requirements. For the purposes of Section 1.3.2 of the Baseline Requirements, the Section 3.2 requirements that MAY be delegated include the EV validation requirements of [Section 3.2.2](#322-authentication-of-organization-identity) of these Guidelines. Affiliates and/or RAs must comply with the qualification requirements of [Section 5.3.2](#532-background-check-procedures).

#### 1.3.2.1 Enterprise Registration authorities

The CA MAY contractually authorize a Subscriber to perform the RA function and authorize the CA to issue additional EV Certificates. In such case, the Subscriber SHALL be considered an Enterprise RA, and the following requirements SHALL apply:

1. In all cases, the Subscriber MUST be an organization verified by the CA in accordance with these Guidelines; and
2. The Final Cross-Correlation and Due Diligence requirements of [Section 3.2.2.13](#32213-final-cross-correlation-and-due-diligence) MAY be performed by a single person representing the Enterprise RA.

Enterprise RAs that authorize the issuance of EV Certificates solely for its own organization are exempted from the audit requirements of [Section 8](#8-compliance-audit-and-other-assessments). In all other cases, the requirements of [Section 8](#8-compliance-audit-and-other-assessments) SHALL apply.

### 1.3.3 Subscribers

### 1.3.4 Relying parties

### 1.3.5 Other participants

## 1.4 Certificate usage

### 1.4.1 Appropriate certificate uses

EV Certificates are intended for establishing Web-based data communication conduits via the TLS/SSL protocols.

#### 1.4.1.1 Primary Purposes

The primary purposes of an EV Certificate are to:

1. **Identify the legal entity that controls a Web site**: Provide a reasonable assurance to the user of an Internet browser that the Web site the user is accessing is controlled by a specific legal entity identified in the EV Certificate by name, address of Place of Business, Jurisdiction of Incorporation or Registration and Registration Number or other disambiguating information; and

2. **Enable encrypted communications with a Web site**: Facilitate the exchange of encryption keys in order to enable the encrypted communication of information over the Internet between the user of an Internet browser and a Web site.

#### 1.4.1.2 Secondary Purposes

The secondary purposes of an EV Certificate are to help establish the legitimacy of a business claiming to operate a Web site, and to provide a vehicle that can be used to assist in addressing problems related to phishing, and other forms of online identity fraud. By providing more reliable third-party verified identity and address information regarding the business, EV Certificates may help to:

1. Make it more difficult to mount phishing and other online identity fraud attacks using Certificates;
2. Assist companies that may be the target of phishing attacks or online identity fraud by providing them with a tool to better identify themselves to users; and
3. Assist law enforcement organizations in their investigations of phishing and other online identity fraud, including where appropriate, contacting, investigating, or taking legal action against the Subject.

### 1.4.2 Prohibited certificate uses

EV Certificates focus only on the identity of the Subject named in the Certificate, and not on the behavior of the Subject. As such, an EV Certificate is **not** intended to provide any assurances, or otherwise represent or warrant:

1. That the Subject named in the EV Certificate is actively engaged in doing business;
2. That the Subject named in the EV Certificate complies with applicable laws;
3. That the Subject named in the EV Certificate is trustworthy, honest, or reputable in its business dealings; or
4. That it is "safe" to do business with the Subject named in the EV Certificate.

## 1.5 Policy administration

### 1.5.1 Organization administering the document

### 1.5.2 Contact person

### 1.5.3 Person determining CPS suitability for the policy

### 1.5.4 CPS approval procedures

## 1.6 Definitions and acronyms

### 1.6.1 Definitions

Capitalized Terms are defined in the Baseline Requirements except where provided below:

**Accounting Practitioner**: A certified public accountant, chartered accountant, or a person with an equivalent license within the country of the Applicant's Jurisdiction of Incorporation or Registration or any jurisdiction where the Applicant maintains an office or physical facility; provided that an accounting standards body in the jurisdiction maintains full (not "suspended" or "associate") membership status with the International Federation of Accountants.

**Baseline Requirements**: The Baseline Requirements for the Issuance and Management of Publicly-Trusted Certificates as published by the CA/Browser Forum and any amendments to such document.

**Business Entity**: Any entity that is not a Private Organization, Government Entity, or Non-Commercial Entity as defined herein. Examples include, but are not limited to, general partnerships, unincorporated associations, sole proprietorships, etc.

**Certificate Approver**: A natural person who is either the Applicant, employed by the Applicant, or an authorized agent who has express authority to represent the Applicant to:

  i. act as a Certificate Requester and to authorize other employees or third parties to act as a Certificate Requester, and
  ii. to approve EV Certificate Requests submitted by other Certificate Requesters.

**Certificate Requester**: A natural person who is either the Applicant, employed by the Applicant, an authorized agent who has express authority to represent the Applicant, or a third party (such as an ISP or hosting company) that completes and submits an EV Certificate Request on behalf of the Applicant.

**Confirmation Request**: An appropriate out-of-band communication requesting verification or confirmation of the particular fact at issue.

**Confirming Person**: A position within an Applicant's organization that confirms the particular fact at issue.

**Contract Signer**: A natural person who is either the Applicant, employed by the Applicant, or an authorized agent who has express authority to represent the Applicant, and who has authority on behalf of the Applicant to sign Subscriber Agreements.

**Date of Formation**: The date on which a Legal Entity is first recognized by the jurisdiction in which it was created or formed.

**Demand Deposit Account**: A deposit account held at a bank or other financial institution, the funds deposited in which are payable on demand. The primary purpose of demand accounts is to facilitate cashless payments by means of check, bank draft, direct debit, electronic funds transfer, etc. Usage varies among countries, but a demand deposit account is commonly known as a share draft account, a current account, or a checking account.

**EV Authority**: A source other than the Certificate Approver, through which verification occurs that the Certificate Approver is expressly authorized by the Applicant, as of the date of the EV Certificate Request, to take the Request actions described in these Guidelines.

**EV Certificate**: A certificate that contains subject information specified in these Guidelines and that has been validated in accordance with these Guidelines.

**EV Certificate Request**: A request from an Applicant to the CA requesting that the CA issue an EV Certificate to the Applicant, which request is validly authorized by the Applicant and signed by the Applicant Representative.

**EV Certificate Warranties**: In conjunction with the CA issuing an EV Certificate, the CA and its Root CA, during the period when the EV Certificate is Valid, promise that the CA has followed the requirements of these Guidelines and the CA's EV Policies in issuing the EV Certificate and in verifying the accuracy of the information contained in the EV Certificate.

**EV Policies**: Auditable EV Certificate practices, policies and procedures, such as a certification practice statement and certificate policy, that are developed, implemented, and enforced by the CA and its Root CA.

**EV Processes**: The keys, software, processes, and procedures by which the CA verifies Certificate Data under this Guideline, issues EV Certificates, maintains a Repository, and revokes EV Certificates.

**Extended Validation Certificate**: See EV Certificate.

**Government Agency**: In the context of a Private Organization, the government agency in the Jurisdiction of Incorporation under whose authority the legal existence of Private Organizations is established (e.g., the government agency that issued the Certificate of Incorporation). In the context of Business Entities, the government agency in the jurisdiction of operation that registers business entities. In the case of a Government Entity, the entity that enacts law, regulations, or decrees establishing the legal existence of Government Entities.

**Guidelines**: This document.

**Incorporating Agency**: In the context of a Private Organization, the government agency in the Jurisdiction of Incorporation under whose authority the legal existence of the entity is registered (e.g., the government agency that issues certificates of formation or incorporation). In the context of a Government Entity, the entity that enacts law, regulations, or decrees establishing the legal existence of Government Entities.

**Independent Confirmation From Applicant**: Confirmation of a particular fact received by the CA pursuant to the provisions of the Guidelines or binding upon the Applicant.

**Individual**: A natural person.

**International Organization**: An organization founded by a constituent document, e.g., a charter, treaty, convention or similar document, signed by, or on behalf of, a minimum of two Sovereign State governments.

**Jurisdiction of Incorporation**: In the context of a Private Organization, the country and (where applicable) the state or province or locality where the organization's legal existence was established by a filing with (or an act of) an appropriate government agency or entity (e.g., where it was incorporated). In the context of a Government Entity, the country and (where applicable) the state or province where the Entity's legal existence was created by law.

**Jurisdiction of Registration**: In the case of a Business Entity, the state, province, or locality where the organization has registered its business presence by means of filings by a Principal Individual involved in the business.

**Latin Notary**: A person with legal training whose commission under applicable law not only includes authority to authenticate the execution of a signature on a document but also responsibility for the correctness and content of the document. A Latin Notary is sometimes referred to as a Civil Law Notary.

**Legal Existence**: A Private Organization, Government Entity, or Business Entity has Legal Existence if it has been validly formed and not otherwise terminated, dissolved, or abandoned.

**Legal Practitioner**: A person who is either a lawyer or a Latin Notary as described in these Guidelines and competent to render an opinion on factual claims of the Applicant.

**Maximum Validity Period**:

  1. The maximum time period for which the issued EV Certificate is valid.
  2. The maximum period after validation by the CA that certain Applicant information may be relied upon in issuing an EV Certificate pursuant to these Guidelines.

**Notary**: A person whose commission under applicable law includes authority to authenticate the execution of a signature on a document.

**Place of Business**: The location of any facility (such as a factory, retail store, warehouse, etc) where the Applicant's business is conducted.

**Principal Individual**: An individual of a Private Organization, Government Entity, or Business Entity that is either an owner, partner, managing member, director, or officer, as identified by their title of employment, or an employee, contractor or agent authorized by such entity or organization to conduct business related to the request, issuance, and use of EV Certificates.

**Private Organization**: A non-governmental legal entity (whether ownership interests are privately held or publicly traded) whose existence was created by a filing with (or an act of) the Incorporating Agency or equivalent in its Jurisdiction of Incorporation.

**Qualified Government Information Source**: A regularly-updated and current, publicly available, database designed for the purpose of accurately providing the information for which it is consulted, and which is generally recognized as a dependable source of such information, provided that it is maintained by a Government Entity, the reporting of data is required by law, and false or misleading reporting is punishable with criminal or civil penalties. Nothing in these Guidelines shall prohibit the use of third-party vendors to obtain the information from the Government Entity provided that the third party obtains the information directly from the Government Entity.

**Qualified Government Tax Information Source**: A Qualified Government Information Source that specifically contains tax information relating to Private Organizations, Business Entities, or Individuals (e.g., the IRS in the United States).

**Qualified Independent Information Source**: A regularly-updated and current, publicly available, database designed for the purpose of accurately providing the information for which it is consulted, and which is generally recognized as a dependable source of such information.

**Registration Agency**: A Governmental Agency that registers business information in connection with an entity's business formation or authorization to conduct business under a license, charter or other certification. A Registration Agency MAY include, but is not limited to:

  i. a State Department of Corporations or a Secretary of State;
  ii. a licensing agency, such as a State Department of Insurance; or
  iii. a chartering agency, such as a state office or department of financial regulation, banking or finance, or a federal agency such as the Office of the Comptroller of the Currency or Office of Thrift Supervision.

**Registered Agent**: An individual or entity that is:

  i. authorized by the Applicant to receive service of process and business communications on behalf of the Applicant; and
  ii. listed in the official records of the Applicant's Jurisdiction of Incorporation as acting in the role specified in (i) above.

**Registered Office**: The official address of a company, as recorded with the Incorporating Agency, to which official documents are sent and at which legal notices are received.

**Registration Number**: The identifier assigned to a Business Entity, Private Organization, or Government Entity by the Incorporating Agency in such entity's Jurisdiction of Incorporation or Registration.

**Regulated Financial Institution**: A financial institution that is regulated, supervised, and examined by governmental, national, state or provincial, or local authorities.

**Signing Authority**: One or more Certificate Approvers designated to act on behalf of the Applicant.

**Translator**: A Natural Person or a Legal Entity that possesses the requisite knowledge and expertise to accurately translate the words of a document written in one language to the native language of the CA.

**Verified Accountant Letter**: A document meeting the requirements specified in [Section 3.2.2.11.2](#322112-verified-accountant-letter).

**Verified Legal Opinion**: A document meeting the requirements specified in [Section 3.2.2.11.1](#322111-verified-legal-opinion).

**Verified Method of Communication**: The use of a telephone number, a fax number, an email address, or postal delivery address, confirmed by the CA in accordance with [Section 3.2.2.5](#3225-verified-method-of-communication) as a reliable way of communicating with the Applicant.

**Verified Professional Letter**: A Verified Accountant Letter or Verified Legal Opinion.

**WebTrust EV Program**: The additional audit procedures specified for CAs that issue EV Certificates by the AICPA/CICA to be used in conjunction with its WebTrust Program for Certification Authorities.

**WebTrust Program for CAs**: The then-current version of the AICPA/CICA WebTrust Program for Certification Authorities.

**WebTrust Seal of Assurance**: An affirmation of compliance resulting from the WebTrust Program for CAs.

### 1.6.2 Acronyms

Abbreviations and Acronyms are defined in the Baseline Requirements except as otherwise defined herein:

| **Acronym** | **Meaning** |
| --- | --- |
| BIS | (US Government) Bureau of Industry and Security |
| CEO | Chief Executive Officer |
| CFO | Chief Financial Officer |
| CIO | Chief Information Officer |
| COO | Chief Operating Officer |
| CPA | Chartered Professional Accountant |
| CSO | Chief Security Officer |
| EV | Extended Validation |
| IRS | Internal Revenue Service |
| ISP | Internet Service Provider |
| QGIS | Qualified Government Information Source |
| QTIS | Qualified Government Tax Information Source |
| QIIS | Qualified Independent Information Source |
| SEC | (US Government) Securities and Exchange Commission |

### 1.6.3 References

### 1.6.4 Conventions

Terms not otherwise defined in these Guidelines shall be as defined in applicable agreements, user manuals, certification practice statements (CPS), and certificate policies (CP) of the CA issuing EV Certificates.

The key words "REQUIRED", "SHALL", "SHALL NOT", "SHOULD", "SHOULD NOT", "RECOMMENDED", "MAY", and "OPTIONAL" in these Guidelines shall be interpreted in accordance with [RFC 2119](https://datatracker.ietf.org/doc/html/rfc2119).

By convention, this document omits time and timezones when listing effective requirements such as dates. Except when explicitly specified, the associated time with a date shall be 00:00:00 UTC.

# 2. PUBLICATION AND REPOSITORY RESPONSIBILITIES

Each CA must develop, implement, enforce, display prominently on its Web site, and periodically update as necessary its own auditable EV Certificate practices, policies and procedures, such as a Certification Practice Statement (CPS) and Certificate Policy (CP) that specify the CA's and its Root CA's entire root certificate hierarchy including all roots that its EV Certificates depend on for proof of those EV Certificates' authenticity.

## 2.1 Repositories

## 2.2 Publication of certification information

Each CA SHALL publicly give effect to these Guidelines and represent that they will adhere to the latest published version by incorporating them into their respective EV Policies, using a clause such as the following (which must include a link to the official version of these Guidelines):

> [Name of CA] conforms to the current version of the CA/Browser Forum Guidelines for Issuance and Management of Extended Validation Certificates published at <https://www.cabforum.org>. In the event of any inconsistency between this document and those Guidelines, those Guidelines take precedence over this document.

In addition, the CA MUST include (directly or by reference) the applicable requirements of these Guidelines in all contracts with Subordinate CAs, RAs, Enterprise RAs, and subcontractors that involve or relate to the issuance or maintenance of EV Certificates. The CA MUST enforce compliance with such terms.

## 2.3 Time or frequency of publication

## 2.4 Access controls on repositories

# 3. IDENTIFICATION AND AUTHENTICATION

## 3.1 Naming

### 3.1.1 Types of names

### 3.1.2 Need for names to be meaningful

### 3.1.3 Anonymity or pseudonymity of subscribers

### 3.1.4 Rules for interpreting various name forms

### 3.1.5 Uniqueness of names

### 3.1.6 Recognition, authentication, and role of trademarks

## 3.2 Initial identity validation

### 3.2.1 Method to prove possession of private key

### 3.2.2 Authentication of organization identity

#### 3.2.2.1 Overview

This part of the Guidelines sets forth Verification Requirements and Acceptable Methods of Verification for each such Requirement.

##### 3.2.2.1.1 Verification Requirements – Overview

Before issuing an EV Certificate, the CA MUST ensure that all Subject organization information to be included in the EV Certificate conforms to the requirements of, and is verified in accordance with, these Guidelines and matches the information confirmed and documented by the CA pursuant to its verification processes. Such verification processes are intended to accomplish the following:

1. Verify Applicant's existence and identity, including;

   A.  Verify the Applicant's legal existence and identity (as more fully set forth in [Section 3.2.2.2](#3222-verification-of-applicants-legal-existence-and-identity)),
   B.  Verify the Applicant's physical existence (business presence at a physical address), and
   C.  Verify the Applicant's operational existence (business activity).

2. Verify the Applicant is a registered holder, or has control, of the Domain Name(s) to be included in the EV Certificate, in accordance with Section 3.2.2.4 or Appendix B of the Baseline Requirements;

3. In addition to the requirements of Section 3.2.5 of the Baseline Requirements, verify a reliable means of communication with the entity to be named as the Subject in the Certificate;

4. Verify the Applicant's authorization for the EV Certificate, including;

   A.  Verify the name, title, and authority of the Contract Signer, Certificate Approver, and Certificate Requester,
   B.  Verify that a Contract Signer signed the Subscriber Agreement or that a duly authorized Applicant Representative acknowledged and agreed to the Terms of Use; and
   C.  Verify that a Certificate Approver has signed or otherwise approved the EV Certificate Request.

##### 3.2.2.1.2 Acceptable Methods of Verification – Overview

As a general rule, the CA is responsible for taking all verification steps reasonably necessary to satisfy each of the Verification Requirements set forth in the subsections below. The Acceptable Methods of Verification set forth in each of Sections 3.2.2.2 through 3.2.2.14 (which usually include alternatives) are considered to be the minimum acceptable level of verification required of the CA. In all cases, however, the CA is responsible for taking any additional verification steps that may be reasonably necessary under the circumstances to satisfy the applicable Verification Requirement.

##### 3.2.2.1.3 Disclosure of Verification Sources

Prior to the use of an Incorporating Agency or Registration Agency to fulfill these verification requirements, the CA MUST publicly disclose Agency Information about the Incorporating Agency or Registration Agency. This disclosure SHALL be through an appropriate and readily accessible online means.

This Agency Information SHALL include at least the following:

- Sufficient information to unambiguously identify the Incorporating Agency or Registration Agency (such as a name, jurisdiction, and website); and,
- The accepted value or values for each of the `subject:jurisdictionLocalityName` (OID: 1.3.6.1.4.1.311.60.2.1.1), `subject:jurisdictionStateOrProvinceName` (OID: 1.3.6.1.4.1.311.60.2.1.2), and `subject:jurisdictionCountryName` (OID: 1.3.6.1.4.1.311.60.2.1.3) fields, when a certificate is issued using information from that Incorporating Agency or Registration Agency, indicating the jurisdiction(s) that the Agency is appropriate for; and,
- The acceptable form or syntax of Registration Numbers that are assigned by the Incorporating Agency or Registration Agency, if the CA restricts such Numbers to an acceptable form or syntax; and,
- A revision history that includes a unique version number and date of publication for any additions, modifications, and/or removals from this list.

The CA MUST document where to obtain this information within Section 3.2 of the CA's Certificate Policy and/or Certification Practice Statement.

#### 3.2.2.2 Verification of Applicant's Legal Existence and Identity

##### 3.2.2.2.1 Verification Requirements

To verify the Applicant's legal existence and identity, the CA MUST do the following.

1. **Private Organization Subjects**

   A.  **Legal Existence**: Verify that the Applicant is a legally recognized entity, in existence and validly formed (e.g., incorporated) with the Incorporating or Registration Agency in the Applicant's Jurisdiction of Incorporation or Registration, and not designated on the records of the Incorporating or Registration Agency by labels such as "inactive", "invalid", "not current", or the equivalent.
   B.  **Organization Name**: Verify that the Applicant's formal legal name as recorded with the Incorporating or Registration Agency in the Applicant's Jurisdiction of Incorporation or Registration matches the Applicant's name in the EV Certificate Request.
   C.  **Registration Number or Date of Formation**: Attempt to obtain the specific Registration Number assigned to the Applicant by the Incorporating or Registration Agency in the Applicant's Jurisdiction of Incorporation or Registration. Where the Incorporating or Registration Agency does not assign a Registration Number, the CA SHALL obtain the Applicant's Date of Formation from the Incorporating or Registration Agency.
   D.  **Registered Agent**: Obtain the identity and address of the Applicant's Registered Agent or Registered Office (as applicable in the Applicant's Jurisdiction of Incorporation or Registration).

2. **Government Entity Subjects**

   A.  **Legal Existence**: Verify that the Applicant is a legally recognized Government Entity, in existence in the political subdivision in which such Government Entity operates.
   B.  **Entity Name**: Verify that the Applicant's formal legal name matches the Applicant's name in the EV Certificate Request.
   C.  **Registration Number or Date of Formation**: Attempt to obtain the specific Registration Number assigned to the Applicant by the Incorporating or Registration Agency in the Applicant's Jurisdiction of Incorporation or Registration. Where the Registration Agency does not assign a Registration Number, the CA SHALL attempt to obtain the Applicant's Date of Formation from the Registration Agency.

3. **Business Entity Subjects**

   A.  **Legal Existence**: Verify that the Applicant is engaged in business under the name submitted by the Applicant in the Application.
   B.  **Organization Name**: Verify that the Applicant's formal legal name as recognized by the Registration Agency in the Applicant's Jurisdiction of Registration matches the Applicant's name in the EV Certificate Request.
   C.  **Registration Number or Date of Formation**: Attempt to obtain the specific Registration Number assigned to the Applicant by the Registration Agency in the Applicant's Jurisdiction of Registration. Where the Registration Agency does not assign a Registration Number, the CA SHALL obtain the Applicant's Date of Formation.
   D.  **Principal Individual**: Verify the identity of the identified Principal Individual.

4. **Non-Commercial Entity Subjects (International Organizations)**

   A.  **Legal Existence**: Verify that the Applicant is a legally recognized International Organization Entity.
   B.  **Entity Name**: Verify that the Applicant's formal legal name matches the Applicant's name in the EV Certificate Request.
   C.  **Date of Formation**: Attempt to obtain the Applicant's Date of Formation.

##### 3.2.2.2.2 Acceptable Method of Verification

1. **Private Organization Subjects**: Unless verified under subsection (6), all items listed in [Section 3.2.2.2.1](#32221-verification-requirements) (1) MUST be verified directly with, or obtained directly from, the Incorporating or Registration Agency in the Applicant's Jurisdiction of Incorporation or Registration. Such verification MAY be through use of a Qualified Government Information Source operated by, or on behalf of, the Incorporating or Registration Agency, or by direct contact with the Incorporating or Registration Agency in person or via mail, e-mail, Web address, or telephone, using an address or phone number obtained directly from the Qualified Government Information Source, Incorporating or Registration Agency, or from a Qualified Independent Information Source.

2. **Government Entity Subjects**: Unless verified under subsection (6), all items listed in [Section 3.2.2.2.1](#32221-verification-requirements) (2) MUST either be verified directly with, or obtained directly from, one of the following:
   i. a Qualified Government Information Source in the political subdivision in which such Government Entity operates;
   ii. a superior governing Government Entity in the same political subdivision as the Applicant (e.g. a Secretary of State may verify the legal existence of a specific State Department), or
   iii. from a judge that is an active member of the federal, state or local judiciary within that political subdivision.

   Any communication from a judge SHALL be verified in the same manner as is used for verifying factual assertions that are asserted by an Attorney as set forth in [Section 3.2.2.11.1](#322111-verified-legal-opinion).

   Such verification MAY be by direct contact with the appropriate Government Entity in person or via mail, e-mail, Web address, or telephone, using an address or phone number obtained from a Qualified Independent Information Source.

3. **Business Entity Subjects**: Unless verified under subsection (6), Items listed in [Section 3.2.2.2.1](#32221-verification-requirements) (3) (A) through (C) above, MUST be verified directly with, or obtained directly from, the Registration Agency in the Applicant's Jurisdiction of Registration. Such verification MAY be performed by means of a Qualified Government Information Source, a Qualified Governmental Tax Information Source, or by direct contact with the Registration Agency in person or via mail, e-mail, Web address, or telephone, using an address or phone number obtained directly from the Qualified Government Information Source, Qualified Governmental Tax Information Source or Registration Agency, or from a Qualified Independent Information Source. In addition, the CA MUST validate a Principal Individual associated with the Business Entity pursuant to the requirements in subsection (4), below.

4. **Principal Individual**: A Principal Individual associated with the Business Entity MUST be validated in a face-to-face setting. The CA MAY rely upon a face-to-face validation of the Principal Individual performed by the Registration Agency, provided that the CA has evaluated the validation procedure and concluded that it satisfies the requirements of the Guidelines for face-to-face validation procedures. Where no face-to-face validation was conducted by the Registration Agency, or the Registration Agency's face-to-face validation procedure does not satisfy the requirements of the Guidelines, the CA SHALL perform face-to-face validation.

   A.  **Face-To-Face Validation**: The face-to-face validation MUST be conducted before either an employee of the CA, a Latin Notary, a Notary (or equivalent in the Applicant's jurisdiction), a Lawyer, or Accountant (Third-Party Validator). The Principal Individual(s) MUST present the following documentation (Vetting Documents) directly to the Third-Party Validator:

       i. A Personal Statement that includes the following information:

          1. Full name or names by which a person is, or has been, known (including all other names used);
          2. Residential Address at which he/she can be located;
          3. Date of birth; and
          4. An affirmation that all of the information contained in the Certificate Request is true and correct.

       ii. A current signed government-issued identification document that includes a photo of the Individual and is signed by the Individual such as:

           1. A passport;
           2. A driver's license;
           3. A personal identification card;
           4. A concealed weapons permit; or
           5. A military ID.

       iii. At least two secondary documentary evidences to establish his/her identity that include the name of the Individual, one of which MUST be from a financial institution.

            1. Acceptable financial institution documents include:

               a. A major credit card, provided that it contains an expiration date and it has not expired,
               b. A debit card from a regulated financial institution, provided that it contains an expiration date and it has not expired,
               c. A mortgage statement from a recognizable lender that is less than six months old,
               d. A bank statement from a regulated financial institution that is less than six months old.

            2. Acceptable non-financial documents include:

               a. Recent original utility bills or certificates from a utility company confirming the arrangement to pay for the services at a fixed address (not a mobile/cellular telephone bill),
               b. A copy of a statement for payment of a lease, provided that the statement is dated within the past six months,
               c. A certified copy of a birth certificate,
               d. A local authority tax bill for the current year,
               e. A certified copy of a court order, such as a divorce certificate, annulment papers, or adoption papers.

       The Third-Party Validator performing the face-to-face validation MUST:

         i. Attest to the signing of the Personal Statement and the identity of the signer; and
         ii. Identify the original Vetting Documents used to perform the identification. In addition, the Third-Party Validator MUST attest on a copy of the current signed government-issued photo identification document that it is a full, true, and accurate reproduction of the original.

   B.  **Verification of Third-Party Validator**: The CA MUST verify the Third-Party Validator in accordance with [Section 3.2.2.11.3](#322113-face-to-face-validation).

   C.  **Cross-checking of Information**: The CA MUST obtain the signed and attested Personal Statement together with the attested copy of the current signed government-issued photo identification document. The CA MUST review the documentation to determine that the information is consistent, matches the information in the application, and identifies the Individual. The CA MAY rely on electronic copies of this documentation, provided that:

       i. the CA confirms their authenticity (not improperly modified when compared with the underlying original) with the Third-Party Validator; and
       ii. electronic copies of similar kinds of documents are recognized as legal substitutes for originals under the laws of the CA's jurisdiction.

5. **Non-Commercial Entity Subjects (International Organization)**: Unless verified under subsection (6), all items listed in [Section 3.2.2.2.1](#32221-verification-requirements) (4) MUST be verified either:

   A.  With reference to the constituent document under which the International Organization was formed; or
   B.  Directly with a signatory country's government in which the CA is permitted to do business. Such verification may be obtained from an appropriate government agency or from the laws of that country, or by verifying that the country's government has a mission to represent it at the International Organization; or
   C.  Directly against any current list of qualified entities that the CA/Browser Forum may maintain at <www.cabforum.org>.
   D.  In cases where the International Organization applying for the EV Certificate is an organ or agency - including a non-governmental organization of a verified International Organization, then the CA may verify the International Organization Applicant directly with the verified umbrella International Organization of which the Applicant is an organ or agency.

6. The CA may rely on a Verified Professional Letter to establish the Applicant's information listed in (1)-(5) above if:

   i. the Verified Professional Letter includes a copy of supporting documentation used to establish the Applicant's legal existence, such as a certificate of registration, articles of incorporation, operating agreement, statute, or regulatory act, and
   ii. the CA confirms the Applicant's organization name specified in the Verified Professional Letter with a QIIS or QGIS.

#### 3.2.2.3 Verification of Applicant's Legal Existence and Identity – Assumed Name

##### 3.2.2.3.1 Verification Requirements

If, in addition to the Applicant's formal legal name, as recorded with the applicable Incorporating Agency or Registration Agency in the Applicant's Jurisdiction of Incorporation or Registration, the Applicant's identity, as asserted in the EV Certificate, is to contain any assumed name (also known as "doing business as", "DBA", or "d/b/a" in the US, and "trading as" in the UK) under which the Applicant conducts business, the CA MUST verify that:

   i. the Applicant has registered its use of the assumed name with the appropriate government agency for such filings in the jurisdiction of its Place of Business (as verified in accordance with these Guidelines), and
   ii. that such filing continues to be valid.

##### 3.2.2.3.2 Acceptable Method of Verification

To verify any assumed name under which the Applicant conducts business:

1. The CA MAY verify the assumed name through use of a Qualified Government Information Source operated by, or on behalf of, an appropriate government agency in the jurisdiction of the Applicant's Place of Business, or by direct contact with such government agency in person or via mail, e-mail, Web address, or telephone; or
2. The CA MAY verify the assumed name through use of a Qualified Independent Information Source provided that the QIIS has verified the assumed name with the appropriate government agency.
3. The CA MAY rely on a Verified Professional Letter that indicates the assumed name under which the Applicant conducts business, the government agency with which the assumed name is registered, and that such filing continues to be valid.

#### 3.2.2.4 Verification of Applicant's Physical Existence

##### 3.2.2.4.1 Address of Applicant's Place of Business

1. **Verification Requirements**: To verify the Applicant's physical existence and business presence, the CA MUST verify that the physical address provided by the Applicant is an address where the Applicant or a Parent/Subsidiary Company conducts business operations (not, for example, a mail drop or P.O. box, or 'care of' (C/O) address, such as an address for an agent of the Organization), and is the address of the Applicant's Place of Business.

2. **Acceptable Methods of Verification**

   A.  **Place of Business in the Country of Incorporation or Registration**

       i. For Applicants whose Place of Business is in the same country as the Applicant's Jurisdiction of Incorporation or Registration and whose Place of Business is NOT the same as that indicated in the relevant Qualified Government Information Source used in [Section 3.2.2.2](#3222-verification-of-applicants-legal-existence-and-identity) to verify legal existence:

          1. For Applicants listed at the same Place of Business address in the current version of either at least one QGIS (other than that used to verify legal existence), QIIS or QTIS, the CA MUST confirm that the Applicant's address, as listed in the EV Certificate Request, is a valid business address for the Applicant or a Parent/Subsidiary Company by reference to such QGIS, QIIS, or QTIS, and MAY rely on the Applicant's representation that such address is its Place of Business;

          2. For Applicants who are not listed at the same Place of Business address in the current version of either at least one QIIS or QTIS, the CA MUST confirm that the address provided by the Applicant in the EV Certificate Request is the Applicant's or a Parent/Subsidiary Company's business address, by obtaining documentation of a site visit to the business address, which MUST be performed by a reliable individual or firm. The documentation of the site visit MUST:

             a. Verify that the Applicant's business is located at the exact address stated in the EV Certificate Request (e.g., via permanent signage, employee confirmation, etc.),
             b. Identify the type of facility (e.g., office in a commercial building, private residence, storefront, etc.) and whether it appears to be a permanent business location,
             c. Indicate whether there is a permanent sign (that cannot be moved) that identifies the Applicant,
             d. Indicate whether there is evidence that the Applicant is conducting ongoing business activities at the site (not that it is just, for example, a mail drop, P.O. box, etc.), and
             e. Include one or more photos of
                i. the exterior of the site (showing signage indicating the Applicant's name, if present, and showing the street address if possible), and
                ii. the interior reception area or workspace.

       ii. For all Applicants, the CA MAY alternatively rely on a Verified Professional Letter that indicates the address of the Applicant's or a Parent/Subsidiary Company's Place of Business and that business operations are conducted there.
       iii. For Government Entity Applicants, the CA MAY rely on the address contained in the records of the QGIS in the Applicant's jurisdiction.
       iv. For Applicants whose Place of Business is in the same country as the Applicant's Jurisdiction of Incorporation or Registration and where the QGIS used in [Section 3.2.2.2](#3222-verification-of-applicants-legal-existence-and-identity) to verify legal existence contains a business address for the Applicant, the CA MAY rely on the address in the QGIS to confirm the Applicant's or a Parent/Subsidiary Company's address as listed in the EV Certificate Request, and MAY rely on the Applicant's representation that such address is its Place of Business.

   B.  **Place of Business not in the Country of Incorporation or Registration**: The CA MUST rely on a Verified Professional Letter that indicates the address of the Applicant's Place of Business and that business operations are conducted there.

#### 3.2.2.5 Verified Method of Communication

##### 3.2.2.5.1 Verification Requirements

To assist in communicating with the Applicant and confirming that the Applicant is aware of and approves issuance, the CA MUST verify a telephone number, fax number, email address, or postal delivery address as a Verified Method of Communication with the Applicant.

##### 3.2.2.5.2 Acceptable Methods of Verification

To verify a Verified Method of Communication with the Applicant, the CA MUST:

A.  Verify that the Verified Method of Communication belongs to the Applicant, or a Parent/Subsidiary or Affiliate of the Applicant, by matching it with one of the Applicant's Parent/Subsidiary or Affiliate's Places of Business in:

    i. records provided by the applicable phone company;
    ii. a QGIS, QTIS, or QIIS; or
    iii. a Verified Professional Letter; and

B.  Confirm the Verified Method of Communication by using it to obtain an affirmative response sufficient to enable a reasonable person to conclude that the Applicant, or a Parent/Subsidiary or Affiliate of Applicant, can be contacted reliably by using the Verified Method of Communication.

#### 3.2.2.6 Verification of Applicant's Operational Existence

##### 3.2.2.6.1 Verification Requirements

The CA MUST verify that the Applicant has the ability to engage in business by verifying the Applicant's, or Affiliate/Parent/Subsidiary Company's, operational existence. The CA MAY rely on its verification of a Government Entity's legal existence under [Section 3.2.2.2](#3222-verification-of-applicants-legal-existence-and-identity) as verification of a Government Entity's operational existence.

##### 3.2.2.6.2 Acceptable Methods of Verification

To verify the Applicant's ability to engage in business, the CA MUST verify the operational existence of the Applicant, or its Affiliate/Parent/Subsidiary Company, by:

1. Verifying that the Applicant, Affiliate, Parent Company, or Subsidiary Company has been in existence for at least three years, as indicated by the records of an Incorporating Agency or Registration Agency;

2. Verifying that the Applicant, Affiliate, Parent Company, or Subsidiary Company is listed in either a current QIIS or QTIS;

3. Verifying that the Applicant, Affiliate, Parent Company, or Subsidiary Company has an active current Demand Deposit Account with a Regulated Financial Institution by receiving authenticated documentation of the Applicant's, Affiliate's, Parent Company's, or Subsidiary Company's Demand Deposit Account directly from a Regulated Financial Institution; or

4. Relying on a Verified Professional Letter to the effect that the Applicant has an active current Demand Deposit Account with a Regulated Financial Institution.

#### 3.2.2.7 Verification of Applicant's Domain Name

##### 3.2.2.7.1 Verification Requirements

1. For each Fully-Qualified Domain Name listed in a Certificate which is not an Onion Domain Name, the CA SHALL confirm that, as of the date the Certificate was issued, the ownership or control of the FQDN by the Applicant (or the Applicant's Parent Company, Subsidiary Company, or Affiliate, collectively referred to as "Applicant" for the purposes of this section) has been validated in accordance with Section 3.2.2.4 of the Baseline Requirements. For a Certificate issued to an Onion Domain Name, the CA SHALL confirm the Applicant's control over the Onion Domain Name in accordance with Appendix B of the Baseline Requirements.

2. **Mixed Character Set Domain Names**: EV Certificates MAY include Domain Names containing mixed character sets only in compliance with the rules set forth by the domain registrar. The CA MUST visually compare any Domain Names with mixed character sets with known high risk domains. If a similarity is found, then the EV Certificate Request MUST be flagged as High Risk. The CA must perform reasonably appropriate additional authentication and verification to be certain beyond reasonable doubt that the Applicant and the target in question are the same organization.

#### 3.2.2.8 Verification of Name, Title, and Authority of Contract Signer and Certificate Approver

##### 3.2.2.8.1 Verification Requirements

For both the Contract Signer and the Certificate Approver, the CA MUST verify the following.

1. **Name, Title and Agency**: The CA MUST verify the name and title of the Contract Signer and the Certificate Approver, as applicable. The CA MUST also verify that the Contract Signer and the Certificate Approver are agents representing the Applicant.
2. **Signing Authority of Contract Signer**: The CA MUST verify that the Contract Signer is authorized by the Applicant to enter into the Subscriber Agreement (and any other relevant contractual obligations) on behalf of the Applicant, including a contract that designates one or more Certificate Approvers on behalf of the Applicant.
3. **EV Authority of Certificate Approver**: The CA MUST verify, through a source other than the Certificate Approver him- or herself, that the Certificate Approver is expressly authorized by the Applicant to do the following, as of the date of the EV Certificate Request:

   A.  Submit, and, if applicable, authorize a Certificate Requester to submit, the EV Certificate Request on behalf of the Applicant; and
   B.  Provide, and, if applicable, authorize a Certificate Requester to provide, the information requested from the Applicant by the CA for issuance of the EV Certificate; and
   C.  Approve EV Certificate Requests submitted by a Certificate Requester.

##### 3.2.2.8.2 Acceptable Methods of Verification – Name, Title and Agency

Acceptable methods of verification of the name, title, and agency status of the Contract Signer and the Certificate Approver include the following.

1. **Name and Title**: The CA MAY verify the name and title of the Contract Signer and the Certificate Approver by any appropriate method designed to provide reasonable assurance that a person claiming to act in such a role is in fact the named person designated to act in such role.

2. **Agency**: The CA MAY verify the agency of the Contract Signer and the Certificate Approver by:

   A.  Contacting the Applicant using a Verified Method of Communication for the Applicant, and obtaining confirmation that the Contract Signer and/or the Certificate Approver, as applicable, is an employee;
   B.  Obtaining an Independent Confirmation From the Applicant (as described in [Section 3.2.2.11.4](#322114-independent-confirmation-from-applicant)), or a Verified Professional Letter verifying that the Contract Signer and/or the Certificate Approver, as applicable, is either an employee or has otherwise been appointed as an agent of the Applicant; or
   C.  Obtaining confirmation from a QIIS or QGIS that the Contract Signer and/or Certificate Approver is an employee of the Applicant.

   The CA MAY also verify the agency of the Certificate Approver via a certification from the Contract Signer (including in a contract between the CA and the Applicant signed by the Contract Signer), provided that the employment or agency status and Signing Authority of the Contract Signer has been verified.

##### 3.2.2.8.3 Acceptable Methods of Verification – Authority

Acceptable methods of verification of the Signing Authority of the Contract Signer, and the EV Authority of the Certificate Approver, as applicable, include:

1. **Verified Professional Letter**: The Signing Authority of the Contract Signer, and/or the EV Authority of the Certificate Approver, MAY be verified by reliance on a Verified Professional Letter;
2. **Corporate Resolution**: The Signing Authority of the Contract Signer, and/or the EV Authority of the Certificate Approver, MAY be verified by reliance on a properly authenticated corporate resolution that confirms that the person has been granted such Signing Authority, provided that such resolution is:

   i. certified by the appropriate corporate officer (e.g., secretary), and
   ii. the CA can reliably verify that the certification was validly signed by such person, and that such person does have the requisite authority to provide such certification;

3. **Independent Confirmation from Applicant**: The Signing Authority of the Contract Signer, and/or the EV Authority of the Certificate Approver, MAY be verified by obtaining an Independent Confirmation from the Applicant (as described in [Section 3.2.2.11.4](#322114-independent-confirmation-from-applicant));
4. **Contract between CA and Applicant**: The EV Authority of the Certificate Approver MAY be verified by reliance on a contract between the CA and the Applicant that designates the Certificate Approver with such EV Authority, provided that the contract is signed by the Contract Signer and provided that the agency and Signing Authority of the Contract Signer have been verified;
5. **Prior Equivalent Authority**: The signing authority of the Contract Signer, and/or the EV authority of the Certificate Approver, MAY be verified by relying on a demonstration of Prior Equivalent Authority.

   A.  Prior Equivalent Authority of a Contract Signer MAY be relied upon for confirmation or verification of the signing authority of the Contract Signer when the Contract Signer has executed a binding contract between the CA and the Applicant with a legally valid and enforceable seal or handwritten signature and only when the contract was executed more than 90 days prior to the EV Certificate application. The CA MUST record sufficient details of the previous agreement to correctly identify it and associate it with the EV application. Such details MAY include any of the following:

       i. Agreement title,
       ii. Date of Contract Signer's signature,
       iii. Contract reference number, and
       iv. Filing location.

   B.  Prior Equivalent Authority of a Certificate Approver MAY be relied upon for confirmation or verification of the EV Authority of the Certificate Approver when the Certificate Approver has performed one or more of the following:

       i. Under contract to the CA, has served (or is serving) as an Enterprise RA for the Applicant, or
       ii. Has participated in the approval of one or more certificate requests, for certificates issued by the CA and which are currently and verifiably in use by the Applicant. In this case the CA MUST have contacted the Certificate Approver by phone at a previously validated phone number or have accepted a signed and notarized letter approving the certificate request.

6. **QIIS or QGIS**: The Signing Authority of the Contract Signer, and/or the EV Authority of the Certificate Approver, MAY be verified by a QIIS or QGIS that identifies the Contract Signer and/or the Certificate Approver as a corporate officer, sole proprietor, or other senior official of the Applicant.

7. **Contract Signer's Representation/Warranty**: Provided that the CA verifies that the Contract Signer is an employee or agent of the Applicant, the CA MAY rely on the signing authority of the Contract Signer by obtaining a duly executed representation or warranty from the Contract Signer that includes the following acknowledgments:

   A.  That the Applicant authorizes the Contract Signer to sign the Subscriber Agreement on the Applicant's behalf,
   B.  That the Subscriber Agreement is a legally valid and enforceable agreement,
   C.  That, upon execution of the Subscriber Agreement, the Applicant will be bound by all of its terms and conditions,
   D.  That serious consequences attach to the misuse of an EV certificate, and
   E.  The contract signer has the authority to obtain the digital equivalent of a corporate seal, stamp or officer's signature to establish the authenticity of the company's Web site.

Note: An example of an acceptable representation/warranty appears in [Appendix E](#appendix-e---sample-contract-signers-representationwarranty-informative).

##### 3.2.2.8.4 Pre-Authorized Certificate Approver

Where the CA and Applicant contemplate the submission of multiple future EV Certificate Requests, then, after the CA:

1. Has verified the name and title of the Contract Signer and that he/she is an employee or agent of the Applicant; and
2. Has verified the Signing Authority of such Contract Signer in accordance with one of the procedures in [Section 3.2.2.8.3](#32283-acceptable-methods-of-verification--authority).

The CA and the Applicant MAY enter into a written agreement, signed by the Contract Signer on behalf of the Applicant, whereby, for a specified term, the Applicant expressly authorizes one or more Certificate Approver(s) designated in such agreement to exercise EV Authority with respect to each future EV Certificate Request submitted on behalf of the Applicant and properly authenticated as originating with, or otherwise being approved by, such Certificate Approver(s).

Such an agreement MUST provide that the Applicant shall be obligated under the Subscriber Agreement for all EV Certificates issued at the request of, or approved by, such Certificate Approver(s) until such EV Authority is revoked, and MUST include mutually agreed-upon provisions for:

   i. authenticating the Certificate Approver when EV Certificate Requests are approved,
   ii. periodic re-confirmation of the EV Authority of the Certificate Approver,
   iii. secure procedures by which the Applicant can notify the CA that the EV Authority of any such Certificate Approver is revoked, and
   iv. such other appropriate precautions as are reasonably necessary.

#### 3.2.2.9 Verification of Signature on Subscriber Agreement and EV Certificate Requests

Both the Subscriber Agreement and each non-pre-authorized EV Certificate Request MUST be signed. The Subscriber Agreement MUST be signed by an authorized Contract Signer. The EV Certificate Request MUST be signed by the Certificate Requester submitting the document, unless the Certificate Request has been pre-authorized in line with [Section 3.2.2.8.4](#32284-pre-authorized-certificate-approver). If the Certificate Requester is not also an authorized Certificate Approver, then an authorized Certificate Approver MUST independently approve the EV Certificate Request. In all cases, applicable signatures MUST be a legally valid and contain an enforceable seal or handwritten signature (for a paper Subscriber Agreement and/or EV Certificate Request), or a legally valid and enforceable electronic signature (for an electronic Subscriber Agreement and/or EV Certificate Request), that binds the Applicant to the terms of each respective document.

##### 3.2.2.9.1 Verification Requirements

1. **Signature**: The CA MUST authenticate the signature of the Contract Signer on the Subscriber Agreement and the signature of the Certificate Requester on each EV Certificate Request in a manner that makes it reasonably certain that the person named as the signer in the applicable document is, in fact, the person who signed the document on behalf of the Applicant.

2. **Approval Alternative**: In cases where an EV Certificate Request is signed and submitted by a Certificate Requester who does not also function as a Certificate Approver, approval and adoption of the EV Certificate Request by a Certificate Approver in accordance with the requirements of [Section 3.2.2.10](#32210-verification-of-approval-of-ev-certificate-request) can substitute for authentication of the signature of the Certificate Requester on such EV Certificate Request.

##### 3.2.2.9.2 Acceptable Methods of Signature Verification

Acceptable methods of authenticating the signature of the Certificate Requester or Contract Signer include the following:

1. Contacting the Applicant using a Verified Method of Communication for the Applicant, for the attention of the Certificate Requester or Contract Signer, as applicable, followed by a response from someone who identifies themselves as such person confirming that he/she did sign the applicable document on behalf of the Applicant;

2. A letter mailed to the Applicant's or Agent's address, as verified through independent means in accordance with these Guidelines, for the attention of the Certificate Requester or Contract Signer, as applicable, followed by a response through a Verified Method of Communication from someone who identifies themselves as such person confirming that he/she did sign the applicable document on behalf of the Applicant;

3. Use of a signature process that establishes the name and title of the signer in a secure manner, such as through use of an appropriately secure login process that identifies the signer before signing, or through use of a digital signature made with reference to an appropriately verified certificate; or

4. Notarization by a notary, provided that the CA independently verifies that such notary is a legally qualified notary in the jurisdiction of the Certificate Requester or Contract Signer.

#### 3.2.2.10 Verification of Approval of EV Certificate Request

##### 3.2.2.10.1 Verification Requirements

In cases where an EV Certificate Request is submitted by a Certificate Requester, before the CA issues the requested EV Certificate, the CA MUST verify that an authorized Certificate Approver reviewed and approved the EV Certificate Request.

##### 3.2.2.10.2 Acceptable Methods of Verification

Acceptable methods of verifying the Certificate Approver's approval of an EV Certificate Request include:

1. Contacting the Certificate Approver using a Verified Method of Communication for the Applicant and obtaining oral or written confirmation that the Certificate Approver has reviewed and approved the EV Certificate Request;
2. Notifying the Certificate Approver that one or more new EV Certificate Requests are available for review and approval at a designated access-controlled and secure Web site, followed by a login by, and an indication of approval from, the Certificate Approver in the manner required by the Web site; or
3. Verifying the signature of the Certificate Approver on the EV Certificate Request in accordance with [Section 3.2.2.9](#3229-verification-of-signature-on-subscriber-agreement-and-ev-certificate-requests).

#### 3.2.2.11 Verification of Certain Information Sources

##### 3.2.2.11.1 Verified Legal Opinion

1. **Verification Requirements**: Before relying on a legal opinion submitted to the CA, the CA MUST verify that such legal opinion meets the following requirements:

   A.  **Status of Author**: The CA MUST verify that the legal opinion is authored by an independent legal practitioner retained by and representing the Applicant (or an in-house legal practitioner employed by the Applicant) (Legal Practitioner) who is either:

       i. A lawyer (or solicitor, barrister, advocate, or equivalent) licensed to practice law in the country of the Applicant's Jurisdiction of Incorporation or Registration or any jurisdiction where the Applicant maintains an office or physical facility, or
       ii. A Latin Notary who is currently commissioned or licensed to practice in the country of the Applicant's Jurisdiction of Incorporation or Registration or any jurisdiction where the Applicant maintains an office or physical facility (and that such jurisdiction recognizes the role of the Latin Notary);

   B.  **Basis of Opinion**: The CA MUST verify that the Legal Practitioner is acting on behalf of the Applicant and that the conclusions of the Verified Legal Opinion are based on the Legal Practitioner's stated familiarity with the relevant facts and the exercise of the Legal Practitioner's professional judgment and expertise;
   C.  **Authenticity**: The CA MUST confirm the authenticity of the Verified Legal Opinion.

2. **Acceptable Methods of Verification**: Acceptable methods of establishing the foregoing requirements for a Verified Legal Opinion are:

   A.  **Status of Author**: The CA MUST verify the professional status of the author of the legal opinion by directly contacting the authority responsible for registering or licensing such Legal Practitioner(s) in the applicable jurisdiction;
   B.  **Basis of Opinion**: The text of the legal opinion MUST make it clear that the Legal Practitioner is acting on behalf of the Applicant and that the conclusions of the legal opinion are based on the Legal Practitioner's stated familiarity with the relevant facts and the exercise of the practitioner's professional judgment and expertise. The legal opinion MAY also include disclaimers and other limitations customary in the Legal Practitioner's jurisdiction, provided that the scope of the disclaimed responsibility is not so great as to eliminate any substantial risk (financial, professional, and/or reputational) to the Legal Practitioner, should the legal opinion prove to be erroneous. An acceptable form of legal opinion is attached as [Appendix B](#appendix-b---sample-attorney-opinions-confirming-specified-information);
   C.  **Authenticity**: To confirm the authenticity of the legal opinion, the CA MUST make a telephone call or send a copy of the legal opinion back to the Legal Practitioner at the address, phone number, facsimile, or (if available) e-mail address for the Legal Practitioner listed with the authority responsible for registering or licensing such Legal Practitioner, and obtain confirmation from the Legal Practitioner or the Legal Practitioner's assistant that the legal opinion is authentic. If a phone number is not available from the licensing authority, the CA MAY use the number listed for the Legal Practitioner in records provided by the applicable phone company, QGIS, or QIIS.

       In circumstances where the opinion is digitally signed, in a manner that confirms the authenticity of the document and the identity of the signer, as verified by the CA in [Section 3.2.2.11.1](#322111-verified-legal-opinion) (2)(A), no further verification of authenticity is required.

##### 3.2.2.11.2 Verified Accountant Letter

1. **Verification Requirements**: Before relying on an accountant letter submitted to the CA, the CA MUST verify that such accountant letter meets the following requirements:

   A.  **Status of Author**: The CA MUST verify that the accountant letter is authored by an Accounting Practitioner retained or employed by the Applicant and licensed within the country of the Applicant's Jurisdiction of Incorporation, Jurisdiction of Registration, or country where the Applicant maintains an office or physical facility. Verification of license MUST be through the member organization or regulatory organization in the Accounting Practitioner's country or jurisdiction that is appropriate to contact when verifying an accountant's license to practice in that country or jurisdiction. Such country or jurisdiction must have an accounting standards body that maintains full membership status with the International Federation of Accountants.
   B.  **Basis of Opinion**: The CA MUST verify that the Accounting Practitioner is acting on behalf of the Applicant and that the conclusions of the Verified Accountant Letter are based on the Accounting Practitioner's stated familiarity with the relevant facts and the exercise of the Accounting Practitioner's professional judgment and expertise;
   C.  **Authenticity**: The CA MUST confirm the authenticity of the Verified Accountant Letter.

2. **Acceptable Methods of Verification**: Acceptable methods of establishing the foregoing requirements for a Verified Accountant Letter are listed here.

   A.  **Status of Author**: The CA MUST verify the professional status of the author of the accountant letter by directly contacting the authority responsible for registering or licensing such Accounting Practitioners in the applicable jurisdiction.
   B.  **Basis of Opinion**: The text of the Verified Accountant Letter MUST make clear that the Accounting Practitioner is acting on behalf of the Applicant and that the information in the letter is based on the Accounting Practitioner's stated familiarity with the relevant facts and the exercise of the practitioner's professional judgment and expertise. The Verified Accountant Letter MAY also include disclaimers and other limitations customary in the Accounting Practitioner's jurisdiction, provided that the scope of the disclaimed responsibility is not so great as to eliminate any substantial risk (financial, professional, and/or reputational) to the Accounting Practitioner, should the Verified Accountant Letter prove to be erroneous. Acceptable forms of Verified Accountant Letter are attached as [Appendix C](#appendix-c---sample-accountant-letters-confirming-specified-information).
   C.  **Authenticity**: To confirm the authenticity of the accountant's opinion, the CA MUST make a telephone call or send a copy of the Verified Accountant Letter back to the Accounting Practitioner at the address, phone number, facsimile, or (if available) e-mail address for the Accounting Practitioner listed with the authority responsible for registering or licensing such Accounting Practitioners and obtain confirmation from the Accounting Practitioner or the Accounting Practitioner's assistant that the accountant letter is authentic. If a phone number is not available from the licensing authority, the CA MAY use the number listed for the Accountant in records provided by the applicable phone company, QGIS, or QIIS.

      In circumstances where the opinion is digitally signed, in a manner that confirms the authenticity of the document and the identity of the signer, as verified by the CA in [Section 3.2.2.11.2](#322112-verified-accountant-letter) (2)(A), no further verification of authenticity is required.

##### 3.2.2.11.3 Face-to-Face Validation

1. **Verification Requirements**: Before relying on face-to-face vetting documents submitted to the CA, the CA MUST verify that the Third-Party Validator meets the following requirements:

   A.  **Qualification of Third-Party Validator**: The CA MUST independently verify that the Third-Party Validator is a legally-qualified Latin Notary or Notary (or legal equivalent in the Applicant's jurisdiction), Lawyer, or Accountant in the jurisdiction of the individual's residency;
   B.  **Document Chain of Custody**: The CA MUST verify that the Third-Party Validator viewed the Vetting Documents in a face-to-face meeting with the individual being validated;
   C.  **Verification of Attestation**: If the Third-Party Validator is not a Latin Notary, then the CA MUST confirm the authenticity of the attestation and vetting documents.

2. **Acceptable Methods of Verification**: Acceptable methods of establishing the foregoing requirements for vetting documents are:

   A.  **Qualification of Third-Party Validator**: The CA MUST verify the professional status of the Third-Party Validator by directly contacting the authority responsible for registering or licensing such Third-Party Validators in the applicable jurisdiction;
   B.  **Document Chain of Custody**: The Third-Party Validator MUST submit a statement to the CA which attests that they obtained the Vetting Documents submitted to the CA for the individual during a face-to-face meeting with the individual;
   C.  **Verification of Attestation**: If the Third-Party Validator is not a Latin Notary, then the CA MUST confirm the authenticity of the vetting documents received from the Third-Party Validator. The CA MUST make a telephone call to the Third-Party Validator and obtain confirmation from them or their assistant that they performed the face-to-face validation. The CA MAY rely upon self-reported information obtained from the Third-Party Validator for the sole purpose of performing this verification process. In circumstances where the attestation is digitally signed, in a manner that confirms the authenticity of the documents, and the identity of the signer as verified by the CA in [Section 3.2.2.11.3](#322113-face-to-face-validation) (1)(A), no further verification of authenticity is required.

##### 3.2.2.11.4 Independent Confirmation From Applicant

An Independent Confirmation from the Applicant is a confirmation of a particular fact (e.g., confirmation of the employee or agency status of a Contract Signer or Certificate Approver, confirmation of the EV Authority of a Certificate Approver, etc.) that is:

A.  Received by the CA from a Confirming Person (someone other than the person who is the subject of the inquiry) that has the appropriate authority to confirm such a fact, and who represents that he/she has confirmed such fact;
B.  Received by the CA in a manner that authenticates and verifies the source of the confirmation; and
C.  Binding on the Applicant.

An Independent Confirmation from the Applicant MAY be obtained via the following procedure:

1. **Confirmation Request**: The CA MUST initiate a Confirmation Request via an appropriate out-of-band communication, requesting verification or confirmation of the particular fact at issue as follows:

   A.  **Addressee**: The Confirmation Request MUST be directed to:

       i. A position within the Applicant's organization that qualifies as a Confirming Person (e.g., Secretary, President, CEO, CFO, COO, CIO, CSO, Director, etc.) and is identified by name and title in a current QGIS, QIIS, QTIS, Verified Legal Opinion, Verified Accountant Letter, or by contacting the Applicant using a Verified Method of Communication; or
       ii. The Applicant's Registered Agent or Registered Office in the Jurisdiction of Incorporation as listed in the official records of the Incorporating Agency, with instructions that it be forwarded to an appropriate Confirming Person; or
       iii. A named individual verified to be in the direct line of management above the Contract Signer or Certificate Approver by contacting the Applicant's Human Resources Department by phone or mail (at the phone number or address for the Applicant's Place of Business, verified in accordance with these Guidelines).

   B.  **Means of Communication**: The Confirmation Request MUST be directed to the Confirming Person in a manner reasonably likely to reach such person. The following options are acceptable:

       i. By paper mail addressed to the Confirming Person at:

          1. The address of the Applicant's Place of Business as verified by the CA in accordance with these Guidelines, or
          2. The business address for such Confirming Person specified in a current QGIS, QTIS, QIIS, Verified Professional Letter, or
          3. The address of the Applicant's Registered Agent or Registered Office listed in the official records of the Jurisdiction of Incorporation.

       ii. By e-mail addressed to the Confirming Person at the business e-mail address for such person listed in a current QGIS, QTIS, QIIS, Verified Legal Opinion, or Verified Accountant Letter; or
       iii. By telephone call to the Confirming Person, where such person is contacted by calling the main phone number of the Applicant's Place of Business (verified in accordance with these Guidelines) and asking to speak to such person, and a person taking the call identifies him- or herself as such person; or
       iv. By facsimile to the Confirming Person at the Place of Business. The facsimile number must be listed in a current QGIS, QTIS, QIIS, Verified Legal Opinion, or Verified Accountant Letter. The cover page must be clearly addressed to the Confirming Person.

2. **Confirmation Response**: The CA MUST receive a response to the Confirmation Request from a Confirming Person that confirms the particular fact at issue. Such response MAY be provided to the CA by telephone, by e-mail, or by paper mail, so long as the CA can reliably verify that it was provided by a Confirming Person in response to the Confirmation Request.

3. The CA MAY rely on a verified Confirming Person to confirm their own contact information: email address, telephone number, and facsimile number. The CA MAY rely on this verified contact information for future correspondence with the Confirming Person if:

   A.  The domain of the e-mail address is owned by the Applicant and is the Confirming Person's own e-mail address and not a group e-mail alias;
   B.  The Confirming Person's telephone/fax number is verified by the CA to be a telephone number that is part of the organization's telephone system, and is not the personal phone number for the person.

##### 3.2.2.11.5 Qualified Independent Information Source

A database qualifies as a Qualified Independent Information Source (QIIS) if the CA determines that:

1. Industries other than the certificate industry rely on the database for accurate location, contact, or other information; and
2. The database provider updates its data on at least an annual basis.

In addition to the requirements of Section 3.2.2.7 of the Baseline Requirements, the CA SHALL review the database provider's terms of use. The CA SHALL NOT use any data in a QIIS that the CA knows is:

  i. self-reported and
  ii. not verified by the QIIS as accurate.

Databases in which the CA or its owners or affiliated companies maintain a controlling interest, or in which any Registration Authorities or subcontractors to whom the CA has outsourced any portion of the vetting process (or their owners or affiliated companies) maintain any ownership or beneficial interest, do not qualify as a QIIS.

##### 3.2.2.11.6 Qualified Government Information Source

A Qualified Government Information Source (QGIS) is defined in [Section 1.6.1](#161-definitions).

##### 3.2.2.11.7 Qualified Government Tax Information Source

A Qualified Government Tax Information Source (QTIS) is defined in [Section 1.6.1](#161-definitions).

#### 3.2.2.12 Other Verification Requirements

##### 3.2.2.12.1 High Risk Status

##### 3.2.2.12.2 Denied Lists and Other Legal Block Lists

1. **Verification Requirements**: The CA MUST verify whether the Applicant, the Contract Signer, the Certificate Approver, the Applicant's Jurisdiction of Incorporation, Registration, or Place of Business:

   A.  Is identified on any government denied list, list of prohibited persons, or other list that prohibits doing business with such organization or person under the laws of the country of the CA's jurisdiction(s) of operation; or
   B.  Has its Jurisdiction of Incorporation, Registration, or Place of Business in any country with which the laws of the CA's jurisdiction prohibit doing business.

   The CA MUST NOT issue any EV Certificate to the Applicant if either the Applicant, the Contract Signer, or Certificate Approver or if the Applicant's Jurisdiction of Incorporation or Registration or Place of Business is on any such list.

2. **Acceptable Methods of Verification** The CA MUST take reasonable steps to verify with the following lists and regulations:

   A.  If the CA has operations in the U.S., the CA MUST take reasonable steps to verify with the following US Government denied lists and regulations:

       i. BIS Denied Persons List - [https://www.bis.doc.gov/index.php/the-denied-persons-list](https://www.bis.doc.gov/index.php/the-denied-persons-list),
       ii. BIS Denied Entities List - [https://www.bis.doc.gov/index.php/policy-guidance/lists-of-parties-of-concern/entity-list](https://www.bis.doc.gov/index.php/policy-guidance/lists-of-parties-of-concern/entity-list),
       iii. US Treasury Department List of Specially Designated Nationals and Blocked Persons - [https://www.treasury.gov/resource-center/sanctions/sdn-list/pages/default.aspx](https://www.treasury.gov/resource-center/sanctions/sdn-list/pages/default.aspx),
       iv. US Government export regulations.

   B.  If the CA has operations in any other country, the CA MUST take reasonable steps to verify with all equivalent denied lists and export regulations (if any) in such other country.

##### 3.2.2.12.3 Parent/Subsidiary/Affiliate Relationship

A CA verifying an Applicant using information of the Applicant's Parent, Subsidiary, or Affiliate, when allowed under [Section 3.2.2.4.1](#32241-address-of-applicants-place-of-business), [Section 3.2.2.5](#3225-verified-method-of-communication), [Section 3.2.2.6.1](#32261-verification-requirements), or [Section 3.2.2.7.1](#32271-verification-requirements), MUST verify the Applicant's relationship to the Parent, Subsidiary, or Affiliate. Acceptable methods of verifying the Applicant's relationship to the Parent, Subsidiary, or Affiliate include the following:

1. QIIS or QGIS: The relationship between the Applicant and the Parent, Subsidiary, or Affiliate is identified in a QIIS or QGIS;
2. Independent Confirmation from the Parent, Subsidiary, or Affiliate: A CA MAY verify the relationship between an Applicant and a Parent, Subsidiary, or Affiliate by obtaining an Independent Confirmation from the appropriate Parent, Subsidiary, or Affiliate (as described in [Section 3.2.2.11.4](#322114-independent-confirmation-from-applicant));
3. Contract between CA and Parent, Subsidiary, or Affiliate: A CA MAY verify the relationship between an Applicant and a Parent, Subsidiary, or Affiliate by relying on a contract between the CA and the Parent, Subsidiary, or Affiliate that designates the Certificate Approver with such EV Authority, provided that the contract is signed by the Contract Signer and provided that the agency and Signing Authority of the Contract Signer have been verified;
4. Verified Professional Letter: A CA MAY verify the relationship between an Applicant and a Parent, Subsidiary, or Affiliate by relying on a Verified Professional Letter; or
5. Corporate Resolution: A CA MAY verify the relationship between an Applicant and a Subsidiary by relying on a properly authenticated corporate resolution that approves creation of the Subsidiary or the Applicant, provided that such resolution is:

   i. certified by the appropriate corporate officer (e.g., secretary), and
   ii. the CA can reliably verify that the certification was validly signed by such person, and that such person does have the requisite authority to provide such certification.

#### 3.2.2.13 Final Cross-Correlation and Due Diligence

1. The results of the verification processes and procedures outlined in these Guidelines are intended to be viewed both individually and as a group. Thus, after all of the verification processes and procedures are completed, the CA MUST have a person who is not responsible for the collection of information review all of the information and documentation assembled in support of the EV Certificate application and look for discrepancies or other details requiring further explanation.
2. The CA MUST obtain and document further explanation or clarification from the Applicant, Certificate Approver, Certificate Requester, Qualified Independent Information Sources, and/or other sources of information, as necessary, to resolve those discrepancies or details that require further explanation.
3. The CA MUST refrain from issuing an EV Certificate until the entire corpus of information and documentation assembled in support of the EV Certificate Request is such that issuance of the EV Certificate will not communicate factual information that the CA knows, or the exercise of due diligence should discover from the assembled information and documentation, to be inaccurate. If satisfactory explanation and/or additional documentation are not received within a reasonable time, the CA MUST decline the EV Certificate Request and SHOULD notify the Applicant accordingly.
4. In the case where some or all of the documentation used to support the application is in a language other than the CA's normal operating language, the CA or its Affiliate MUST perform the requirements of this Final Cross-Correlation and Due Diligence section using employees under its control and having appropriate training, experience, and judgment in confirming organizational identification and authorization and fulfilling all qualification requirements contained in [Section 5.3.2](#532-background-check-procedures). When employees under the control of the CA do not possess the language skills necessary to perform the Final Cross-Correlation and Due Diligence a CA MAY:

   A.  Rely on language translations of the relevant portions of the documentation, provided that the translations are received from a Translator; or
   B.  When the CA has utilized the services of an RA, the CA MAY rely on the language skills of the RA to perform the Final Cross-Correlation and Due Diligence, provided that the RA complies with [Section 3.2.2.13](#32213-final-cross-correlation-and-due-diligence), Subsections (1), (2) and (3). Notwithstanding the foregoing, prior to issuing the EV Certificate, the CA MUST review the work completed by the RA and determine that all requirements have been met; or
   C.  When the CA has utilized the services of an RA, the CA MAY rely on the RA to perform the Final Cross-Correlation and Due Diligence, provided that the RA complies with this section and is subjected to the Audit Requirements of [Section 8.1.1](#811-self-audits) and [Section 8.2](#82-identityqualifications-of-assessor).

In the case of EV Certificates to be issued in compliance with the requirements of [Section 1.3.2](#132-registration-authorities), the Enterprise RA MAY perform the requirements of this Final Cross-Correlation and Due Diligence section.

#### 3.2.2.14 Requirements for Re-use of Existing Documentation

For each EV Certificate Request, including requests to renew existing EV Certificates, the CA MUST perform all authentication and verification tasks required by these Guidelines to ensure that the request is properly authorized by the Applicant and that the information in the EV Certificate is still accurate and valid. This section sets forth the age limitations on for the use of documentation collected by the CA.

##### 3.2.2.14.1 Validation For Existing Subscribers

If an Applicant has a currently valid EV Certificate issued by the CA, a CA MAY rely on its prior authentication and verification of:

1. The Principal Individual verified under [Section 3.2.2.2.2](#32222-acceptable-method-of-verification) (4) if the individual is the same person as verified by the CA in connection with the Applicant's previously issued and currently valid EV Certificate;
2. The Applicant's Place of Business under [Section 3.2.2.4.1](#32241-address-of-applicants-place-of-business);
3. The Applicant's Verified Method of Communication required by [Section 3.2.2.5](#3225-verified-method-of-communication) but still MUST perform the verification required by [Section 3.2.2.5.2](#32252-acceptable-methods-of-verification) (B);
4. The Applicant's Operational Existence under [Section 3.2.2.6](#3226-verification-of-applicants-operational-existence);
5. The Name, Title, Agency and Authority of the Contract Signer, and Certificate Approver, under [Section 3.2.2.8](#3228-verification-of-name-title-and-authority-of-contract-signer-and-certificate-approver).

##### 3.2.2.14.2 Re-issuance Requests

A CA may rely on a previously verified certificate request to issue a replacement certificate, so long as the certificate being referenced was not revoked due to fraud or other illegal conduct, if:

1. The expiration date of the replacement certificate is the same as the expiration date of the  EV Certificate that is being replaced, and
2. The Subject Information of the Certificate is the same as the Subject in the EV Certificate that is being replaced.

##### 3.2.2.14.3 Age of Validated Data

1. Except for reissuance of an EV Certificate under [Section 3.2.2.14.2](#322142-re-issuance-requests) and except when permitted otherwise in [Section 3.2.2.14.1](#322141-validation-for-existing-subscribers), the age of all data used to support issuance of an EV Certificate (before revalidation is required) SHALL NOT exceed the maximum reuse periods specified in Section 4.2.1 of the Baseline Requirements, except as follows:

   A.  Name, Title, Agency, and Authority - 398 days, unless a contract between the CA and the Applicant specifies a different term, in which case, the term specified in such contract controls. For example, the contract MAY include the perpetual assignment of EV roles until revoked by the Applicant or CA, or until the contract expires or is terminated.

2. Each period set forth above SHALL begin to run on the date the relevant information was collected by the CA.
3. The CA MAY reuse a previously submitted EV Certificate Request, Subscriber Agreement, or Terms of Use, including use of a single EV Certificate Request in support of multiple EV Certificates containing the same Subject to the extent permitted under [Section 3.2.2.9](#3229-verification-of-signature-on-subscriber-agreement-and-ev-certificate-requests) and [Section 3.2.2.10](#32210-verification-of-approval-of-ev-certificate-request).

### 3.2.3 Authentication of individual identity

### 3.2.4 Non-verified subscriber information

### 3.2.5 Validation of authority

### 3.2.6 Criteria for interoperation

## 3.3 Identification and authentication for re-key requests

### 3.3.1 Identification and authentication for routine re-key

### 3.3.2 Identification and authentication for re-key after revocation

## 3.4 Identification and authentication for revocation request

# 4. CERTIFICATE LIFE-CYCLE OPERATIONAL REQUIREMENTS

## 4.1 Certificate Application

### 4.1.1 Who can submit a certificate application

The CA MAY only issue EV Certificates to Applicants that meet the Private Organization, Government Entity, Business Entity and Non-Commercial Entity requirements specified below.

#### 4.1.1.1 Private Organization Subjects

An Applicant qualifies as a Private Organization if:

1. The entity's legal existence is created or recognized by a filing with (or an act of) the Incorporating or Registration Agency in its Jurisdiction of Incorporation or Registration (e.g., by issuance of a certificate of incorporation, registration number, etc.) or created or recognized by a Government Agency (e.g. under a charter, treaty, convention, or equivalent recognition instrument);

2. The entity designated with the Incorporating or Registration Agency a Registered Agent, a Registered Office (as required under the laws of the Jurisdiction of Incorporation or Registration), or an equivalent facility;

3. The entity is not designated on the records of the Incorporating or Registration Agency by labels such as "inactive," "invalid," "not current," or the equivalent;

4. The entity has a verifiable physical existence and business presence;

5. The entity's Jurisdiction of Incorporation, Registration, Charter, or License, and/or its Place of Business is not in any country where the CA is prohibited from doing business or issuing a certificate by the laws of the CA's jurisdiction; and

6. The entity is not listed on any government denial list or prohibited list (e.g., trade embargo) under the laws of the CA's jurisdiction.

#### 4.1.1.2 Government Entity Subjects

An Applicant qualifies as a Government Entity if:

1. The entity's legal existence was established by the political subdivision in which the entity operates;

2. The entity is not in any country where the CA is prohibited from doing business or issuing a certificate by the laws of the CA's jurisdiction; and

3. The entity is not listed on any government denial list or prohibited list (e.g., trade embargo) under the laws of the CA's jurisdiction.

#### 4.1.1.3 Business Entity Subjects

An Applicant qualifies as a Business Entity if:

1. The entity is a legally recognized entity that filed certain forms with a Registration Agency in its jurisdiction, the Registration Agency issued or approved the entity's charter, certificate, or license, and the entity's existence can be verified with that Registration Agency;

2. The entity has a verifiable physical existence and business presence;

3. At least one Principal Individual associated with the entity is identified and validated by the CA;

4. The identified Principal Individual attests to the representations made in the Subscriber Agreement;

5. The CA verifies the entity's use of any assumed name used to represent the entity pursuant to the requirements of [Section 3.2.2.3](#3223-verification-of-applicants-legal-existence-and-identity--assumed-name);

6. The entity and the identified Principal Individual associated with the entity are not located or residing in any country where the CA is prohibited from doing business or issuing a certificate by the laws of the CA's jurisdiction; and

7. The entity and the identified Principal Individual associated with the entity are not listed on any government denial list or prohibited list (e.g., trade embargo) under the laws of the CA's jurisdiction.

#### 4.1.1.4 Non-Commercial Entity Subjects

An Applicant qualifies as a Non-Commercial Entity if:

1. The Applicant is an International Organization Entity, created under a charter, treaty, convention or equivalent instrument that was signed by, or on behalf of, more than one country's government. The CA/Browser Forum may publish a listing of Applicants who qualify as an International Organization for EV eligibility; and

2. The Applicant is not headquartered in any country where the CA is prohibited from doing business or issuing a certificate by the laws of the CA's jurisdiction; and

3. The Applicant is not listed on any government denial list or prohibited list (e.g., trade embargo) under the laws of the CA's jurisdiction.

Subsidiary organizations or agencies of an entity that qualifies as a Non-Commercial Entity also qualifies for EV Certificates as a Non-Commercial Entity.

### 4.1.2 Enrollment process and responsibilities

The Certificate Request requirements in Section 4.1.2 of the Baseline Requirements apply equally to EV Certificates subject to the additional more stringent ageing and updating requirement of [Section 3.2.2.14](#32214-requirements-for-re-use-of-existing-documentation).

## 4.2 Certificate application processing

### 4.2.1 Performing identification and authentication functions

In addition to the requirements of Section 3.2.5 of the Baseline Requirements, the following Applicant roles, as defined in [Section 1.6.1](#161-definitions) and in Section 1.6.1 of the Baseline Requirements, are required for the issuance of an EV Certificate.

1. **Certificate Requester**: The EV Certificate Request MUST be submitted by an authorized Certificate Requester.

2. **Certificate Approver**: The EV Certificate Request MUST be approved by an authorized Certificate Approver.

3. **Contract Signer**: A Subscriber Agreement applicable to the requested EV Certificate MUST be signed by an authorized Contract Signer.

4. **Applicant Representative**: In the case where the CA and the Subscriber are affiliated, Terms of Use applicable to the requested EV Certificate MUST be acknowledged and agreed to by an authorized Applicant Representative.

The Applicant MAY authorize one individual to occupy two or more of these roles. The Applicant MAY authorize more than one individual to occupy any of these roles.

In cases where the Certificate Request does not contain all necessary information about the Applicant, the CA MUST additionally confirm the data with the Certificate Approver or Contract Signer rather than the Certificate Requester.

### 4.2.2 Approval or rejection of certificate applications

### 4.2.3 Time to process certificate applications

## 4.3 Certificate issuance

### 4.3.1 CA actions during certificate issuance

Root CA Private Keys MUST NOT be used to sign EV Certificates.

### 4.3.2 Notification to subscriber by the CA of issuance of certificate

## 4.4 Certificate acceptance

### 4.4.1 Conduct constituting certificate acceptance

### 4.4.2 Publication of the certificate by the CA

### 4.4.3 Notification of certificate issuance by the CA to other entities

## 4.5 Key pair and certificate usage

### 4.5.1 Subscriber private key and certificate usage

### 4.5.2 Relying party public key and certificate usage

## 4.6 Certificate renewal

### 4.6.1 Circumstance for certificate renewal

### 4.6.2 Who may request renewal

### 4.6.3 Processing certificate renewal requests

### 4.6.4 Notification of new certificate issuance to subscriber

### 4.6.5 Conduct constituting acceptance of a renewal certificate

### 4.6.6 Publication of the renewal certificate by the CA

### 4.6.7 Notification of certificate issuance by the CA to other entities

## 4.7 Certificate re-key

### 4.7.1 Circumstance for certificate re-key

### 4.7.2 Who may request certification of a new public key

### 4.7.3 Processing certificate re-keying requests

### 4.7.4 Notification of new certificate issuance to subscriber

### 4.7.5 Conduct constituting acceptance of a re-keyed certificate

### 4.7.6 Publication of the re-keyed certificate by the CA

### 4.7.7 Notification of certificate issuance by the CA to other entities

## 4.8 Certificate modification

### 4.8.1 Circumstance for certificate modification

### 4.8.2 Who may request certificate modification

### 4.8.3 Processing certificate modification requests

### 4.8.4 Notification of new certificate issuance to subscriber

### 4.8.5 Conduct constituting acceptance of modified certificate

### 4.8.6 Publication of the modified certificate by the CA

### 4.8.7 Notification of certificate issuance by the CA to other entities

## 4.9 Certificate revocation and suspension

### 4.9.1 Circumstances for revocation

### 4.9.2 Who can request revocation

### 4.9.3 Procedure for revocation request

### 4.9.4 Revocation request grace period

### 4.9.5 Time within which CA must process the revocation request

### 4.9.6 Revocation checking requirement for relying parties

### 4.9.7 CRL issuance frequency (if applicable)

### 4.9.8 Maximum latency for CRLs (if applicable)

### 4.9.9 On-line revocation/status checking availability

### 4.9.10 On-line revocation checking requirements

### 4.9.11 Other forms of revocation advertisements available

### 4.9.12 Special requirements re key compromise

### 4.9.13 Circumstances for suspension

### 4.9.14 Who can request suspension

### 4.9.15 Procedure for suspension request

### 4.9.16 Limits on suspension period

## 4.10 Certificate status services

### 4.10.1 Operational characteristics

### 4.10.2 Service availability

### 4.10.3 Optional features

## 4.11 End of subscription

## 4.12 Key escrow and recovery

### 4.12.1 Key escrow and recovery policy and practices

### 4.12.2 Session key encapsulation and recovery policy and practices

# 5. FACILITY, MANAGEMENT, AND OPERATIONAL CONTROLS

## 5.1 Physical controls

### 5.1.1 Site location and construction

### 5.1.2 Physical access

### 5.1.3 Power and air conditioning

### 5.1.4 Water exposures

### 5.1.5 Fire prevention and protection

### 5.1.6 Media storage

### 5.1.7 Waste disposal

### 5.1.8 Off-site backup

## 5.2 Procedural controls

### 5.2.1 Trusted roles

### 5.2.2 Number of persons required per task

### 5.2.3 Identification and authentication for each role

### 5.2.4 Roles requiring separation of duties

Systems used to process and approve EV Certificate Requests MUST require actions by at least two trusted persons before creating an EV Certificate.

1. The CA MUST enforce rigorous control procedures for the separation of validation duties to ensure that no one person can single-handedly validate and authorize the issuance of an EV Certificate. The Final Cross-Correlation and Due Diligence steps, as outlined in [Section 3.2.2.13](#32213-final-cross-correlation-and-due-diligence), MAY be performed by one of the persons. For example, one Validation Specialist MAY review and verify all the Applicant information and a second Validation Specialist MAY approve issuance of the EV Certificate.

2. Such controls MUST be auditable.

## 5.3 Personnel controls

### 5.3.1 Qualifications, experience, and clearance requirements

### 5.3.2 Background check procedures

Prior to the commencement of employment of any person by the CA for engagement in the EV Processes, whether as an employee, agent, or an independent contractor of the CA, the CA MUST:

1. **Verify the Identity of Such Person**: Verification of identity MUST be performed through:

   A.  The personal (physical) presence of such person before trusted persons who perform human resource or security functions, and
   B.  The verification of well-recognized forms of government-issued photo identification (e.g., passports and/or drivers licenses);

   and

2. **Verify the Trustworthiness of Such Person**: Verification of trustworthiness SHALL include background checks, which address at least the following, or their equivalent:

   A.  Confirmation of previous employment,
   B.  Check of professional references;
   C.  Confirmation of the highest or most-relevant educational qualification obtained;
   D.  Search of criminal records (local, state or provincial, and national) where allowed by the jurisdiction in which the person will be employed.

### 5.3.3 Training requirements

The required internal examination must relate to the EV Certificate validation criteria outlined in these Guidelines.

### 5.3.4 Retraining frequency and requirements

### 5.3.5 Job rotation frequency and sequence

### 5.3.6 Sanctions for unauthorized actions

### 5.3.7 Independent contractor requirements

### 5.3.8 Documentation supplied to personnel

## 5.4 Audit logging procedures

### 5.4.1 Types of events recorded

### 5.4.2 Frequency of processing log

### 5.4.3 Retention period for audit log

### 5.4.4 Protection of audit log

### 5.4.5 Audit log backup procedures

### 5.4.6 Audit collection system (internal vs. external)

### 5.4.7 Notification to event-causing subject

### 5.4.8 Vulnerability assessments

## 5.5 Records archival

### 5.5.1 Types of records archived

### 5.5.2 Retention period for archive

### 5.5.3 Protection of archive

### 5.5.4 Archive backup procedures

### 5.5.5 Requirements for time-stamping of records

### 5.5.6 Archive collection system (internal or external)

### 5.5.7 Procedures to obtain and verify archive information

## 5.6 Key changeover

## 5.7 Compromise and disaster recovery

### 5.7.1 Incident and compromise handling procedures

### 5.7.2 Computing resources, software, and/or data are corrupted

### 5.7.3 Entity private key compromise procedures

### 5.7.4 Business continuity capabilities after a disaster

## 5.8 CA or RA termination

# 6. TECHNICAL SECURITY CONTROLS

## 6.1 Key pair generation and installation

### 6.1.1 Key pair generation

For Root CA Key Pairs, the option to record a video of the CA Key Pair generation process in lieu of a Qualified Auditor witnessing the process, as permitted by Section 6.1.1.1 of the Baseline Requirements, is not available.

### 6.1.2 Private key delivery to subscriber

### 6.1.3 Public key delivery to certificate issuer

### 6.1.4 CA public key delivery to relying parties

### 6.1.5 Key sizes

### 6.1.6 Public key parameters generation and quality checking

### 6.1.7 Key usage purposes (as per X.509 v3 key usage field)

## 6.2 Private Key Protection and Cryptographic Module Engineering Controls

### 6.2.1 Cryptographic module standards and controls

### 6.2.2 Private key (n out of m) multi-person control

### 6.2.3 Private key escrow

### 6.2.4 Private key backup

### 6.2.5 Private key archival

### 6.2.6 Private key transfer into or from a cryptographic module

### 6.2.7 Private key storage on cryptographic module

### 6.2.8 Method of activating private key

### 6.2.9 Method of deactivating private key

### 6.2.10 Method of destroying private key

### 6.2.11 Cryptographic Module Rating

## 6.3 Other aspects of key pair management

### 6.3.1 Public key archival

### 6.3.2 Certificate operational periods and key pair usage periods

## 6.4 Activation data

### 6.4.1 Activation data generation and installation

### 6.4.2 Activation data protection

### 6.4.3 Other aspects of activation data

## 6.5 Computer security controls

### 6.5.1 Specific computer security technical requirements

### 6.5.2 Computer security rating

## 6.6 Life cycle technical controls

### 6.6.1 System development controls

### 6.6.2 Security management controls

### 6.6.3 Life cycle security controls

## 6.7 Network security controls

## 6.8 Time-stamping

# 7. CERTIFICATE, CRL, AND OCSP PROFILES

## 7.1 Certificate profile

### 7.1.1 Version number(s)

### 7.1.2 Certificate extensions

### 7.1.3 Algorithm object identifiers

### 7.1.4 Name forms

### 7.1.5 Name constraints

### 7.1.6 Certificate policy object identifier

### 7.1.7 Usage of Policy Constraints extension

### 7.1.8 Policy qualifiers syntax and semantics

### 7.1.9 Processing semantics for the critical Certificate Policies extension

## 7.2 CRL profile

### 7.2.1 Version number(s)

### 7.2.2 CRL and CRL entry extensions

## 7.3 OCSP profile

### 7.3.1 Version number(s)

### 7.3.2 OCSP extensions

# 8. COMPLIANCE AUDIT AND OTHER ASSESSMENTS

In addition to the audit required by Section 8.4 of the Baseline Requirements, a CA issuing EV Certificates SHALL undergo an audit in accordance with one of the following schemes:

i. WebTrust EV Program audit, or
ii. ETSI EN 319 411-1 audit for EVCP policy.

## 8.1 Frequency or circumstances of assessment

### 8.1.1 Self audits

In addition to the Self-Audits required by Section 8.7 of the Baseline Requirements, for all EV Certificates where the Final Cross-Correlation and Due Diligence requirements of [Section 3.2.2.13](#32213-final-cross-correlation-and-due-diligence) is performed by an RA, the CA MUST strictly control its service quality by performing ongoing self audits against a randomly selected sample of at least six percent of the EV Certificates it has issued in the period beginning immediately after the last sample was taken.

## 8.2 Identity/qualifications of assessor

## 8.3 Assessor's relationship to assessed entity

## 8.4 Topics covered by assessment

## 8.5 Actions taken as a result of deficiency

## 8.6 Communication of results

## 8.7 Pre-issuance Readiness Audit

1. If the CA has a currently valid WebTrust Seal of Assurance for CAs, then, before issuing EV Certificates, the CA and its Root CA MUST successfully complete a point-in-time readiness assessment audit against the WebTrust EV Program.
2. If the CA has a currently valid ETSI EN 319 411-1 audit for EVCP policy, then, before issuing EV Certificates, the CA and its Root CA MUST successfully complete a point-in-time readiness assessment audit against ETSI EN 319 411-1 for EVCP.

The CA MUST complete any required point-in-time readiness assessment no earlier than twelve (12) months prior to issuing an EV Certificate. The CA MUST undergo a complete audit under such scheme within ninety (90) days of issuing the first EV Certificate.

# 9. OTHER BUSINESS AND LEGAL MATTERS

## 9.1 Fees

### 9.1.1 Certificate issuance or renewal fees

### 9.1.2 Certificate access fees

### 9.1.3 Revocation or status information access fees

### 9.1.4 Fees for other services

### 9.1.5 Refund policy

## 9.2 Financial responsibility

### 9.2.1 Insurance coverage

Each CA SHALL maintain the following insurance related to their respective performance and obligations under these Guidelines:

A.  Commercial General Liability insurance (occurrence form) with policy limits of at least two million US dollars in coverage; and

B.  Professional Liability/Errors and Omissions insurance, with policy limits of at least five million US dollars in coverage, and including coverage for:
    i. claims for damages arising out of an act, error, or omission, unintentional breach of contract, or neglect in issuing or maintaining EV Certificates, and;
    ii. claims for damages arising out of infringement of the proprietary rights of any third party (excluding copyright, and trademark infringement), and invasion of privacy and advertising injury.

Such insurance must be with a company rated no less than A- as to Policy Holder's Rating in the current edition of Best's Insurance Guide (or with an association of companies each of the members of which are so rated).

A CA MAY self-insure for liabilities that arise from such party's performance and obligations under these Guidelines provided that it has at least five hundred million US dollars in liquid assets based on audited financial statements in the past twelve months, and a quick ratio (ratio of liquid assets to current liabilities) of not less than 1.0.

### 9.2.2 Other assets

### 9.2.3 Insurance or warranty coverage for end-entities

## 9.3 Confidentiality of business information

### 9.3.1 Scope of confidential information

### 9.3.2 Information not within the scope of confidential information

### 9.3.3 Responsibility to protect confidential information

## 9.4 Privacy of personal information

### 9.4.1 Privacy plan

### 9.4.2 Information treated as private

### 9.4.3 Information not deemed private

### 9.4.4 Responsibility to protect private information

### 9.4.5 Notice and consent to use private information

### 9.4.6 Disclosure pursuant to judicial or administrative process

### 9.4.7 Other information disclosure circumstances

## 9.5 Intellectual property rights

## 9.6 Representations and warranties

### 9.6.1 CA representations and warranties

When the CA issues an EV Certificate, the CA and its Root CA represent and warrant to the Certificate Beneficiaries listed in Section 9.6.1 of the Baseline Requirements, during the period when the EV Certificate is Valid, that the CA has followed the requirements of these Guidelines and its EV Policies in issuing and managing the EV Certificate and in verifying the accuracy of the information contained in the EV Certificate. The EV Certificate Warranties specifically include, but are not limited to, the following:

A.  **Legal Existence**: The CA has confirmed with the Incorporating or Registration Agency in the Subject's Jurisdiction of Incorporation or Registration that, as of the date the EV Certificate was issued, the Subject named in the EV Certificate legally exists as a valid organization or entity in the Jurisdiction of Incorporation or Registration;

B.  **Identity**: The CA has confirmed that, as of the date the EV Certificate was issued, the legal name of the Subject named in the EV Certificate matches the name on the official government records of the Incorporating or Registration Agency in the Subject's Jurisdiction of Incorporation or Registration, and if an assumed name is also included, that the assumed name is properly registered by the Subject in the jurisdiction of its Place of Business.

### 9.6.2 RA representations and warranties

### 9.6.3 Subscriber representations and warranties

### 9.6.4 Relying party representations and warranties

### 9.6.5 Representations and warranties of other participants

## 9.7 Disclaimers of warranties

## 9.8 Limitations of liability

CAs MAY limit their liability as described in Section 9.8 of the Baseline Requirements except that a CA MUST NOT limit its liability to Subscribers or Relying Parties for legally recognized and provable claims to a monetary amount less than two thousand US dollars per Subscriber or Relying Party per EV Certificate.

## 9.9 Indemnities

## 9.10 Term and termination

### 9.10.1 Term

### 9.10.2 Termination

### 9.10.3 Effect of termination and survival

## 9.11 Individual notices and communications with participants

## 9.12 Amendments

### 9.12.1 Procedure for amendment

### 9.12.2 Notification mechanism and period

### 9.12.3 Circumstances under which OID must be changed

## 9.13 Dispute resolution provisions

## 9.14 Governing law

## 9.15 Compliance with applicable law

## 9.16 Miscellaneous provisions

### 9.16.1 Entire agreement

### 9.16.2 Assignment

### 9.16.3 Severability

### 9.16.4 Enforcement (attorneys' fees and waiver of rights)

### 9.16.5 Force Majeure

## 9.17 Other provisions

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

This firm represents *[**exact** company name of Client]* [^1] ("Client"), who has submitted the Application to you dated as of the Application Date shown above ("Application"). We have been asked by our Client to present you with our opinion as stated in this letter.

[Insert customary preliminary matters for opinion letters in your jurisdiction.]

On this basis, we hereby offer the following opinion:

1. That [exact company name of Client] ("Company") is a duly formed [corporation, LLC, etc.] that is "active," "valid," "current," or the equivalent under the laws of the state/province of [name of governing jurisdiction where Client is incorporated or registered] and is not under any legal disability known to the author of this letter.

2. That Company conducts business under the assumed name or "DBA" *[assumed name of the Applicant]* and has registered such name with the appropriate government agency in the jurisdiction of its place of business below.

3. That *[name of Client's Representative]*[^2] has authority to act on behalf of Company to: *[select as appropriate]* (a) provide the information about Company required for issuance of the EV Certificates as contained in the attached Application, (b) request one or more EV Certificates and to designate other persons to request EV Certificates, and (c) agree to the relevant contractual obligations contained in the Subscriber Agreement on behalf of Company.

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

*[Jurisdiction(s) in which attorney / Latin notary is admitted to practice]*[^3]

cc: *[Send copy to Client]*

[^1]: This must be the Client's exact corporate name, as registered with the relevant Incorporating Agency in the Client's Jurisdiction of Incorporation. This is the name that will be included in the EV Certificate.

[^2]: If necessary to establish the Client Representative's actual authority, you may rely on a Power of Attorney from an officer of Client who has authority to delegate the authority to the Client Representative.

[^3]: This letter may be issued by in-house counsel for the Client so long as permitted by the rules of your jurisdiction.

# Appendix C - Sample Accountant Letters Confirming Specified Information

**(Informative)**

It is acceptable for professional accountants to provide letters that address specified matters. The letters would be provided in accordance with the professional standards in the jurisdiction in which the accountant practices.

Two examples of the letter that might be prepared by an accountant in the United States and in Canada follow:

## UNITED STATES

To the [Certification Authority] and Management of [Client]:

We have performed the procedures enumerated below, which were agreed to by the Managements of Client, solely to assist you in evaluating the company's application for an Extended Validation (EV) Certificate, dated......................., 20...... This agreed-upon procedures engagement was conducted in accordance with attestation standards established by the American Institute of Certified Public Accountants. The sufficiency of these procedures is solely the responsibility of those parties specified in this report. Consequently, we make no representation regarding the sufficiency of the procedures described below either for the purpose for which this report has been requested or for any other purpose.

| Specified Information: | Procedure:(Note 1: These are illustrative of the procedures that would be undertaken and are designed to meet the needs of the Certification Authorities issuing Extended Validation Certificates) | Results: (Note 2: If you are unavailable to perform any of the stated procedure, this should be noted in this column. Any exceptions should be noted in a separate paragraph below) |
| --- | --- | --- |
|   |   |   |
| Legal Name - 123456 Delaware corporation | Agree legal name to permanent audit file information (If audit has been completed). | Legal name on the application agrees with the information contained in our permanent file with respect to Client.(If there is no permanent file, state this fact) |
|   |   |   |
| Doing business as - "Name" | Agree name to government data base of business names | The name "Name" is registered with the (name of database to which the name was agreed) |
|   |   |   |
| Physical location - "Address Information" | Visit the location at the address | Site visit completed at Address |
|   |   |   |
| Business Phone Number - 555 999 9999 | Phone the number provided and confirm that it was answered by the named organization  | Phoned Business Number and noted that it was answered with the Doing Business As name. This would provided by the receptionist |
|   |   |   |
| Bank Account – "Bank Name", "Account Number" | Request a letter directly from "the Bank" confirming the existence of the account for the benefit of "the Client" | Received letter directly from "the Bank" confirming the existence of the account for the benefit of "the Client" |
|   |   |   |
| The corporate officers are "NAMED" (verified officer) | Agree Names to annual shareholders meeting minutes (Note - not required to personally know the officers) | Agreed Names listed as corporate officers on the application to minute books maintained by the Client |
|   |   |   |
| Name of application signer and approver | Obtain letter from verified Officer confirming the names of the application signer and approver | Obtained letter from the President confirming the names of the duly authorized names of the application signer and approver as they appear in the application |

We were not engaged to and did not conduct an examination, the objective of which would be the expression of an opinion on the Application for Extended Validation Certificate. Accordingly, we do not express such an opinion. Had we performed additional procedures, other matters might have come to our attention that would have been reported to you.

This report is intended solely for the information and use of the Certification Authority and managements of Client, and is not intended to be and should not be used by anyone other than these specified parties.

[Signature]

[Date]

## CANADA

To: [Name of Certification Authority]

Re: Client Limited [Applicant]

As specifically agreed, I/we have performed the following procedures in connection with the above company's application for an Extended Validation (EV) Certificate, dated ......................., 20.... with respect to the following specified information contained in the application

| Specified Information: | Procedure:(Note 1: These are illustrative of the procedures that would be undertaken and are designed to meet the needs of the Certification Authorities issuing Extended Validation Certificates) | Results: (Note 2: If you are unavailable to perform any of the stated procedure, this should be noted in this column. Any exceptions should be noted in a separate paragraph below) |
| --- | --- | --- |
|   |   |   |
| Legal Name - 123456 Ontario limited | Agree legal name to permanent audit file information (If audit has been completed) | Legal name on the application agrees with the information contained in our permanent file with respect to Client.(If there is no permanent file, state this fact) |
|   |   |   |
| Doing business as - "Name" | Agree name to government data base of business names | The name "Name" is registered with the (name of database to which the name was agreed) |
|   |   |   |
| Physical location - "Address Information" | Visit the location at the address | Site visit completed at Address |
|   |   |   |
| Business Phone Number - 555 999 9999 | Phone the number provided and confirm that it was answered by the named organization  | Phoned Business Number and noted that it was answered with the Doing Business As name. This would provided by the receptionist |
|   |   |   |
| Bank Account – "Bank Name", "Account Number" | Request a letter directly from "the Bank" confirming the existence of the account for the benefit of "the Client" | Received letter directly from "the Bank" confirming the existence of the account for the benefit of "the Client" |
|   |   |   |
| The corporate officers are "NAMED" (verified officer) | Agree Names to annual shareholders meeting minutes (Note - not required to personally know the officers) | Agreed Names listed as corporate officers on the application to minute books maintained by the Client |
|   |   |   |
| Name of application signer and approver | Obtain letter from verified Officer confirming the names of the application signer and approver | Obtained letter from the President confirming the names of the duly authorized names of the application signer and approver as they appear in the application |

As a result of applying the above procedures, I/we found [no / the following] exceptions [list of exceptions]. However, these procedures do not constitute an audit of the company's application for an EV Certificate, and therefore I express no opinion on the application dated ......................., 20.....

This letter is for use solely in connection with the application for an Extended Validation Certificate by [Client] dated ......................., 20......

City

(signed) ......................................

# Appendix D - Country-Specific Interpretative Guidelines (Normative)

NOTE: This appendix provides alternative interpretations of the EV Guidelines for countries that have a language, cultural, technical, or legal reason for deviating from a strict interpretation of the EV Guidelines. More specific information for particular countries may be added to this appendix in the future.

## 1. Organization Names

1. Non-Latin Organization Name

   Where an EV Applicant's organization name is not registered with a QGIS in *Latin* characters and the Applicant's foreign character organization name and registration have been verified with a QGIS in accordance with these Guidelines, a CA MAY include a Latin character organization name in the EV Certificate. In such a case, the CA MUST follow the procedures laid down in this section.

2. Romanized Names

   In order to include a transliteration/Romanization of the registered name, the Romanization MUST be verified by the CA using a system officially recognized by the Government in the Applicant's Jurisdiction of Incorporation.

   If the CA can not rely on a transliteration/Romanization of the registered name using a system officially recognized by the Government in the Applicant's Jurisdiction of Incorporation, then it MUST rely on one of the options below, in order of preference:

   A.  A system recognized by the International Organization for Standardization (ISO);
   B.  A system recognized by the United Nations; or
   C.  A Lawyer's Opinion or Accountant's Letter confirming the proper Romanization of the registered name.

3. Translated Name

   In order to include a Latin character name in the EV certificate that is not a direct Romanization of the registered name (e.g. an English Name) the CA MUST verify that the Latin character name is:

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
   C.  The CA MAY use the Financial Services Agency to verify a Romanized, translated, or other recognized Roman-letter substitute name. When used, the CA MUST verify that the translated English is recorded in the audited Financial Statements.
   D.  When relying on Articles of Incorporation to verify a Romanized, translated, or other recognized Roman-letter substitute name, the Articles of Incorporation MUST be accompanied either: by a document, signed with the original Japanese Corporate Stamp, that proves that the Articles of Incorporation are authentic and current, or by a Verified Legal Opinion or a Verified Accountant Letter. The CA MUST verify the authenticity of the Corporate Stamp.
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

A CA may rely on the Contract Signer's authority to enter into the Subscriber Agreement using a representation/warranty executed by the Contract Signer. An example of an acceptable warranty is as follows:

CA and Applicant are entering into a legally valid and enforceable Subscriber Agreement that creates extensive obligations on Applicant. An EV Certificate serves as a form of digital identity for Applicant. The loss or misuse of this identity can result in great harm to the Applicant. By signing this Subscriber Agreement, the contract signer acknowledges that they have the authority to obtain the digital equivalent of a company stamp, seal, or (where applicable) officer's signature to establish the authenticity of the company's website, and that [Applicant name] is responsible for all uses of its EV Certificate. By signing this Agreement on behalf of [Applicant name], the contract signer represents that the contract signer

   i. is acting as an authorized representative of [Applicant name],
   ii. is expressly authorized by [Applicant name] to sign Subscriber Agreements and approve EV Certificate requests on Applicant's behalf, and
   iii. has confirmed Applicant's right to use the domain(s) to be included in EV Certificates.
