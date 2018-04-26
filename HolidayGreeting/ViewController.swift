//
//  ViewController.swift
//  HolidayGreeting
//
//  Created by Robert Berry on 11/30/17.
//  Copyright © 2017 Robert Berry. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: Properties
    
    @IBOutlet var backgroundView: UIView!
    
    @IBOutlet weak var holidayGreetingLabel: UILabel!
    
    @IBOutlet weak var holidayGreetingButtonCenterX: NSLayoutConstraint!
    
    @IBOutlet weak var holidayGreetingLabelTopConstraint: NSLayoutConstraint!
   
    // MARK: Action Methods
    
    @IBAction func holidayGreetingButtonTapped(_ sender: HolidayGreetingButton) {
        
        var greetings: [String] = ["Merry Christmas!", "Happy Easter!", "Happy Thanksgiving!", "Happy 4th of July!", "Happy New Year!", "Happy Halloween!", "Happy Valentine's Day!", "Happy St. Patrick's Day!"]
        
        func changeGreetingText() -> String {
            let greetingIndex = Int(arc4random_uniform(UInt32(greetings.count)))
            let greetingString = greetings[greetingIndex]
            
            return greetingString
        }
        
        self.holidayGreetingLabel.text = changeGreetingText()
        
        switch holidayGreetingLabel.text {
        case "Merry Christmas!"?:
            holidayGreetingLabel.textColor = .red
        case "Happy Easter!"?:
            holidayGreetingLabel.textColor = .magenta
        case "Happy Thanksgiving!"?:
            holidayGreetingLabel.textColor = .orange 
        case "Happy 4th of July!"?:
            holidayGreetingLabel.textColor = .red
        case "Happy New Year!"?:
            holidayGreetingLabel.textColor = .yellow
        case "Happy Halloween!"?:
            holidayGreetingLabel.textColor = .black
        case "Happy Valentine's Day!"?:
            holidayGreetingLabel.textColor = .white
        case "Happy St. Patrick's Day!"?:
            holidayGreetingLabel.textColor = .white
        default:
            holidayGreetingLabel.textColor = .green
        }
        
        switch holidayGreetingLabel.text {
        case "Merry Christmas!"?:
            backgroundView.backgroundColor = .green
        case "Happy Easter!"?:
            backgroundView.backgroundColor = .yellow
        case "Happy Thanksgiving!"?:
            backgroundView.backgroundColor = .brown
        case "Happy 4th of July!"?:
            backgroundView.backgroundColor = .blue
        case "Happy New Year!"?:
            backgroundView.backgroundColor = .black
        case "Happy Halloween!"?:
            backgroundView.backgroundColor = .orange
        case "Happy Valentine's Day!"?:
            backgroundView.backgroundColor = .red
        case "Happy St. Patrick's Day!"?:
            backgroundView.backgroundColor = .green
        default:
            backgroundView.backgroundColor = .magenta
        }
        
        // The holidayGreetingLabel will bounce up and down each time the HolidayGreetingButton is tapped.
        
        UIView.animateKeyframes(withDuration: 0.5, delay: 0, options: [.calculationModeCubic], animations: {
            
            UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.3, animations: {
                
                self.holidayGreetingLabelTopConstraint.constant = 90
                
                // Lays out the subviews immediately, if layout updates are pending.
                
                self.view.layoutIfNeeded()
                
            })
            
            UIView.addKeyframe(withRelativeStartTime: 0.3, relativeDuration: 0.4, animations: {
                
                self.holidayGreetingLabelTopConstraint.constant = 70
                
                // Lays out the subviews immediately, if layout updates are pending.
                
                self.view.layoutIfNeeded()
                
            })
            
            UIView.addKeyframe(withRelativeStartTime: 0.7, relativeDuration: 0.3, animations: {
                
                self.holidayGreetingLabelTopConstraint.constant = 50
                
                // Lays out the subviews immediately, if layout updates are pending.
                
                self.view.layoutIfNeeded()
                
            })
            
        }, completion: nil)
    }
    
    // MARK: View Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundView.backgroundColor = .magenta 
    }
    
    // Method makes the holiday greeting button slide in from the left.
    
    override func viewWillAppear(_ animated: Bool) {
        
        // The holiday greeting button will be on the left side of the screen upon app launch.
        
        holidayGreetingButtonCenterX.constant = -view.bounds.width
    }
    
    // Method makes the holiday greeting button center when the app has started.
    
    override func viewDidAppear(_ animated: Bool) {
        
        
        UIView.animate(withDuration: 1, delay: 1, usingSpringWithDamping: 0.5, initialSpringVelocity: 15, options: [], animations: {
            
            self.holidayGreetingButtonCenterX.constant += self.view.bounds.width
            
            // Lays out the subviews immediately, if layout updates are pending.
            
            self.view.layoutIfNeeded()
            
        }, completion: nil)
    }
}

