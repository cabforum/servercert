# Server Certificate Working Group Charter - Version 1.1

Upon approval of the CAB Forum by ballot, the Server Certificate Working Group (“SCWG”) is created to perform the activities as specified in this Charter, subject to the terms and conditions of the CA/Browser Forum Bylaws and Intellectual Property Rights (IPR) Policy, as such documents may change from time to time. The definitions found in the Forum’s Bylaws shall apply to capitalized terms in this Charter.

**SCOPE:** The authorized scope of the Server Certificate Working Group shall be as follows:

  1. To specify Baseline Requirements, Extended Validation Guidelines, Network and Certificate System Security Requirements, and other acceptable practices for the issuance and management of SSL/TLS server certificates used for authenticating servers accessible through the Internet.
  
  2. To update such requirements and guidelines from time to time, in order to address both existing and emerging threats to online security, including responsibility for the maintenance of and future amendments to the current CA/Browser Forum Baseline Requirements, Extended Validation Requirements, and Network and Certificate System Security Requirements.
  
  3. To perform such other activities that are ancillary to the primary activities listed above.

**OUT OF SCOPE:** The Server Certificate Working Group will not address certificates intended to be used primarily for code signing, S/MIME, time-stamping, VoIP, IM, or Web services. The Server Certificate Working Group will not address the issuance, or management of certificates by enterprises that operate their own Public Key Infrastructure for internal purposes only, and for which the Root Certificate is not distributed by any Application Software Supplier.

**Anticipated End Date:** None.

**Members eligible to participate:**

(a) The Working Group shall consist of two classes of voting members, the Certificate Issuers and the Certificate Consumers. The CA Class shall consist of eligible Certificate Issuers and Root Certificate Issuers meeting the following criteria:

   1) **Certificate Issuer:** The member organization operates a certification authority that has a publicly-available audit report or attestation statement in accordance with one of the following schemes:
* “WebTrust for CAs v2.0 or newer”; or
* ETSI EN 319 411-1 or ETSI EN 319 411-2, which includes normative references to ETSI EN 319 401 (the latest version of the referenced ETSI documents should be applied); or
* If a Government Certificate Issuer is required by its Certificate Policy to use a different internal audit scheme, it MAY use such scheme provided that the audit either (a) encompasses all requirements of one of the above schemes or (b) consists of comparable criteria that are available for public review.

These audit reports must also meet the following requirements:
* They must report on the operational effectiveness of controls for a historic period of at least sixty (60) days;
* No more than twenty-seven (27) months have elapsed since the beginning of the reported-on period and no more than fifteen (15) months since the end of the reported-on period;
* The audit report was prepared by a properly-Qualified Auditor.

In addition, the member organization actively issues certificates to Web servers that are openly accessible from the Internet, such certificates being treated as valid when using a browser created by a Certificate Consumer Member. Applicants that are not actively issuing certificates but otherwise meet membership criteria may be granted Associate Member status under Bylaw Sec. 3.1 for a period of time to be designated by the SCWG.

   2) **Root Certificate Issuer:** The member organization operates a certification authority that has a publicly-available audit report or attestation statement that  in accordance with one of the following schemes:
* “WebTrust for CAs v2.0 or newer”; or
* ETSI EN 319 411-1 or ETSI EN 319 411-2, which includes normative references to ETSI EN 319 401 (the latest version of the referenced ETSI documents should be applied); or
* If the CA is required to use a different audit scheme by any jurisdiction in which the CA operates or issues certificates, it MAY use such scheme provided that the audit scheme criteria are available for public and review and either (a) encompasses all requirements of one of the above schemes or (b) consists of comparable criteria.

These audit reports must also meet the following requirements:
* They must report on the operational effectiveness of controls for a historic period of at least sixty (60) days;
* No more than twenty-seven (27) months have elapsed since the beginning of the reported-on period and no more than fifteen (15) months since the end of the reported-on period;
* The audit report was prepared by a properly-Qualified Auditor.

In addition, the member organization actively issues certificates to Web servers that are openly accessible from the Internet, such certificates being treated as valid when using a browser created by a Certificate Consumer Member. Applicants that are not actively issuing certificates but otherwise meet membership criteria may be granted Associate Member status under Bylaw Sec. 3.1 for a period of time to be designated by the SCWG.

   3) **A Certificate Consumer** can participate in this Working Group if it produces a software product intended for use by the general public for browsing the Web securely.

(b) Applicants must supply the following information:

   * Confirmation that the applicant satisfies at least one (1) of the membership criteria (and if it satisfies more than one (1), indication of the single category under which the applicant wishes to apply).

   * The organization name, as they wish it to appear on the Forum Web site and in official Forum documents.

   * URL of the applicant's main Web site.

   * Names and email addresses of employees who will participate in the Working Group and Forum as Member representatives.

   * Emergency contact information for security issues related to certificate trust.

Applicants that qualify as Certificate Issuers or Root Certificate Issuers must supply the following additional information:

   * URL of the current qualifying audit report.

   * The URL of at least one third party website that includes a certificate issued by the Applicant in the certificate chain.

   * Links or references to issued end-entity certificates that demonstrate them being treated as valid by a Certificate Consumer Member.

(c) An Applicant shall become a Member once the Server Certificate Working Group has determined by consensus among the Members during a Meeting or Teleconference that the Applicant meets all of the requirements of subsection (a) or, upon the request of any Member, by a Ballot among the Members. Acceptance by consensus shall be determined or a Ballot of the Members shall be held as soon as the Applicant indicates that it has presented all information required and has responded to all follow-up questions from the SCWG and the Member has complied with the requirements of Section 5.5 of the CA/Browser Forum Bylaws.

The Working Group shall include Interested Parties and Associate Members as defined in the Bylaws.

**Ending Server Certificate Working Group Membership:** Members may resign from the Server Certificate Working Group at any time. Resignation does not prevent a Member from potentially having continuing obligations, under the Forum's IPR Policy or any other document.

   1) **Certificate Consumer:** A Certificate Consumer Member's membership will automatically cease if any of the following become true:
   
   * it stops providing updates for its membership-qualifying software product; and 
   
   * six (6) months have elapsed since the last such published update.

   2) **Certificate Issuer or Root Certificate Issuer:** A Certificate or Root Certificate Issuer Member's membership may be suspended if any of the following become true:
   
   * it fails to perform and disclose its membership-qualifying audit and fifteen (15) months have elapsed since the end of the audit period of its last successful membership-qualifying audit; or
   
   * its membership-qualifying audit is revoked, rescinded or withdrawn; or
   
   * fifteen (15) months have elapsed since the end of the audit period of its last membership-qualifying audit; or
   
   * it is no longer the case that its currently-issued certificates are treated as valid by at  least one (1) Certificate Consumer Member of the Server Certificate Working Group.

Any Member who believes any of the above circumstances is true of any other Member, that Member may report it on the SCWG Public Mail List. The Chair will then investigate, including asking the reported Member for an explanation or appropriate documentation. If evidence of continued qualification for membership is not forthcoming from the reported Member within five (5) working days, the Chair will announce that such Member is suspended, such announcement to include the clause(s) from the above list under which the suspension has been made.

A suspended Member who believes it has now re-met the membership criteria under the relevant clauses shall post evidence to the SCWG Public Mail List. The Chair will examine the evidence and unsuspend the member, or not, by public announcement. A Member's membership will automatically cease six (6) months after it becomes suspended if the Member has not re-met the membership criteria by that time.

While suspended, a Member may participate in SCWG and Forum Meetings, Teleconferences, and on the SCWG and Forum's discussion lists, but may not propose or endorse ballots or take part in any form of voting.
Votes cast before a Member's suspension is announced will stand.

**Voting structure:** In order for a ballot to be adopted by the Working Group, two-thirds or more of the votes cast by the Certificate Issuers must be in favor of the ballot and more than 50% of the votes cast by the Certificate Consumers must be in favor of the ballot. At least one member of each class must vote in favor of a ballot for it to be adopted. Quorum is the average number of Member organizations (cumulative, regardless of Class) that have participated in the previous three Server Certificate Working Group Meetings or Teleconferences (not counting subcommittee meetings thereof). For transition purposes, if three meetings have not yet occurred, quorum is ten (10).

**Summary of the work that the WG plans to accomplish:** As specified in Scope section above.

**Summary of major WG deliverables and guidelines:** As specified in Scope section above.

**Primary means of communication:** listserv-based email, periodic calls, and face-to-face meetings.

**IPR Policy:** The CA/Browser Forum Intellectual Rights Policy, v. 1.3 or later, SHALL apply to all Working Group activity.
