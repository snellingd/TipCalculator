//
//  ViewController.swift
//  TipCalculator
//
//  Created by Duane Snelling on 2016-08-05.
//  Copyright © 2016 Duane Snelling. All rights reserved.
//

import UIKit

class TipCalculatorVC: UIViewController {

    // MARK: - @IBOutlet
    
    @IBOutlet weak var tipCalculateTileView: UIView!
    @IBOutlet weak var tipCalculateTileLbl: UILabel!
    @IBOutlet weak var billAmountLbl: UITextField!
    @IBOutlet weak var tipPercentLbl: UILabel!
    @IBOutlet weak var tipPercentSlider: UISlider!
    @IBOutlet weak var tipAmountLbl: UILabel!
    @IBOutlet weak var totalAmountLbl: UILabel!
    @IBOutlet weak var splitPeopleLbl: UILabel!
    @IBOutlet weak var splitSlider: UISlider!
    @IBOutlet weak var splitAmountLbl: UILabel!
    
    // MARK: - @Properties
    var tipCalculate = TipCalculate(billAmount: 0.0, tipPercent: 0.0, splitPeople: 0)
    
    // MARK: - Initialize Views
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
    }

    // MARK: - @IBActions
    
    //MARK: - Functions
}

