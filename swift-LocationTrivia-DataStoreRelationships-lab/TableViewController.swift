//
//  TableViewController.swift
//  swift-LocationTrivia-DataStoreRelationships-lab
//
//  Created by Marie Park on 10/26/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class LocationTableViewController: UITableViewController {
    
    //MARK: Logic Properties
    let store = LocationsDataStore.sharedInstance
    
    //MARK: Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.rightBarButtonItem?.accessibilityLabel = "addButton"
        self.navigationItem.rightBarButtonItem?.accessibilityIdentifier = "addButton"
        tableView.accessibilityLabel = "Location Table"
        tableView.accessibilityIdentifier = "Location Table"
        
        
        
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
        print("hey im appearing")
    }
}

//MARK: Table view data source

extension LocationTableViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return store.locations.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "locationCell", for: indexPath)
        
        let location = store.locations[indexPath.row]
        
        cell.textLabel?.text = location.name
        cell.detailTextLabel?.text = String(location.trivia.count)
       
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showTrivia" {
            let destination = segue.destination as? TriviaTableViewController
            let selectedLocation = tableView.indexPathForSelectedRow?.row
            destination!.location = store.locations[selectedLocation!]
        } else if segue.identifier == "showAddLocation" {
            let destination = segue.destination as? AddLocationViewController
        }
        
        }
    }


//MARK: Add Location View Controller Delegate
//    extension LocationTableViewController: AddTriviaViewControllerDelegate {
//        func updateTableViewWhenSaved() {
//        tableView.reloadData()
//    }
//}
//

