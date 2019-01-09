//
//  FlashButton.swift
//  Programmatic Constraints Calculator
//
//  Created by Greg Hughes on 1/9/19.
//  Copyright © 2019 Greg Hughes. All rights reserved.
//

import UIKit

class FlashButton: UIButton  {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
        round()
        fontSize()
        bounceOpening()
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.addTarget(self, action: #selector(flashRandom), for: .touchDown)
    }
    
    func commonInit(){
        self.showsTouchWhenHighlighted = true
        self.addTarget(self, action: #selector(flashRandom), for: .touchDown)
        self.addTarget(self, action: #selector(bounceWhenPressed), for: .touchDown)
        
        
    }
    
    @objc func flashRandom(){
        let color = self.backgroundColor?.copy() as! UIColor
        
        
        UIView.animate(withDuration: 0.75, delay: 0, options: .allowUserInteraction, animations: {
            self.backgroundColor = UIColor.random()
            
        }) { (success) in
            UIView.animate(withDuration: 0.75, delay: 0, options: [.allowUserInteraction], animations: {
                self.backgroundColor = color
            }, completion: nil)
        }
        
        
    }
    
    func round(){
        self.layer.cornerRadius =  20
        
    }
    
    func fontSize(){
        self.titleLabel?.font = .systemFont(ofSize: 35)
    }
    
    @objc func bounceOpening(){
        
        var array : CGFloat  {
            let range = CGFloat.random(in: -3.5...2.1)
            return range
        }
        
        self.transform = CGAffineTransform(scaleX: array, y: array)
        
        UIView.animate(withDuration: 2.0, delay: 0.1, usingSpringWithDamping: 1, initialSpringVelocity: 2.0, options: [.allowUserInteraction,.allowAnimatedContent], animations: {
            self.transform = .identity
        }, completion: nil)
    }
    
    
    func bounce(){
        let array : CGFloat = CGFloat.random(in: -10.1...10.1)
        self.transform = CGAffineTransform(scaleX: array, y: array)
        
        UIView.animate(withDuration: 2.0, delay: 0.1, usingSpringWithDamping: 2.0, initialSpringVelocity: 2.0, options: [.allowUserInteraction,.allowAnimatedContent], animations: {
            self.transform = .identity
            
        }, completion: nil)
    }
    
    
    @objc func bounceWhenPressed(){
        var array : CGFloat  {
            let range = CGFloat.random(in: -2.5...2.1)
            return range
        }
        print(array)
        self.transform = CGAffineTransform(scaleX: array, y: array)
        
        UIView.animate(withDuration: 0.5, delay: 0.1, usingSpringWithDamping: 0.2, initialSpringVelocity: 2.0, options: [.allowUserInteraction,.transitionCrossDissolve,], animations: {
            self.transform = .identity
        }, completion: nil)
    }
    
    
    @objc func bounceAndChangeWhenPressed(){
        
        
        let array : CGFloat = CGFloat.random(in: -5.1...5.1)
        self.transform = CGAffineTransform(scaleX: array, y: array)
        
        UIView.animate(withDuration: 2.0, delay: 0.1, usingSpringWithDamping: 2.0, initialSpringVelocity: 2.0, options: [.allowUserInteraction,.allowAnimatedContent], animations: {
            self.transform = .identity
            
        }, completion: nil)
        
        UIView.animate(withDuration: 3.0, delay: 0, options: .allowUserInteraction, animations: {
            self.backgroundColor = UIColor.random()
            
        }) { (success) in
            
        }
    }
    
}



