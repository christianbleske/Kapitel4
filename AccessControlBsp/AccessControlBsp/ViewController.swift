//
//  ViewController.swift
//  AccessControlBsp
//
//  Created by Christian Bleske on 31.08.14.
//  Copyright (c) 2014 Christian Bleske. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let konto = Konto()
        konto.Kontonummer = "098765"
        //konto.Ueberweisung("987654",betrag: 200.22)
        
        let person = Person()
        
        person.Nachname = "Bleske"
        person.Vorname = "Christian"
        person.Personalnummer = 1
        
        print(person.Nachname)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

