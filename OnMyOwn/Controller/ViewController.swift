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
    @IBOutlet weak var uniqueBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func firstMethod(_ sender: UIButton)
    {
        /*if(firstButton.backgroundColor == .yellow)
        {
            firstButton.backgroundColor = .black
        }
        else
        {
            firstButton.backgroundColor = .yellow
        }*/
        view.backgroundColor = createRandomColor()
        firstButton.setTitleColor(createRandomColor(), for: .normal)
        firstButton.backgroundColor = createRandomColor()
        
        view.backgroundColor = createRandomColor()
    }
    
    @IBAction func colorChangeBtn(_ sender: UIButton)
    {
        uniqueBtn.setTitleColor(createRandomColor(), for: .normal)
        view.backgroundColor = .white
        
        uniqueBtn.layer.borderWidth = 2
        uniqueBtn.layer.cornerRadius = 5
        uniqueBtn.layer.borderColor = UIColor.black.cgColor
        
    }
    
    private func createRandomColor()  ->  UIColor
    {
        let newColor : UIColor
        let redAmount = CGFloat (Double (arc4random_uniform(256))/255.00)
        let blueAmount = CGFloat (Double (arc4random_uniform(256))/255.00)
        let greenAmount = CGFloat (Double (arc4random_uniform(256))/255.00)
        newColor = UIColor(red: redAmount, green:greenAmount,blue:blueAmount, alpha:CGFloat(1.0))
        return newColor
    }

    override func didReceiveMemoryWarning()
{
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

