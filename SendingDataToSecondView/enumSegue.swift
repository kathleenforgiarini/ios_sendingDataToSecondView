//
//  enumSegue.swift
//  SendingDataToSecondView
//
//  Created by Kathleen on 2023-10-13.
//

import Foundation

// enumeration
// pre-defined list of Segues to avoid handling Strings (DANGER!)

enum Segue {
    static let toSecondViewController = "toSecondViewController"
    static let toSecondViewControllerProgrammatically = "toSecondViewControllerProgrammatically"
}
