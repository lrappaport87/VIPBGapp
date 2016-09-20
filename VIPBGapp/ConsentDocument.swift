//
//  ConsentDocument.swift
//  VIPBGapp
//
//  Created by Lance Rappaport on 9/16/16.
//  Copyright © 2016 Lance Rappaport. All rights reserved.
//

import Foundation
import ResearchKit

public var ConsentDocument: ORKConsentDocument {
    
    let consentSectionOverview = ORKConsentSection(type: .overview)
    consentSectionOverview.title = "Overview"
    consentSectionOverview.summary = "The purpose of this study is to examine variation in mood in daily life."
    consentSectionOverview.content = "The purpose of this study is to examine variation in mood in daily life."
    
    let consentSectionDataGathering = ORKConsentSection(type: .dataGathering)
    consentSectionDataGathering.title = "Data Gathering"
    consentSectionDataGathering.summary = "This study will ask you to complete short surveys several times per day.  In prior research, all surveys took less than 5 minutes each to complete."
    consentSectionDataGathering.content = "This study will ask you to complete short surveys several times per day.  In prior research, all surveys took less than 5 minutes each to complete."
    
    let consentSectionPrivacy = ORKConsentSection(type: .privacy)
    consentSectionPrivacy.title = "Privacy"
    consentSectionPrivacy.summary = "Your privacy will be protected by encrypting information you provide within the app and then uploading it to a server with encryption meeting the standards of the Health Insurance Portability and Accountability Act (HIPAA).  The information that you provide is not sufficient to identify you.  While we make ask for demographic information (e.g., age, gender) this is not sufficient to identify you as the specific person who provided information."
    consentSectionPrivacy.content = "Your privacy will be protected by encrypting information you provide within the app and then uploading it to a server with encryption meeting the standards of the Health Insurance Portability and Accountability Act (HIPAA).  The information that you provide is not sufficient to identify you.  While we make ask for demographic information (e.g., age, gender) this is not sufficient to identify you as the specific person who provided information."
    
    let consentSectionDataUse = ORKConsentSection(type: .dataUse)
    consentSectionDataUse.title = "Data Use"
    consentSectionDataUse.summary = "The data obtained in this study will assist our understanding of the dynamics of mood as experienced in daily life.  The data will be used ONLY for scientific research and improving the app itself.  Data from this research may be published in scientific journals, presented at professional conferences, and used to obtain federal funding.  Data will be used only by the researchers directly involved in this app."
    consentSectionDataUse.content = "The data obtained in this study will assist our understanding of the dynamics of mood as experienced in daily life.  The data will be used ONLY for scientific research and improving the app itself.  Data from this research may be published in scientific journals, presented at professional conferences, and used to obtain federal funding.  Data will be used only by the researchers directly involved in this app."
    
    let consentSectionTimeCommitment = ORKConsentSection(type: .timeCommitment)
    consentSectionTimeCommitment.title = "Time Commitment"
    consentSectionTimeCommitment.summary = "You will be asked to complete 3 surveys per day.  In prior research, each survey took less than 5 minutes.  You are able to skip surveys as you would like, but we ask that you try to complete surveys at each time of the time throughout your participation in the study."
    consentSectionTimeCommitment.content = "You will be asked to complete 3 surveys per day.  In prior research, each survey took less than 5 minutes.  You are able to skip surveys as you would like, but we ask that you try to complete surveys at each time of the time throughout your participation in the study."
    
    let consentSectionStudySurvey = ORKConsentSection(type: .studySurvey)
    consentSectionStudySurvey.title = "Study Survey"
    consentSectionStudySurvey.summary = "Surveys will ask about your mood.  While unlikely, it is possible that reading and thinking about your mood multiple times a day may elicit some discomfort."
    consentSectionStudySurvey.content = "Surveys will ask about your mood.  While unlikely, it is possible that reading and thinking about your mood multiple times a day may elicit some discomfort."
    
    let consentSectionStudyTasks = ORKConsentSection(type: .studyTasks)
    consentSectionStudyTasks.title = "Study Tasks"
    consentSectionStudyTasks.summary = "There are currently no active tasks for you to complete within this study."
    consentSectionStudyTasks.content = "There are currently no active tasks for you to complete within this study."
    
    let consentSectionWithdrawing = ORKConsentSection(type: .withdrawing)
    consentSectionWithdrawing.title = "Withdrawing from the study"
    consentSectionWithdrawing.summary = "You can choose whether to participate in this study.  Should you encounter a question you feel uncomfortable answering, please remember that your responses cannot be traced back to you.  If, at any point, you would like to cease participating in the study, we have provided a button within the app for you to withdraw.  There are no consequences for withdrawing from the study.  If you do withdraw, we will not be able to remove data that you previously provided since information is stored in such a way that it cannot be connected back to you."
    consentSectionWithdrawing.content = "You can choose whether to participate in this study.  Should you encounter a question you feel uncomfortable answering, please remember that your responses cannot be traced back to you.  If, at any point, you would like to cease participating in the study, we have provided a button within the app for you to withdraw.  There are no consequences for withdrawing from the study.  If you do withdraw, we will not be able to remove data that you previously provided since information is stored in such a way that it cannot be connected back to you."
    
    let consentSectioninDocument = ORKConsentSection(type: .onlyInDocument)
    consentSectioninDocument.title = "Institutional Review Board Approval"
    consentSectioninDocument.content = "This research study has been approved by the XXXX University Institutional Review Board (IRB) for the Protection of Human Subjects in Research.  If you believe that there is an infringement upon your rights as a participant in this research you may contact the Research Compliance Coordinator, XXXXXXXXXXXXXXX."
    
    let consentDocument = ORKConsentDocument()
    consentDocument.sections = [consentSectionOverview, consentSectionDataGathering, consentSectionPrivacy, consentSectionDataUse, consentSectionTimeCommitment, consentSectionStudySurvey, consentSectionStudyTasks, consentSectionWithdrawing, consentSectioninDocument]
    
    
    //TODO: Change consentDocument.addSignature to save the date that participant signed
    
    return consentDocument
}
