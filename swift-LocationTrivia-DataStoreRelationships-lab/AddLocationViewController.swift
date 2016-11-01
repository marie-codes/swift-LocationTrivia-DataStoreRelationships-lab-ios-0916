//
//  AddLocationViewController.swift
//  swift-LocationTrivia-DataStoreRelationships-lab
//
//  Created by Marie Park on 10/26/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

//protocol AddLocationViewControllerDelegate {
//    func updateTableViewWhenSaved()
//}

class AddLocationViewController: UIViewController {
//    let store = LocationsDataStore.sharedInstance
//    var delegate: AddLocationViewControllerDelegate?

    @IBOutlet weak var NameTextField: UITextField!
    @IBOutlet weak var LatitudeTextField: UITextField!
    @IBOutlet weak var LongitudeTextField: UITextField!
    var saveClicked = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NameTextField.accessibilityLabel = "nameField"
        NameTextField.accessibilityIdentifier = "nameField"
        LatitudeTextField.accessibilityLabel = "latitudeField"
        LatitudeTextField.accessibilityIdentifier = "latitudeField"
        LongitudeTextField.accessibilityLabel = "longitudeField"
        LongitudeTextField.accessibilityIdentifier = "longitudeField"
    }
    
    @IBAction func Cancel_Btn_Pressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func Save_Btn_Pressed(_ sender: UIButton) {
        print("yhey im being pressed")
        let newLocation = Location(name: NameTextField.text!, latitude: Float(LatitudeTextField.text!)!, longitude: Float(LongitudeTextField.text!)!)
//        delegate?.updateTableViewWhenSaved()
        
        LocationsDataStore.sharedInstance.locations.append(newLocation)
        
        saveClicked = true
        
        if saveClicked == true {
        self.dismiss(animated: true, completion: nil)
        }
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
