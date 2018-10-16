//
//  ViewController.swift
//  Cafe
//
//  Created by Alumno on 09/10/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblDesc: UILabel!
    @IBOutlet weak var lblImagen: UIImageView!
    @IBOutlet weak var lblTitulo: UILabel!
    @IBOutlet weak var txtUsuario: UITextField!
    @IBOutlet weak var txtContraseña: UITextField!
    @IBOutlet weak var btnLogin: UIButton!
    @IBOutlet weak var btnRegister: UIButton!
    @IBAction func login(_ sender: Any) {
        let miUsuario: String
        miUsuario = txtUsuario.text!
        let miContra = txtContraseña.text!
        if (miUsuario == "Rafael" && miContra == "123"){
            performSegue(withIdentifier: "sesion", sender: nil)
        }
        else if (miUsuario.isEmpty && miContra.isEmpty)
        {
            let alerta = UIAlertController(title: "Oops!", message: "Llene los campos", preferredStyle: UIAlertControllerStyle.alert)
            alerta.addAction(UIAlertAction(title:"Cerrar", style:UIAlertActionStyle.default,handler:nil))
            self.present(alerta, animated:true, completion: nil)
        }
        else
        {
            let alerta = UIAlertController(title: "Oops!", message: "Usuario o Contraseña incorrecto", preferredStyle: UIAlertControllerStyle.alert)
            alerta.addAction(UIAlertAction(title:"Cerrar", style:UIAlertActionStyle.default,handler:nil))
            self.present(alerta, animated:true, completion: nil)
        }
        
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        txtUsuario.layer.borderWidth = 1
        txtUsuario.layer.borderColor = UIColor.white.cgColor
        txtUsuario.layer.cornerRadius = 20
        txtUsuario.clipsToBounds = true
        
        txtContraseña.layer.borderWidth = 1
        txtContraseña.layer.borderColor = UIColor.white.cgColor
        txtContraseña.layer.cornerRadius = 20
        txtContraseña.clipsToBounds = true
        
        btnLogin.layer.cornerRadius = 20
        btnLogin.clipsToBounds = true
        
        btnRegister.layer.cornerRadius = 20
        btnRegister.clipsToBounds = true
        
        
    }

    override func didReceiveMemoryWarning() {
        
        
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

