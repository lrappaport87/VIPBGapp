//
//  MoodTask.swift
//  VIPBGapp
//
//  Created by Lance Rappaport on 9/16/16.
//  Copyright © 2016 Lance Rappaport. All rights reserved.
//

import Foundation

public var moodTask: ORKTask {
    
    // Instruction Step
    
    let instructionStep = ORKInstructionStep(identifier: "IntroStep")
    instructionStep.title = NSLocalizedString("Mood Questions", comment: "")
    instructionStep.text = NSLocalizedString("How do you feel?", comment: "")
    
    // Question Steps
    let WorriedAnswerFormat = ORKAnswerFormat.scaleAnswerFormatWithMaximumValue(6, minimumValue: 0, defaultValue: -9, step: 1, vertical: false, maximumValueDescription: "Extremely", minimumValueDescription: "Not at all")
    let WorriedQuestionStepTitle = "Worried/Anxious"
    let WorriedQuestionStep = ORKQuestionStep(identifier: "WorriedQuestionStep", title: WorriedQuestionStepTitle, answer: WorriedAnswerFormat)
    let WorriedResult = ORKScaleQuestionResult(identifier: "WorriedAnswerFormat")
    print(WorriedResult)
    
    let HappyAnswerFormat = ORKAnswerFormat.scaleAnswerFormatWithMaximumValue(6, minimumValue: 0, defaultValue: -9, step: 1, vertical: false, maximumValueDescription: "Extremely", minimumValueDescription: "Not at all")
    let HappyQuestionStepTitle = "Happy"
    let HappyQuestionStep = ORKQuestionStep(identifier: "HappyQuestionStep", title: HappyQuestionStepTitle, answer: HappyAnswerFormat)
    
    let FrustratedAnswerFormat = ORKAnswerFormat.scaleAnswerFormatWithMaximumValue(6, minimumValue: 0, defaultValue: -9, step: 1, vertical: false, maximumValueDescription: "Extremely", minimumValueDescription: "Not at all")
    let FrustratedQuestionStepTitle = "Frustrated"
    let FrustratedQuestionStep = ORKQuestionStep(identifier: "FrustratedQuestionStep", title: FrustratedQuestionStepTitle, answer: FrustratedAnswerFormat)
    
    let PleasedAnswerFormat = ORKAnswerFormat.scaleAnswerFormatWithMaximumValue(6, minimumValue: 0, defaultValue: -9, step: 1, vertical: false, maximumValueDescription: "Extremely", minimumValueDescription: "Not at all")
    let PleasedQuestionStepTitle = "Pleased"
    let PleasedQuestionStep = ORKQuestionStep(identifier: "PleasedQuestionStep", title: PleasedQuestionStepTitle, answer: PleasedAnswerFormat)
    
    let AngryAnswerFormat = ORKAnswerFormat.scaleAnswerFormatWithMaximumValue(6, minimumValue: 0, defaultValue: -9, step: 1, vertical: false, maximumValueDescription: "Extremely", minimumValueDescription: "Not at all")
    let AngryQuestionStepTitle = "Angry/Hostile"
    let AngryQuestionStep = ORKQuestionStep(identifier: "AngryQuestionStep", title: AngryQuestionStepTitle, answer: AngryAnswerFormat)
    
    let FunAnswerFormat = ORKAnswerFormat.scaleAnswerFormatWithMaximumValue(6, minimumValue: 0, defaultValue: -9, step: 1, vertical: false, maximumValueDescription: "Extremely", minimumValueDescription: "Not at all")
    let FunQuestionStepTitle = "Enjoyment/Fun"
    let FunQuestionStep = ORKQuestionStep(identifier: "FunQuestionStep", title: FunQuestionStepTitle, answer: FunAnswerFormat)
    
    let UnhappyAnswerFormat = ORKAnswerFormat.scaleAnswerFormatWithMaximumValue(6, minimumValue: 0, defaultValue: -9, step: 1, vertical: false, maximumValueDescription: "Extremely", minimumValueDescription: "Not at all")
    let UnhappyQuestionStep = ORKQuestionStep(identifier: "UnhappyQuestionStep", title: "Unhappy", answer: UnhappyAnswerFormat)
    
    let JoyAnswerFormat = ORKAnswerFormat.scaleAnswerFormatWithMaximumValue(6, minimumValue: 0, defaultValue: -9, step: 1, vertical: false, maximumValueDescription: "Extremely", minimumValueDescription: "Not at all")
    let JoyQuestionStep = ORKQuestionStep(identifier: "JoyQuestionStep", title: "Joyful", answer: JoyAnswerFormat)
    
    let BlueAnswerFormat = ORKAnswerFormat.scaleAnswerFormatWithMaximumValue(6, minimumValue: 0, defaultValue: -9, step: 1, vertical: false, maximumValueDescription: "Extremely", minimumValueDescription: "Not at all")
    let BlueQuestionStep = ORKQuestionStep(identifier: "BlueQuestionStep", title: "Depressed/Blue", answer: BlueAnswerFormat)
    
    
    //Summary Step
    
    let summaryStep = ORKCompletionStep(identifier: "SummaryStep")
    summaryStep.title = "Thank you for completing these questions."
    summaryStep.text = "Please check back later today."
    
    let moodTask = ORKNavigableOrderedTask(identifier: "MoodSurveyTask", steps: [
        instructionStep,
        WorriedQuestionStep,
        HappyQuestionStep,
        FrustratedQuestionStep,
        PleasedQuestionStep,
        AngryQuestionStep,
        FunQuestionStep,
        UnhappyQuestionStep,
        JoyQuestionStep,
        BlueQuestionStep,
        summaryStep
        ])
    
    
    return moodTask
    
}
