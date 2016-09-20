//
//  ViewController.swift
//  VIPBGapp
//
//  Created by Lance Rappaport on 9/16/16.
//  Copyright © 2016 Lance Rappaport. All rights reserved.
//

import UIKit
import ResearchKit

extension UIViewController: ORKTaskViewControllerDelegate {
    public func taskViewController(_ taskViewController: ORKTaskViewController, didFinishWith reason:ORKTaskViewControllerFinishReason, error: Error?){
        taskViewController.dismiss(animated: true, completion: nil)
    }
}

class ViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func consentTapped(sender: AnyObject){
        let taskViewController = ORKTaskViewController(task: ConsentTask, taskRun: nil)
        taskViewController.delegate = self
        present(taskViewController, animated: true, completion: nil)
    }
    
    @IBAction func moodTapped(sender: AnyObject){
        let taskViewController = ORKTaskViewController(task: moodTask, taskRun: nil)
        taskViewController.delegate = self
        present(taskViewController, animated: true, completion: nil)
    }
    
    
    @IBAction func unwindToWithdrawal( sender: AnyObject, segue: UIStoryboardSegue){
        toWithdrawal()
    }
    func toWithdrawal(){
        let viewController = WithdrawViewController()
        viewController.delegate = self
        present(viewController, animated: true, completion: nil)
    }
    

}

