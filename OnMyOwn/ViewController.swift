//
//  ViewController.swift
//  OnMyOwn
//
//  Created by Morales, Brittney on 10/10/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var firstButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func firstMethod(_ sender: UIButton)
    {
        if(firstButton.backgroundColor == .yellow)
        {
            firstButton.backgroundColor = .black
        }
        else
        {
            firstButton.backgroundColor = .yellow
        }
    }
    

    override func didReceiveMemoryWarning()
{
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

