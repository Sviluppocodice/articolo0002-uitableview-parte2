//
//  ViewController.swift
//  Table
//
//  Created by Federico Barbieri on 10/04/2019.
//  Copyright © 2019 Federico Barbieri. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var macchineArr : [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.prepareData()
    }
    
    func prepareData() {
        
        self.macchineArr = ["ferrari", "panda", "lamborghini"]
    }


}

extension ViewController : UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
        return macchineArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "list_cell", for: indexPath) as! ListTableViewCell
        
        cell.titleLbl.text = self.macchineArr[indexPath.row]
        
        return cell
    }
    
}

extension ViewController : UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        
        let alert = UIAlertController(title: "Macchina scelta", message: self.macchineArr[indexPath.row], preferredStyle: UIAlertController.Style.alert)
        
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
        
        self.present(alert, animated: true, completion: nil)
    
    }
}

