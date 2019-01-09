import UIKit

extension CalculatorViewController {
    
    
    func multiply(numberOne: Double?, numberTwo: Double?){
        
        
        if number2 != nil && number2 != nil {
            equals()
        }
        
        if number1 == nil{
            
            number1 = Double(numberLabel.text!)
            number2 = nil
            
        }
            
        else if number1 != nil && number2 != nil{
            
            number2 = Double(numberLabel.text!)
            
            let result = number1! * number2!
            
            numberLabel.text = "\(result)"
        }
        
        number1 = Double(numberLabel.text!)
        number2 = nil
    }
    
    
    
    func divide(numberOne: Double?, numberTwo: Double?){
        if number2 != nil && number2 != nil {
            equals()
        }
        if number1 == nil{
            
            number1 = Double(numberLabel.text!)
            number2 = nil
            
        }
            
        else if number1 != nil && number2 != nil{
            
            number2 = Double(numberLabel.text!)
            
            let result = number1! / number2!
            
            numberLabel.text = "\(result)"
        }
        
        number1 = Double(numberLabel.text!)
        number2 = nil
    }
    
    
    
    func add(numberOne: Double?, numberTwo: Double?){
        
        if number2 != nil && number2 != nil {
            equals()
        }
        
        
        if number1 == nil{
            
            number1 = Double(numberLabel.text!)
            number2 = nil
            
        }
            
        else if number1 != nil && number2 != nil{
            
            number2 = Double(numberLabel.text!)
            
            let result = number1! + number2!
            
            numberLabel.text = "\(result)"
        }
        
        number1 = Double(numberLabel.text!)
        number2 = nil
    }
    
    
    
    func subtract(numberOne: Double?, numberTwo: Double?){
        if number2 != nil && number2 != nil {
            equals()
        }
        
        
        if number1 == nil{
            
            number1 = Double(numberLabel.text!)
            number2 = nil
            
        }
            
        else if number1 != nil && number2 != nil{
            
            number2 = Double(numberLabel.text!)
            
            let result = number1! - number2!
            
            numberLabel.text = "\(result)"
        }
        
        number1 = Double(numberLabel.text!)
        number2 = nil
    }
    
}

