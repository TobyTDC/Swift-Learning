//
//  ViewController.swift
//  FunFacts
//
//  Created by toby tang on 2017-10-05.
//  Copyright © 2017 Toby Tang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var funFactLabel: UILabel!
    
    @IBOutlet weak var funFactButton: UIButton!
    let factProvider = FactProvider()
    
    let colorProvider = BackgroundColorProvider()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        funFactLabel.text = "IOS APP"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showFact() {
        
        funFactLabel.text = factProvider.randomFact()
        let newColor = colorProvider.randomColor()
        view.backgroundColor = newColor
        funFactButton.tintColor = newColor

    }
    
    
}

