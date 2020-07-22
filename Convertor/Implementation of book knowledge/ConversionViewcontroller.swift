//
//  ViewController.swift
//  Implementation of book knowledge
//
//  Created by LocaJuli on 04/07/2020.
//  Copyright © 2020 LocaJuli. All rights reserved.
//

import UIKit

class ConversionViewcontroller: UIViewController {
   
        var globalView: UIView!
    /*override func viewDidLoad() {
        super.viewDidLoad()
        let firstFrame = CGRect(x: 160, y: 240, width: 100, height: 150)
        let firstView = UIView(frame: firstFrame)
        firstView.backgroundColor = UIColor.green
        view.addSubview(firstView)
        
        let secondFrame = CGRect(x: 20, y: 30, width: 50, height: 50)
        let secondView = UIView(frame: secondFrame)
        secondView.backgroundColor = UIColor.blue
        firstView.addSubview(secondView)
    }*/
    override func viewDidLoad() {
        super.viewDidLoad()
        let rectangle = CGRect(x: 100, y: 530, width: 1000, height: 700)
        let viewLayer = UIView(frame: rectangle)

        let gradient = CAGradientLayer()
        gradient.frame = viewLayer.bounds

        let cor1 = UIColor.red.cgColor
        let cor2 = UIColor.orange.cgColor
        let cor3 = UIColor.yellow.cgColor
        let cor4 = UIColor.green.cgColor
        let cor5 = UIColor.blue.cgColor
        let cor6 = UIColor.purple.cgColor
        let cor7 = UIColor.black.cgColor

        let arrayColors = [cor1, cor2, cor3, cor4, cor5, cor6, cor7]

        gradient.colors = arrayColors
        view.layer.insertSublayer(gradient, at: 0)
        //then the start point included
        //vista.layer.insertSublayer(gradient, at: 0)
        view.addSubview(viewLayer)
        
        print("ConversionViewContreller loaded its view")
        updateKilometersLabel()
    }
    
    let numberFormatter: NumberFormatter = {
        let nf = NumberFormatter()
        nf.numberStyle = .decimal
        nf.minimumFractionDigits = 1
        nf.maximumFractionDigits = 3
        return nf
    }()
    
    @IBOutlet var kilometersLabel: UILabel!
    
    @IBOutlet var textField: UITextField!
    
    @IBAction func dismissKeyboard(_ sender: UITapGestureRecognizer) {
        textField.resignFirstResponder()
    }
    @IBAction func milesFieldEditingChanged(_ textField: UITextField) {
        
      /*if let text = textField.text, !text.isEmpty {
            kilometersLabel.text = text
           } else {
           kilometersLabel.text = "???"
           */
        if let text = textField.text, let value = Double(text) {
                milesValue = Measurement(value: value, unit: .miles)
            } else {
                milesValue = nil
            }
      
   }
    /*var milesValue: Measurement<Dimension>?
    var kilometersValue: Measurement<Dimension>? {
        if let milesValue = milesValue {
            return milesValue.converted(to: .kilometers)
        } else {
            return nil
        }
    }*/
    var milesValue: Measurement<UnitLength>? {
        didSet {
            updateKilometersLabel()
        }
    }
    
    var kilometersValue: Measurement<UnitLength>? {
        if let milesValue = milesValue {
            return milesValue.converted (to: .kilometers)
        } else {
            return nil
        }
    }
    func updateKilometersLabel() {
        if let kilometersValue = kilometersValue {
            //kilometersLabel.text = "\(kilometersValue.value)"
            kilometersLabel.text = numberFormatter.string(from: NSNumber(value: kilometersValue.value))
        } else {
            kilometersLabel.text = "???"
        }
    }
    
}
