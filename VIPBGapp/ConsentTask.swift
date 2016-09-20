//
//  ConsentTask.swift
//  VIPBGapp
//
//  Created by Lance Rappaport on 9/16/16.
//  Copyright © 2016 Lance Rappaport. All rights reserved.
//

import Foundation
import ResearchKit

public var ConsentTask: ORKOrderedTask {
    var steps = [ORKStep]()
    
    let consentDocument = ConsentDocument
    let visualConsentStep = ORKVisualConsentStep(identifier: "VisualConsentStep", document: consentDocument)
    steps += [visualConsentStep]
    
    let participantSignature = ORKConsentSignature(forPersonWithTitle: "Participant", dateFormatString: nil, identifier: "participant")
    participantSignature.requiresName = true
    participantSignature.requiresSignatureImage = true
    consentDocument.addSignature(participantSignature)
    
    let investigatorSignature = ORKConsentSignature(forPersonWithTitle: "Investigator", dateFormatString: nil, identifier: "investigatorSignature", givenName: "Lance", familyName: "Rappaport, Ph.D.", signatureImage: UIImage(named: "signature.jpg"), dateString: "03/20/16")
    consentDocument.addSignature(investigatorSignature)
    
    let signature = consentDocument.signatures!.first
    
    
    let consentReviewStep = ORKConsentReviewStep(identifier: "consentReview", signature: signature, in: consentDocument)
    
    consentReviewStep.text = "Please enter your name.  This will be kept separate from the data you provide in this study."
    consentReviewStep.reasonForConsent = "Please indicate whether you agree to participate."
    
    steps += [consentReviewStep]
    
    return ORKOrderedTask(identifier: "ConsentTask", steps:  steps)
}
