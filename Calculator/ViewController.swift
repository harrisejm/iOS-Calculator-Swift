//
//  ViewController.swift
//  Calculator
//
//  Created by Eddie Harris on 9/7/19.
//  Copyright © 2019 Eddie Harris. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        display.text = "0.0"
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var display: UILabel!
    
    var newCalc = Calc()
    
    var calcArr : [Int] = []
    var calcType : String = ""
    var numb1 : Float = 0
    var numb2 : Float = 0
    var test : Bool = false
    
    @IBAction func equals(_ sender: UIButton) {
        if calcType != "" {
            display.text = "\(newCalc.compute(numb1,numb2)[calcType]!)"
            numb1 = newCalc.compute(numb1,numb2)[calcType]!
            numb2 = 0
            calcArr = []
        }
    }

    @IBAction func clear(_ sender: UIButton) {
        calcType = ""
        calcArr = []
        numb1 = 0
        numb2 = 0
        display.text = "0.0"
    }
    
    func computeAndDisplay(){
        if calcType != "" && numb1 != 0 && numb2 != 0 {
            numb1 = newCalc.compute(numb1,numb2)[calcType]!
            numb2 = 0
        }

        calcArr = []
        display.text = String(numb1)
    }
    
    @IBAction func plus(_ sender: UIButton) {
        computeAndDisplay()
        calcType = "plus"
    }
    @IBAction func minus(_ sender: UIButton) {
        computeAndDisplay()
        calcType = "minus"
    }
    
    @IBAction func times(_ sender: UIButton) {
        computeAndDisplay()
        calcType = "times"
    }
    
    @IBAction func divided(_ sender: UIButton) {
        computeAndDisplay()
        calcType = "divided"
    }
    
    func inputNumbs(_ enterNumb: Float) {
        if calcType == "" {
            numb1 = enterNumb
        } else {
            numb2 = enterNumb
        }
    }
    
    func enterNumber(){
        display.text = newCalc.displayNumb(calcArr)
        inputNumbs((newCalc.displayNumb(calcArr) as NSString).floatValue)
    }
    
    @IBAction func zero(_ sender: UIButton) {
        calcArr.append(0)
        enterNumber()
    }
    
    @IBAction func one(_ sender: UIButton) {
        calcArr.append(1)
        enterNumber()
    }
    
    @IBAction func two(_ sender: UIButton) {
        calcArr.append(2)
        enterNumber()
    }
    
    @IBAction func three(_ sender: UIButton) {
        calcArr.append(3)
        enterNumber()
    }
    
    @IBAction func four(_ sender: UIButton) {
        calcArr.append(4)
        enterNumber()
    }
    
    @IBAction func five(_ sender: UIButton) {
        calcArr.append(5)
        enterNumber()
    }
    
    @IBAction func six(_ sender: UIButton) {
        calcArr.append(6)
        enterNumber()
    }
    
    @IBAction func seven(_ sender: UIButton) {
        calcArr.append(7)
        enterNumber()
    }
    
    @IBAction func eight(_ sender: UIButton) {
        calcArr.append(8)
        enterNumber()
    }
    @IBAction func nine(_ sender: UIButton) {
        calcArr.append(9)
        enterNumber()
    }
    
}
