//
//  CalculatorViewController.swift
//  Programmatic Constraints Calculator
//
//  Created by Greg Hughes on 1/8/19.
//  Copyright © 2019 Greg Hughes. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    let calcView: CalculatorView = CalculatorView()
    lazy var numberLabel = calcView.numberLabel
    lazy var textnum = String(numberLabel.text!)
    
    var colorPassword : [Int] = []
    var operation = true
    var op = ""
    
    //Will be used in every problem
    var number1 : Double? = nil
    var number2 : Double? = nil
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view = calcView
        setUpButtons()
    }
    
    
    func Addnumberfunc(number:String){
        
        if operation {
            
            textnum = ""
            operation = false
        }
        
        textnum = textnum + number
        numberLabel.text = textnum
        
        if number1 != nil {
            number2 = Double(textnum)
        }
    }
    
    
    @objc func clear() {
        
        number1 = nil
        number2 = nil
        numberLabel.text = ""
        operation = true
        colorPassword = []
        
    }
    //default colors
    @objc func clearToDefaultColors(press: UILongPressGestureRecognizer){
        
        if press.state == .began
        {
            
            calcView.defaultColors()
        }
    }
    
    
    @objc func makeNegative() {
        
        colorPassword.append(6)
        bounceAndChangeColors()
        
        var textnum = String(numberLabel.text!)
        
        textnum = "-" + textnum
        
        numberLabel.text = textnum
        
        if number2 == nil{
            number1 = Double(textnum)
        }
        else{
            number2 = Double(textnum)
        }
        operation = true
    }
    
    
    
    
    @objc func percentage() {
        
        colorPassword.append(5)
        var number1 = Double(numberLabel.text!)
        
        if number1 != nil {
            number1 = number1!/100.0
            
            numberLabel.text = String(number1!)
            
            operation = true
        }
        
    }
    
    
   
    
    //target functions
    func HoldDown(sender:UIButton)
    {
        sender.backgroundColor = UIColor.blue
    }
    
    func holdRelease(sender:UIButton)
    {
        sender.backgroundColor = UIColor.white
    }
    
    @objc func seven() {
        Addnumberfunc( number: "7")
        colorPassword = []
    }
    
    
    @objc func eight() {
        Addnumberfunc(number: "8")
        colorPassword = []
    }
    
    @objc func nine() {
        Addnumberfunc(number: "9")
        colorPassword = []
    }
    
    @objc func four() {
        Addnumberfunc(number: "4")
        colorPassword = []
    }
    
    
    @objc func five() {
        Addnumberfunc(number: "5")
        colorPassword = []
    }
    
    
    @objc func six() {
        
        Addnumberfunc(number: "6")
        colorPassword = []
        
    }
    
    @objc func one() {
        
        Addnumberfunc(number: "1")
        colorPassword = []
    }
    
    
    @objc func two() {
        
        Addnumberfunc(number: "2")
        colorPassword = []
    }
    
    
    @objc func three() {
        
        Addnumberfunc(number: "3")
        colorPassword = []
    }
    
    @objc func zero() {
        Addnumberfunc(number: "0")
        colorPassword = []
    }
    
    
    
    @objc func decimal() {
        Addnumberfunc(number: ".")
        colorPassword = []
    }
    
    @objc func div() {
        colorPassword.append(4)
        operation = true
        divide(numberOne: number1, numberTwo: number2)
        op = "/"
    }
    
    @objc func mul() {
        colorPassword.append(3)
        operation = true
        multiply(numberOne: number1, numberTwo: number2)
        op = "*"
    }
    
    @objc func minus() {
        colorPassword.append(2)
        operation = true
        subtract(numberOne: number1, numberTwo: number2)
        op = "-"
    }
    
    @objc func plus() {
        
        colorPassword.append(1)
        operation = true
        add(numberOne: number1, numberTwo: number2)
        op = "+"
        
    }
    
    @objc func equals() {
        colorPassword.append(0)
        var result:Double?
        
        guard let numberOneUnwrapped = number1, let numberTwoUnwrapped = number2 else { return }
        guard op != "" else { return }
        switch op {
        case "*":
            result = numberOneUnwrapped * numberTwoUnwrapped
        case "/":
            result = numberOneUnwrapped / numberTwoUnwrapped
            
        case "-":
            result = numberOneUnwrapped - numberTwoUnwrapped
            
        case "+":
            result = numberOneUnwrapped + numberTwoUnwrapped
            
        default:
            result = 0.0
            
        }
        
        
        numberLabel.text = String(result!)
        result = Double(numberLabel.text!)
        
        number1 = result
        number2 = nil
        operation = true
        op = ""
    }
}

extension CalculatorViewController{
    
    func setUpButtons(){
        //top row
        calcView.clearButton.addTarget(self, action: #selector(clear), for: .touchUpInside)
        calcView.percentageButton.addTarget(self, action: #selector(percentage), for: .touchUpInside)
        calcView.makeNegativeButton.addTarget(self, action: #selector(makeNegative), for: .touchUpInside)
        // operations
        calcView.multiplyButton.addTarget(self, action: #selector(mul), for: .touchUpInside)
        calcView.divideButton.addTarget(self, action: #selector(div), for: .touchUpInside)
        calcView.minusButton.addTarget(self, action: #selector(minus), for: .touchUpInside)
        calcView.addButton.addTarget(self, action: #selector(plus), for: .touchUpInside)
        calcView.equalsButton.addTarget(self, action: #selector(equals), for: .touchUpInside)
        // numbers
        calcView.oneButton.addTarget(self, action: #selector(one), for: .touchUpInside)
        calcView.twoButton.addTarget(self, action: #selector(two), for: .touchUpInside)
        calcView.threeButton.addTarget(self, action: #selector(three), for: .touchUpInside)
        calcView.fourButton.addTarget(self, action: #selector(four), for: .touchUpInside)
        calcView.fiveButton.addTarget(self, action: #selector(five), for: .touchUpInside)
        calcView.sixButton.addTarget(self, action: #selector(six), for: .touchUpInside)
        calcView.sevenButton.addTarget(self, action: #selector(seven), for: .touchUpInside)
        calcView.eightButton.addTarget(self, action: #selector(eight), for: .touchUpInside)
        calcView.nineButton.addTarget(self, action: #selector(nine), for: .touchUpInside)
        calcView.decimalButton.addTarget(self, action: #selector(decimal), for: .touchUpInside)
        
        
        // MARK: - Gesture Recognizer
        
        let longPressGestureRecognizer = UILongPressGestureRecognizer(target: self, action: #selector(clearToDefaultColors))
        longPressGestureRecognizer.minimumPressDuration = 2.0
        
        calcView.clearButton.addGestureRecognizer(longPressGestureRecognizer)
        
       
    }
    
    
    func bounceAndChangeColors(){
        if colorPassword == [0,1,2,3,4,5,6]{
            calcView.bounceAndChangeWhenPressed()
            colorPassword = []
        }
    }
}

