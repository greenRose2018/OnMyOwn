//
//  SecondViewController.swift
//  OnMyOwn
//
//  Created by Morales, Brittney on 10/12/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit

public class SecondViewController: UIViewController
{
    lazy var colorTool :ColorTools = ColorTools()
    public override func viewDidLoad()
    {
        super.viewDidLoad()
        view.backgroundColor = colorTool.createRandomColor()
    }
}
