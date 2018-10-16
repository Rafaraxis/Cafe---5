//
//  CeldaMenu.swift
//  Cafe
//
//  Created by Alumno on 16/10/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import UIKit
import Foundation

class CeldaMenu : UIViewController {
    
    
    @IBOutlet weak var descview: UILabel!
    @IBOutlet weak var ww: UILabel!
    @IBOutlet weak var imageview: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ww.text =  cafes[myIndex]
        descview.text = cafeDes[myIndex]
        imageview.image = UIImage(named: cafes[myIndex] +  ".jgp")
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
