//
//  AddTriviaViewController.swift
//  swift-LocationTrivia-DataStoreRelationships-lab
//
//  Created by Marie Park on 10/29/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

//protocol AddTriviaViewControllerDelegate {
//    func updateTableViewWhenSaved()
//}

class AddTriviaViewController: UIViewController {
//    let store = LocationsDataStore.sharedInstance
//    var delegate: AddTriviaViewControllerDelegate?
//    var locationIndex: Int?
    var newLocation: Location!
    
    @IBOutlet weak var TriviumTextField: UITextField!
    @IBOutlet weak var Cancel_Btn: UIButton!
    @IBOutlet weak var Save_Btn: UIButton!
    
    var saveTriviaClicked = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.navigationItem.rightBarButtonItem?.accessibilityLabel = "Add Trivia Button"
        self.navigationItem.rightBarButtonItem?.accessibilityIdentifier = "Add Trivia Button"
        
        TriviumTextField.accessibilityLabel = "Trivium Text Field"
        TriviumTextField.accessibilityIdentifier = "Trivium Text Field"
        
        Save_Btn.accessibilityLabel = "Save Button"
        Save_Btn.accessibilityIdentifier = "Save Button"
        
        Cancel_Btn.accessibilityLabel = "Cancel Button"
        Cancel_Btn.accessibilityIdentifier = "Cancel Button"
    }
    
    @IBAction func Cancel_Btn_Pressed(_ sender: UIButton) {
         self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func Save_Btn_Pressed(_ sender: UIButton) {
        if TriviumTextField.text != "" {
            print("running")
        
            if let enteredTrivia = TriviumTextField.text {
                print("running")
                let newTrivium = Trivium(content: enteredTrivia, likes: 0)
                self.newLocation.trivia.append(newTrivium)
                
                saveTriviaClicked = true
                self.dismiss(animated: true, completion: nil)
            }
        }
    }
}
