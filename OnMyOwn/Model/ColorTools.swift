//
//  ColorTools.swift
//  OnMyOwn
//
//  Created by Morales, Brittney on 10/12/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit

public class ColorTools
{
    public func createRandomColor()  ->  UIColor
    {
        let newColor : UIColor
        let redAmount = CGFloat (Double (arc4random_uniform(256))/255.00)
        let blueAmount = CGFloat (Double (arc4random_uniform(256))/255.00)
        let greenAmount = CGFloat (Double (arc4random_uniform(256))/255.00)
        newColor = UIColor(red: redAmount, green:greenAmount,blue:blueAmount, alpha:CGFloat(1.0))
        return newColor
    }
}
