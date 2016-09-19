//
//  Konto.swift
//  AccessControlBsp
//
//  Created by Christian Bleske on 31.08.14.
//  Copyright (c) 2014 Christian Bleske. All rights reserved.
//

import Foundation

internal class a {
    
}

private class b {
    
}

//private func c () -> (a,b) {
    
//}

public class Konto {
    public var Kontonummer:String = "123456"
    private var Geheimnummer:String = "999999"
    
    internal func Ueberweisung() {
        
    }
}

class Person
{
    var Nachname:String
        {
        get { return self.Nachname }
        set (new_nachname)
        {
            self.Nachname = new_nachname
        }
    }
    
    var Vorname:String
        {
        get { return self.Vorname }
        set (new_vorname)
        {
            self.Vorname = new_vorname
        }
    }
    
    var Personalnummer:Int
        {
        get { return self.Personalnummer }
        set (new_personalnummer)
        {
            self.Personalnummer = new_personalnummer
        }
    }
    
    
}
