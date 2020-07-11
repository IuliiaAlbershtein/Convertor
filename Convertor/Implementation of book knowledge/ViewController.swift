//
//  ViewController.swift
//  Implementation of book knowledge
//
//  Created by LocaJuli on 04/07/2020.
//  Copyright © 2020 LocaJuli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
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
        let rect = CGRect(x: 100, y: 530, width: 1000, height: 700)

        let vista = UIView(frame: rect)

        let gradient = CAGradientLayer()
        gradient.frame = vista.bounds

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
        view.addSubview(vista)
    }
}

