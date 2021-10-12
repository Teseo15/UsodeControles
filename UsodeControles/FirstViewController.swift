//
//  FirstViewController.swift
//  UsodeControles
//
//  Created by mbtec22 on 10/2/21.
//  Copyright © 2021 Anthony. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    //Entrada de texto cajas
    @IBOutlet weak var txtRpta: UITextField!
    @IBOutlet weak var txtNumero2: UITextField!
    @IBOutlet weak var txtNumero1: UITextField!
    
    //variables
    var nro1:Double = 0
    var nro2:Double = 0
    var rpta:Double = 0
    
    
    //Acciones de botones
    @IBAction func btnSumar(_ sender: Any) {
        if Double(txtNumero1.text!) != nil && Double(txtNumero2.text!) != nil {
            nro1 = Double(txtNumero1.text!)!
            nro2 = Double(txtNumero2.text!)!
            rpta = nro1 + nro2
            txtRpta.text = String(rpta)
        }else{
            mostrarAlerta(titulo: "Error", mensaje: "Ingrese valores numéricos")
            print("Error al realizar operación")
        }
    }
    
    @IBAction func btnRestar(_ sender: Any) {
        if Double(txtNumero1.text!) != nil && Double(txtNumero2.text!) != nil {
            nro1 = Double(txtNumero1.text!)!
            nro2 = Double(txtNumero2.text!)!
            rpta = nro1 - nro2
            txtRpta.text = String(rpta)
        }else{
            mostrarAlerta(titulo: "Error", mensaje: "Ingrese valores numéricos")
            print("Error al realizar operación")
        }
    }
    
    @IBAction func btnDividir(_ sender: Any) {
        if Double(txtNumero1.text!) != nil && Double(txtNumero2.text!) != nil {
            nro1 = Double(txtNumero1.text!)!
            nro2 = Double(txtNumero2.text!)!
            rpta = nro1 / nro2
            txtRpta.text = String(rpta)
        }else{
            mostrarAlerta(titulo: "Error", mensaje: "Ingrese valores numéricos")
            print("Error al realizar operación")
        }
    }
    
    @IBAction func btnMultiplicar(_ sender: Any) {
        if Double(txtNumero1.text!) != nil && Double(txtNumero2.text!) != nil {
            nro1 = Double(txtNumero1.text!)!
            nro2 = Double(txtNumero2.text!)!
            rpta = nro1 * nro2
            txtRpta.text = String(rpta)
        }else{
            mostrarAlerta(titulo: "Error", mensaje: "Ingrese valores numéricos")
            print("Error al realizar operación")
        }
    }
    
    @IBAction func btnDelete(_ sender: Any) {
        self.txtNumero1.text = ""
        self.txtNumero2.text = ""
        self.txtRpta.text = ""
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        let tap:UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ocultarTeclado))
        view.addGestureRecognizer(tap)
    }
    
    //Función para resetear los valores de las cajas de texto
    func Limpiar(){
        self.txtNumero1.text = "0"
        self.txtNumero2.text = "0"
        self.txtRpta.text = "0"
    }
    
    @objc func ocultarTeclado(){
        view.endEditing(true)
    }
    
    
    //Función para mostrar una alerta
    func mostrarAlerta(titulo: String, mensaje: String) {
        let alerta = UIAlertController(title: titulo, message: mensaje, preferredStyle: .alert)
        let limpiar = UIAlertAction(title: "Limpiar", style: .default, handler: {(action) in self.Limpiar() })
        let cancelar = UIAlertAction(title: "Cancelar", style: .cancel, handler: {(action) in })
        alerta.addAction(limpiar)
        alerta.addAction(cancelar)
        present(alerta, animated: true, completion: nil)
    }
    
    
    
    


}

