//
//  TriviaTableViewController.swift
//  swift-LocationTrivia-DataStoreRelationships-lab
//
//  Created by Marie Park on 10/26/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class TriviaTableViewController: UITableViewController {
    let store = LocationsDataStore.sharedInstance
    var location: Location!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.accessibilityLabel = "Trivia Table"
        tableView.accessibilityIdentifier = "Trivia Table"
        tableView.accessibilityLabel =  "Trivium Text Field"
        tableView.accessibilityIdentifier =  "Trivium Text Field"
        tableView.accessibilityLabel =  "Trivium Text Field"
        tableView.accessibilityIdentifier =  "Trivium Text Field"
    
        tableView.allowsSelection = false
    }
//    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        let destVC = segue.destination as? AddTriviaViewController
//        destVC?.delegate = self
//        destVC?.location? = location?
//    }
}

//MARK: Table View Data Source

extension TriviaTableViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (location?.trivia.count)!
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "triviaCell", for: indexPath)
        
        cell.textLabel?.text = location?.trivia[indexPath.row].content
        cell.detailTextLabel?.text = String(describing: location?.trivia[indexPath.row].likes)
        return cell
    }
}

//extension TriviaTableViewController: AddTriviaViewControllerDelegate {
//    func updateTableViewWhenSaved() {
//    tableView.reloadData()
//    }
//}
//    

    
    


