//
//  CalculatorView.swift
//  Programmatic Constraints Calculator
//
//  Created by Greg Hughes on 1/8/19.
//  Copyright © 2019 Greg Hughes. All rights reserved.
//

import UIKit

class CalculatorView: UIView {

    lazy var buttonArray = [ clearButton,percentageButton,makeNegativeButton,divideButton,multiplyButton,minusButton,addButton,equalsButton,oneButton,twoButton,threeButton,fourButton,fiveButton,sixButton,sevenButton,eightButton,nineButton,zeroButton,decimalButton]
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = .black
        createAllStackViews()
        constrainAllStackView()
       
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
   
     
    
    let numberLabel: UILabel = {
        let label = UILabel()
        label.text = ""
        label.font = UIFont.systemFont(ofSize: 55)
        label.textAlignment = .right
        label.backgroundColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        label.textColor = .white
        label.layer.shadowColor = #colorLiteral(red: 0.07562052459, green: 0.03973162919, blue: 0.9724859595, alpha: 1)
        label.layer.shadowOffset = CGSize.zero
        label.layer.shadowRadius = 10
        
        
        return label
    }()
    
    let clearButton: FlashButton = {
        let button = FlashButton()
        button.setTitle("c", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 50)
        button.setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.2605174184, green: 0.2605243921, blue: 0.260520637, alpha: 1)
        return button
    }()
    
    let makeNegativeButton: FlashButton = {
        let button = FlashButton()
        button.setTitle("+/-", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 50)
        button.setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.2605174184, green: 0.2605243921, blue: 0.260520637, alpha: 1)
        return button
    }()
    
    let percentageButton: FlashButton = {
        let button = FlashButton()
        button.setTitle("%", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 50)
        button.setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.2605174184, green: 0.2605243921, blue: 0.260520637, alpha: 1)
        return button
    }()
    
    let divideButton: FlashButton = {
        let button = FlashButton()
        button.setTitle("/", for: .normal)
        button.setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        return button
    }()
    
    let oneButton: FlashButton = {
        let button = FlashButton()
        button.setTitle("1", for: .normal)
        button.setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.01680417731, green: 0.1983509958, blue: 1, alpha: 1)
        return button
    }()
    
    let twoButton: FlashButton = {
        let button = FlashButton()
        button.setTitle("2", for: .normal)
        button.setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.01680417731, green: 0.1983509958, blue: 1, alpha: 1)
        return button
    }()
    
    let threeButton: FlashButton = {
        let button = FlashButton()
        button.setTitle("3", for: .normal)
        button.setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.01680417731, green: 0.1983509958, blue: 1, alpha: 1)
        return button
    }()
    
    let fourButton: FlashButton = {
        let button = FlashButton()
        button.setTitle("4", for: .normal)
        button.setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.01680417731, green: 0.1983509958, blue: 1, alpha: 1)
        return button
    }()
    
    let fiveButton: FlashButton = {
        let button = FlashButton()
        button.setTitle("5", for: .normal)
        button.setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.01680417731, green: 0.1983509958, blue: 1, alpha: 1)
        return button
    }()
    
    let sixButton: FlashButton = {
        let button = FlashButton()
        button.setTitle("6", for: .normal)
        button.setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.01680417731, green: 0.1983509958, blue: 1, alpha: 1)
        return button
    }()
    
    let multiplyButton: FlashButton = {
        let button = FlashButton()
        button.setTitle("X", for: .normal)
        button.setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        return button
    }()
    let sevenButton: FlashButton = {
        let button = FlashButton()
        button.setTitle("7", for: .normal)
        button.setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.01680417731, green: 0.1983509958, blue: 1, alpha: 1)
        return button
    }()
    
    
    let eightButton: FlashButton = {
        let button = FlashButton()
        button.setTitle("8", for: .normal)
        button.setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
        button.showsTouchWhenHighlighted = true
        button.backgroundColor = #colorLiteral(red: 0.01680417731, green: 0.1983509958, blue: 1, alpha: 1)
        return button
    }()
    
    let nineButton: FlashButton = {
        let button = FlashButton()
        button.setTitle("9", for: .normal)
        button.setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.01680417731, green: 0.1983509958, blue: 1, alpha: 1)
        return button
    }()
    let zeroButton: FlashButton = {
        let button = FlashButton()
        button.setTitle("0", for: .normal)
        button.setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.01680417731, green: 0.1983509958, blue: 1, alpha: 1)
        return button
    }()
    
    let minusButton: FlashButton = {
        let button = FlashButton()
        button.setTitle("-", for: .normal)
        button.setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        return button
    }()
    
    let addButton: FlashButton = {
        let button = FlashButton()
        button.setTitle("+", for: .normal)
        button.setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        return button
    }()
    
    
    let decimalButton: FlashButton = {
        let button = FlashButton()
        button.setTitle(".", for: .normal)
        button.setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.01680417731, green: 0.1983509958, blue: 1, alpha: 1)
        return button
    }()
    
    let equalsButton: FlashButton = {
        let button = FlashButton()
        button.setTitle("=", for: .normal)
        button.setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        return button
        
    }()
    
    
    
    // MARK: - StackViews
    var buttonStackView0: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.spacing = 10
        return stackView
    }()
    
    var buttonStackView1: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.spacing = 10
        return stackView
    }()
    
    var buttonStackView2: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.spacing = 10
        return stackView
    }()
    
    var buttonStackView3: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.spacing = 10
        return stackView
    }()
    
    var buttonStackView4: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.spacing = 10
        return stackView
    }()
    
    var decimalEqualStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.spacing = 10
        return stackView
    }()
    
    var allStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.spacing = 10
        return stackView
    }()
    
    
    func createAllStackViews(){
        
        
        //C +/- % /
        buttonStackView0.addArrangedSubview(clearButton)
        buttonStackView0.addArrangedSubview(makeNegativeButton)
        buttonStackView0.addArrangedSubview(percentageButton)
        buttonStackView0.addArrangedSubview(divideButton)
       
        
        // 7 8 9 +
        buttonStackView3.addArrangedSubview(sevenButton)
        buttonStackView3.addArrangedSubview(eightButton)
        buttonStackView3.addArrangedSubview(nineButton)
        buttonStackView3.addArrangedSubview(multiplyButton)
        
        //4 5 6 -
        buttonStackView2.addArrangedSubview(fourButton)
        buttonStackView2.addArrangedSubview(fiveButton)
        buttonStackView2.addArrangedSubview(sixButton)
        buttonStackView2.addArrangedSubview(minusButton)
        
        //1 2 3 X
        buttonStackView1.addArrangedSubview(oneButton)
        buttonStackView1.addArrangedSubview(twoButton)
        buttonStackView1.addArrangedSubview(threeButton)
        buttonStackView1.addArrangedSubview(addButton)
        
        //. +
        decimalEqualStackView.addArrangedSubview(decimalButton)
        decimalEqualStackView.addArrangedSubview(equalsButton)
        
        
        //All
        allStackView.addArrangedSubview(numberLabel)
        allStackView.addArrangedSubview(buttonStackView0)
        allStackView.addArrangedSubview(buttonStackView3)
        allStackView.addArrangedSubview(buttonStackView2)
        allStackView.addArrangedSubview(buttonStackView1)
        
        
        
        allStackView.addArrangedSubview(decimalEqualStackView)
        allStackView.addArrangedSubview(buttonStackView4)
        //0
        buttonStackView4.addArrangedSubview(zeroButton)
        buttonStackView4.addArrangedSubview(decimalEqualStackView)
        
        self.addSubview(allStackView)
    }
    
    func constrainAllStackView(){
        allStackView.anchor(top: self.safeAreaLayoutGuide.topAnchor, bottom: self.safeAreaLayoutGuide.bottomAnchor, left: self.leftAnchor, right: self.rightAnchor, paddingTop: 8, paddingBottom: -8, paddingLeft: 8, paddingRight: -8, width: nil, height: nil)
        
    }
    
    func defaultColors() {
        
        bounceAll()
        
        let grayArray = [clearButton,makeNegativeButton,percentageButton]
        
        for loop in grayArray {
            
            UIView.animate(withDuration: 3.0, delay: 0, options: [.allowUserInteraction], animations: {
                loop.backgroundColor = #colorLiteral(red: 0.2605174184, green: 0.2605243921, blue: 0.260520637, alpha: 1)
            })
            
        }
        let numberButtonArray = [decimalButton,zeroButton,nineButton,eightButton,sevenButton,sixButton,fiveButton,fourButton,threeButton,twoButton,oneButton]
        
        for loop in numberButtonArray {
            
        UIView.animate(withDuration: 3.0, delay: 0, options: [.allowUserInteraction], animations: {
            loop.backgroundColor = #colorLiteral(red: 0.01680417731, green: 0.1983509958, blue: 1, alpha: 1)
        })
        
        }
        
        let operatorArray = [divideButton,multiplyButton,minusButton,addButton,equalsButton]
        for loop in operatorArray {
            
            UIView.animate(withDuration: 3.0, delay: 0, options: [.allowUserInteraction], animations: {
                loop.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
            })
            
        }
        
    }
    
    func bounceAll(){
        buttonArray.forEach{$0.bounce()}
    }
    
    func bounceAndChangeWhenPressed(){
        
        buttonArray.forEach{ $0.bounceAndChangeWhenPressed() }
        
    }
}




