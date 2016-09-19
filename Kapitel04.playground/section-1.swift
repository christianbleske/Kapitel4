// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/////////////////////////////////////////////////////////////////////////////////////
//Hinweis:
//
//
//Manche Variablen führen im Namen im Gegensatz zum Buch einen oder auch mehrere _ .
//Da in einer Playground-Umgebung eine einma verwendete Variable global gültig ist,
//müssen hier unterschiedliche Bezeichner verwendet werden.
/////////////////////////////////////////////////////////////////////////////////////

//Strukturen aus objektorientierter Sicht (Teil 2)
/*struct Person {
    var nachname:String
    var vorname:String
    
    func NamenAusgeben() {
        print(nachname + " " + vorname)
    }
}

var myPerson = Person(nachname: "Bleske", vorname: "Christian")
myPerson.NamenAusgeben() */

//Was sind Klassen?

/*class Person
{
    var Nachname:String = ""
    var Vorname:String = ""
    var Personalnummer:Int = 0
}

var person = Person()

person.Nachname = "Bleske"
person.Vorname = "Christian"
person.Personalnummer = 1000

print(person.Personalnummer)
print(person.Nachname)
print(person.Vorname)

enum Krafstoff {
    case Benzin
    case Diesel
    case Gas
}

struct Motor {
    var Bezeichnung:String = "Otto"
    var Leistung:Int = 90
}

class Auto {
    var kftTyp:Krafstoff = Krafstoff.Benzin
    var motor = Motor()
    var Farbe:String = "Gelb"
}

var mein_Auto = Auto() */

//Werttypen (Value Types)

/* 

 var mein_Motor = Motor()
var noch_ein_Motor = mein_Motor
noch_ein_Motor.Bezeichnung = "Diesel"
noch_ein_Motor.Leistung = 60
print(mein_Motor.Bezeichnung)
print(noch_ein_Motor.Bezeichnung)

*/ 
 
//Referenztypen (Reference Types)

/*
 
class Motor {
    var Bezeichnung:String = "Otto"
    var Leistung:Int = 90
}

var mein_Motor = Motor()

var noch_ein_Motor = mein_Motor
noch_ein_Motor.Bezeichnung = "Diesel"
noch_ein_Motor.Leistung = 60

print(mein_Motor.Bezeichnung)
print(noch_ein_Motor.Bezeichnung)

//Vergleichen von Objekten mit Operatoren

if mein_Motor === noch_ein_Motor {
    print("Die Objekte referenzieren dieselbe Instanz")
}

*/
 
//Public, Private & wer noch?

//Siehe AccessControlBsp (Projekt)

//Eigenschaften (Properties)

/*
 
class Person
{
    private var nachname = ""
    private var vorname = ""
    private var personalnummer = 0
    
    var Nachname:String
        {
        get { return nachname }
        set
        {
            nachname = newValue
        }
    }
    
    var Vorname:String
        {
        get { return vorname }
        set
        {
            vorname = newValue
        }
    }
    
    var Personalnummer:Int
        {
        get { return personalnummer }
        set
        {
            personalnummer = newValue
        }
    }
}

*/
 
//Eigenschaften überwachen (Property Observers)
/*
class Person
{
    private var Nachname:String = "" {
        willSet(newLastName) {
            print("Neuer Name: "+newLastName+" wird geprüft...")
        }
        didSet {
            print("Der neue Name wurde gespeichert.")
        }
    }
}
*/

//Methoden

//Instanz-Methoden (Instance-Methods)

/*

class Kilometerzaehler {
    var zaehler:Int = 0
    
    func addKilometer() {
        zaehler = zaehler + 1
    }
    
    func zaehlerLoeschen() {
        zaehler = 0
    }
}

var kmz = Kilometerzaehler()
kmz.addKilometer()
kmz.addKilometer()
kmz.addKilometer()
print("Gefahrene Kilometer = "+String(kmz.zaehler))

class _Kilometerzaehler {
    var zaehler:Int = 0
    
    func erhoeheKilometerUm(value:Int) {
        zaehler += value
    }
}
var _kmz = _Kilometerzaehler()

_kmz.erhoeheKilometerUm(value:20)

class __Kilometerzaehler {
    var zaehler:Float = 0
    
    
   func erhoeheKilometerUm(kilometer:Float, undMeter:Float) {
        zaehler += kilometer
        zaehler += undMeter
   }
    
}
var __kmz = __Kilometerzaehler()

__kmz.erhoeheKilometerUm(kilometer:20.0, undMeter:0.5)

*/
 
//Klassenmethoden (Type-Methods)

/*

class Kilometerzaehler {
    
    class func berechneDifferenzPunktA(punktA:Int, punktB:Int) -> Int
    {
        var result = 0
        
        result = punktA - punktB
        
        return result
    }
}

var result = Kilometerzaehler.berechneDifferenzPunktA(punktA: 20,
    punktB: 10)

*/
 
 
//Initialisierer (Konstruktor)

/*

class Kilometerzaehler {
    var zaehler:Float
    
    init() {
        zaehler = 0.0
    }
}

var kmz = Kilometerzaehler()
print(kmz.zaehler)

*/
 
//Parameter & Initialisier

/*

class Kilometerzaehler {
    var zaehler:Float

    init(entfernungInKilometer kilometer: Float) {
        zaehler = kilometer * 1000
    }

    init(entfernungInMeter meter: Float) {
        zaehler = meter
    }
}

var kmz = Kilometerzaehler(entfernungInKilometer: 1)
print(kmz.zaehler)

class _Kilometerzaehler {
    var zaehler:Float
    
    init(zaehler: Float) {
        self.zaehler = zaehler
    }
}

var _kmz = _Kilometerzaehler(zaehler:1000)
print(kmz.zaehler)

class __Kilometerzaehler {
    var zaehler:Float
    init(_ zaehler: Float) {
        self.zaehler = zaehler
    }
}

var __kmz = __Kilometerzaehler(1000)
 
*/
 
//Deinitialisierer (Dekonstruktor)

/*

class Kilometerzaehler {
    var zaehler:Float

    init(zaehler: Float) {
        self.zaehler = zaehler
    }

    deinit {
        self.zaehler = 0
    }
}

*/
 
//Vererbung

//Erben (Ableitung) von Klassen

/*

class Vater {
    var Nachname:String = "Schmidt"
    var Vorname:String = "Peter"
}

class Kind:Vater {
    
}

var kind = Kind()
print(kind.Nachname)
kind.Vorname = "Carsten"
print(kind.Vorname)

class Basisklasse {
    var Nachname:String="Bleske"
    var Vorname: String="Christian"
}

class Neueklasse : Basisklasse {
    var Kuerzel:String="C.B."
}

*/
 
//Zugriff auf Elemente der vererbenden (Super-) Klasse

/*
 
class _Basisklasse {
    var Nachname:String="Bleske"
    var Vorname: String="Christian"
}

class _Neueklasse : _Basisklasse {
    var Kuerzel:String="C.B."
    
    func printName() {
        print(super.Nachname + ", " + super.Vorname)
    }
}

var nk = _Neueklasse()
nk.printName()

*/

//Initializer delegation

/*

class Kaefer {
    var name : String
    init(name: String) {
        self.name = name
    }
    
    convenience init() {
        self.init(name: "[Kein Name]")
    }
}

class SpezialKaefer:Kaefer {
    var gewichtInGramm: Int
    init(name: String, gewichtInGramm: Int) {
        self.gewichtInGramm = gewichtInGramm
        super.init(name: name)
    }
    
}

*/

//Überschreiben von Methoden

/*

class Kaefer {
    var name : String
    
    init(name: String) {
        self.name = name
    }
    
    convenience init() {
        self.init(name: "[Kein Name]")
    }
}

class SpezialKaefer:Kaefer {
    var gewichtInGramm: Int
    
    init(name: String, gewichtInGramm: Int) {
        self.gewichtInGramm = gewichtInGramm
        super.init(name: name)
    }
    
    override convenience init(name: String) {
        self.init(name: name, gewichtInGramm: 10)
    }
}
 
*/

//Überschreiben von Eigenschaften

/*

class Person
{
    private var personalnummer = 0
    
    var Personalnummer:Int {
    get { return personalnummer }
    }
}

var person = Person()
//person.Personalnummer = 123 //---> Fehler!!!

class Mitarbeiter:Person {

    override var Personalnummer:Int {
        get { return personalnummer }
        set {
            personalnummer = newValue
        }
    }
}

var mitarbeiter=Mitarbeiter()
mitarbeiter.Personalnummer = 123

class Angestellter:Mitarbeiter {
    override var Personalnummer:Int {
        get { return super.Personalnummer }
        set { super.Personalnummer = newValue }
    }
}
 
*/

//Das Überschreiben von Elementen verhindern

/*

class Basisklasse {
    final func foo() {
    }
}

class Neueklasse : Basisklasse {
    override func foo() {  //-> Fehler
    }
} 

*/

//Was sind Protokolle?

/*

protocol Auto
{
    func Motor()
}

class Kaefer : Auto
{
    func Motor(){
        print("Motor für Käfer")
    }
}

class Porsche : Auto
{
    func Motor(){
        print("Motor für Porsche")
    }
}

*/
 
//Ableitung von Protokollen

/*

protocol Auto
{
    init(farbe:String)
    func Motor()
}

class Kaefer : Auto
{
    var farbe:String
    
    required init(farbe:String) {
        self.farbe = farbe
    }
    
    func Motor() {
        print("Motor für Käfer")
    }
}

*/
 
//Subscripts

/*

class Zahlen {
    var zahlenreihe = [10,20,30,40,50]
    
    subscript(index: Int) -> Int {
        get {
            return zahlenreihe[index]
        }
        set(newValue) {
            zahlenreihe[index] = newValue
        }
    }
}

var zahlen = Zahlen()
print(zahlen[1])

zahlen[1] = 40

print(zahlen[0])
print(zahlen[1])
print(zahlen[2])
print(zahlen[3])
print(zahlen[4])

*/

//Verschachtelte Typen (Nested Types)

/*

class Auto {
    var karosserie: Karosserie
    var farbe:Farbe
    
    enum Karosserie {
        case Kompaktwagen, Kombi, Coupe, Cabrio
    }
    
    enum Farbe {
        case blau, gruen, gelb, rot
    }
    
    init(karosserie: Karosserie, farbe: Farbe) {
        self.karosserie = karosserie
        self.farbe = farbe
    }
}

var auto = Auto(karosserie: Auto.Karosserie.Kombi, farbe: Auto.Farbe.blau)

 */
 
//Erweiterungen (Extensions)

/*
 
class Auto {
    var karosserie: Karosserie
    var farbe:Farbe
    
    enum Karosserie {
        case Kompaktwagen, Kombi, Coupe, Cabrio
    }
    
    enum Farbe {
        case blau, gruen, gelb, rot
    }
    
    init(karosserie: Karosserie, farbe: Farbe) {
        self.karosserie = karosserie
        self.farbe = farbe
    }
}

extension Auto {
    func CalcReichweite(kilometer:Double, liter:Double) -> Double {
        var result:Double=0.0
        result = kilometer / liter
        return result
    }
}

var auto = Auto(karosserie: Auto.Karosserie.Coupe, farbe: Auto.Farbe.blau)
print(auto.CalcReichweite(kilometer: 500, liter: 50))

extension Int {
    func foo () {
        print("Methode foo")
    }
}

var myInt : Int = 0
myInt.foo()

*/
 
//Optional Chaining

/*

class Motor {
    var zylinder: Zylinder?
    init () {
        zylinder = Zylinder()
    }
}

class Zylinder {
    var Anzahl = 4
}

let motor = Motor()

if let anzahl = motor.zylinder?.Anzahl {
    print("Der Motor hat \(anzahl) Zylinder.")
} else {
    print("Die Abfrage der Zylinder ist nicht möglich!")
}

*/

/*
 
class _Motor {
    var zylinder: _Zylinder?
    init () {
        zylinder = _Zylinder() //Für Alternative auskommentieren...
    }
}

class _Zylinder {
    private var Anzahl = 4

    func AnzahlZylinder() {
        print("Der Motor hat \(self.Anzahl) Zylinder.")

    }
}

let _motor = _Motor()

if _motor.zylinder?.AnzahlZylinder() == nil {
    print("Die Abfrage der Zylinder ist nicht möglich!")
}
 
*/

//Typumwandlung (is & as) und (Any & AnyObject)

/*

class Person {
    var nachname:String
    var vorname:String

    init(nachname:String, vorname:String) {
        self.nachname = nachname
        self.vorname = vorname
    }
}

class Mitarbeiter : Person {
}

class Angestellte : Mitarbeiter {
}

class Arbeiter : Mitarbeiter {
}

var array = [
    Angestellte(nachname: "Müller", vorname: "Ralf"),
    Arbeiter(nachname: "Klein", vorname: "Hans"),
    Arbeiter(nachname: "Burgic", vorname: "Refic"),
    Arbeiter(nachname: "Reinhardt", vorname: "Kurt"),
    Angestellte(nachname: "Meier", vorname: "Ute")
]

var angestellteZaehler = 0
var arbeiterZaehler = 0

for element in array {
    if element is Arbeiter {
        arbeiterZaehler += 1
    }
    if element is Angestellte {
        angestellteZaehler += 1
    }
}

*/

//Downcasting

/*

class Person {
    var nachname:String
    var vorname:String
    
    init(nachname:String, vorname:String) {
        self.nachname = nachname
        self.vorname = vorname
    }
}

class Mitarbeiter : Person {
    var personalnummer = 1234
}

class Angestellte : Mitarbeiter {
}

class Arbeiter : Mitarbeiter {
}

var array = [
    Angestellte(nachname: "Müller", vorname: "Ralf"),
    Arbeiter(nachname: "Klein", vorname: "Hans"),
    Arbeiter(nachname: "Burgic", vorname: "Refic"),
    Arbeiter(nachname: "Reinhardt", vorname: "Kurt"),
    Angestellte(nachname: "Meier", vorname: "Ute")
]


for element in array {
    let mitarbeiter = element as Mitarbeiter
    print(mitarbeiter.personalnummer)
}

for element in array {
    if let arbeiter = element as? Arbeiter {
        print(arbeiter.personalnummer)
    }
    if let angestellte = element as? Angestellte {
        print(angestellte.personalnummer)
    }
}

let objekte: [AnyObject] = [
    Angestellte(nachname: "Müller", vorname: "Ralf"),
    Arbeiter(nachname: "Klein", vorname: "Hans"),
    Arbeiter(nachname: "Burgic", vorname: "Refic"),
    Arbeiter(nachname: "Reinhardt", vorname: "Kurt"),
    Angestellte(nachname: "Meier", vorname: "Ute")
]

var allesfresser = [Any]()
allesfresser.append(1234567)
allesfresser.append("Hallo Welt")
allesfresser.append(3.14)
allesfresser.append(Angestellte(nachname: "Müller", vorname: "Ralf"))
allesfresser.append(Arbeiter(nachname: "Reinhardt", vorname: "Kurt"))
allesfresser.append(Person(nachname: "Meyer", vorname: "Peter"))

for element in allesfresser {
    switch element {
    case let einInt as Int:
        print("Das ist ein Integer: \(einInt)")
    case let einString as String:
        print("Das ist ein String: \"\(einString)\"")
    case let einDouble as Double:
        print("Das ist ein Double: \(einDouble)")
    case let einAngestellter as Angestellte:
        print(einAngestellter.nachname + ", " +
            einAngestellter.vorname)
    case let einArbeiter as Arbeiter:
        print(einArbeiter.nachname + ", " + einArbeiter.vorname)
    default:
        print("Nicht gefunden!")
    }
}

*/

//Generics
/*


class Person {
    var nachname:String
    var vorname:String
    
    init(nachname:String, vorname:String) {
        self.nachname = nachname
        self.vorname = vorname
    }
}

class Mitarbeiter : Person {
    var personalnummer = 1234
}

class Angestellte : Mitarbeiter {
}

class Arbeiter : Mitarbeiter {
}

*/
 
/*
 
class Pool {
    var pool = [Arbeiter]()

    func addToPool(arbeiter: Arbeiter) {
        pool.append(arbeiter)
    }
}

var p = Pool()

var a = Arbeiter(nachname: "Meier", vorname: "Peter")

p.addToPool(arbeiter: a)

*/

/*

class Pool<T> {
    var pool = [T]()

    func addToPool(person: T) {
        pool.append(person)
    }
}

var pool = Pool<Arbeiter>()

var a = Arbeiter(nachname: "Meier", vorname: "Peter")

pool.addToPool(person: a)

*/

//Speicherverwaltung (ARC)
//Hinweis: In Xcode 6.0.1 gibt es einen Bug, welcher den Aufruf von deinit im Playground verhindert. Workaround Projekt in Xcode anlegen und dort testen...

/*

class Person {
    var nachname:String
    var vorname:String

    init(nachname:String, vorname:String) {
        self.nachname = nachname
        self.vorname = vorname
        print("Objekt \(nachname) \(vorname) wurde initialisiert!")
    }

    deinit {
        print("Objekt \(nachname)  \(vorname) wurde deinitialisiert!")
    }
}

var referenz1:Person?
var referenz2:Person?
var referenz3:Person?

referenz1 = Person(nachname: "Bleske", vorname: "Christian")

referenz2 = referenz1
referenz3 = referenz2

referenz1 = nil
referenz2 = nil
referenz3 = nil

class Auto {
    let bezeichnung: String

    var motor:Motor?

    init(bezeichnung: String) {
        self.bezeichnung = bezeichnung
    }

    deinit {
        print("ARC hat zugeschlagen \(bezeichnung) ist weg...")
    }
}

class Motor {
    let leistung:Int

    var auto:Auto?

    init(leistung:Int) {
        self.leistung = leistung
    }

    deinit {
        print("ARC hat zugeschlagen Motor mit \(leistung) ist weg...")
    }
}

var m_auto:Auto?
var m_motor:Motor?

m_auto = Auto(bezeichnung:"SupiDupi")
m_motor = Motor(leistung:100)

m_auto!.motor = m_motor
m_motor!.auto = m_auto

m_motor = nil
m_auto = nil

*/

//Weak Reference

/*

class Auto {
    let bezeichnung: String

    var motor:Motor?

    init(bezeichnung: String) {
        self.bezeichnung = bezeichnung
    }

    deinit {
        print("ARC hat zugeschlagen \(bezeichnung) ist weg...")
    }
}

class Motor {
    let leistung:Int

    weak var auto:Auto?

    init(leistung:Int) {
        self.leistung = leistung
    }

    deinit {
        print("ARC hat zugeschlagen Motor mit \(leistung) ist weg...")
    }
}

*/
 
//Unowned Reference

/*

class Auto {
    let bezeichnung: String

    var klima:Klimaanalge?

    init(bezeichnung: String) {
        self.bezeichnung = bezeichnung
    }

    deinit {
        print("ARC hat zugeschlagen \(bezeichnung) ist weg...")
    }
}

class Klimaanalge {
    let modell: String

    unowned let auto:Auto

    init(modell:String, auto:Auto) {
        self.modell = modell
        self.auto = auto
    }

    deinit {
        print("ARC hat zugeschlagen \(modell) ist weg...")
    }
}

var auto:Auto?
auto = Auto(bezeichnung: "Hot car")
var klima = Klimaanalge(modell: "Extra cold", auto: auto!)

auto = nil

*/
