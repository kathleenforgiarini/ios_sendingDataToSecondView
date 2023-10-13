//
//  ViewController.swift
//  SendingDataToSecondView
//
//  Created by Kathleen on 2023-09-29.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtMessage: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        txtMessage.backgroundColor = .systemYellow
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        
        if identifier == Segue.toSecondViewController {
            return !txtMessage.text!.isEmpty
        }
        return false
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == Segue.toSecondViewController || segue.identifier == Segue.toSecondViewControllerProgrammatically{
            let secondViewController = segue.destination as! SecondViewController
            secondViewController.receivedMessage = txtMessage.text
        }
    }
    
    @IBAction func btnSendMessageProgrammaticallyTouchUpInside(_ sender: Any) {
        if !txtMessage.text!.isEmpty {
            performSegue(withIdentifier: Segue.toSecondViewControllerProgrammatically, sender: self)
        }
    }
    /*
     Flow for Segues:
     Button > ViewController    -> ShouldPerformSegue (true) -> PrepareForSegue
     ViewController > ViewController -> ---- ---- ---- ----     -> PrepareForSegue
     */
    
    @IBAction func txtMessageEditingChanged(_ sender: Any) {
    }
    
}

