//
//  Menu.swift
//  Cafe
//
//  Created by Alumno on 16/10/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import Foundation
import UIKit

var cafes = ["Americano", "Espreso"]
var cafeDes = ["si te gusta el café fuerte y amargo, mientras más fino sea el grano, más intenso será el sabor.","con una característica capa de crema en la superficie debido a la presión. Se trata de un café de aroma potente y sabor intenso."]
var myIndex = 0

class menu: UITableViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cafes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = cafes[indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myIndex = indexPath.row
        performSegue(withIdentifier: "segue", sender: self)
    }
}
