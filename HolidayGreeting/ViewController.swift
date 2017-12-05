//
//  ViewController.swift
//  HolidayGreeting
//
//  Created by Robert Berry on 11/30/17.
//  Copyright © 2017 Robert Berry. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var backgroundView: UIView!
    
    @IBOutlet weak var holidayGreetingLabel: UILabel!
    
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
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundView.backgroundColor = .magenta 
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

