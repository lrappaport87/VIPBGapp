//
//  Withdrawal.swift
//  VIPBGapp
//
//  Created by Lance Rappaport on 9/16/16.
//  Copyright © 2016 Lance Rappaport. All rights reserved.
//

import Foundation
import UIKit
import ResearchKit

class WithdrawViewController: ORKTaskViewController {
    init() {
        let instructionStep = ORKInstructionStep(identifier: "WithdrawalInstruction")
        instructionStep.title = NSLocalizedString("Are you sure you want to withdraw?", comment: "")
        instructionStep.text = NSLocalizedString("Withdrawing from the study will reset the app to the state it was in prior to you originally joining the study.  Since your data is anonymous we are not able to delete data that you have provided.", comment: "")
        
        let completionStep = ORKCompletionStep(identifier: "Withdraw")
        completionStep.title = NSLocalizedString("We appreciate your time.", comment: "")
        completionStep.text = NSLocalizedString("Thank you for your contribution to this study. We are sorry that you could not continue.", comment: "")
        
        let withdrawTask = ORKOrderedTask(identifier: "Withdraw", steps: [instructionStep, completionStep])
        
        super.init(task: withdrawTask, taskRun: nil)
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
