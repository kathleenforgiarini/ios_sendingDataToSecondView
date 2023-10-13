//
//  SecondViewController.swift
//  SendingDataToSecondView
//
//  Created by Kathleen on 2023-09-29.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var lblMessage: UILabel!

    // by default is public
    var receivedMessage : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblMessage.text = receivedMessage
    }
}
