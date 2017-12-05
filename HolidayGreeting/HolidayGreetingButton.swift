//
//  HolidayGreeting.swift
//  HolidayGreeting
//
//  Created by Robert Berry on 11/30/17.
//  Copyright © 2017 Robert Berry. All rights reserved.
//

import UIKit

@IBDesignable
class HolidayGreetingButton: UIControl {
    
    // Properties
    
   // UILabel
    
    private lazy var holidayLabel : UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 24.0, weight: UIFont.Weight.bold)
    return label
    }()
    
    // Property sets label text.
    
    @IBInspectable
    var text: String? {
        get {
            return holidayLabel.text
        }
        set(newText) {
            holidayLabel.text = newText
        }
    }
    
    // Property sets label color.
    
    @IBInspectable
    var textColor: UIColor? {
        get {
            return holidayLabel.textColor
        }
        set(newTextColor) {
            holidayLabel.textColor = newTextColor
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initialization()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initialization()
    }
    
    private func initialization() {
        translatesAutoresizingMaskIntoConstraints = false
        addSubview(holidayLabel)
        
        // Centers UIControl in layout.
        
        NSLayoutConstraint.activate(
            [
               holidayLabel.centerYAnchor.constraint(equalTo: layoutMarginsGuide.centerYAnchor),
               holidayLabel.centerXAnchor.constraint(equalTo: layoutMarginsGuide.centerXAnchor)
            ]
        )
        
        addTapGestureRecognizer()
    }
}

extension HolidayGreetingButton {
    
    // Method that adds tap gesture recognizer to HolidayGreetingButton UIControl.
   
    fileprivate func addTapGestureRecognizer() {
        let tapGestureRecogniser = UITapGestureRecognizer(target: self, action: #selector(handleHolidayGreetingButtonTapped(sender:)))
        addGestureRecognizer(tapGestureRecogniser)
    }
    
    @objc func handleHolidayGreetingButtonTapped(sender: UITapGestureRecognizer) {
        sendActions(for: .touchUpInside)
    }
}
