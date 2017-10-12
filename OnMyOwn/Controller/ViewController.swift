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
    @IBOutlet weak var simpleProgress: UIProgressView!
    @IBOutlet weak var simpleLabel: UILabel!
    
    var current: Int  = 0
    
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
    
    @IBAction func actionTriggered(_ sender: UIButton)
    {
        let i = current
        let max = 10
        
        if i <= max {
            let ratio = Float(i) / Float(max)
            simpleProgress.progress = Float(ratio)
            simpleLabel.text = "Processing\(i) of \(max)..."
            current+=1
        }
        if i == max
        {
            simpleLabel.text = "complete"
        }
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

