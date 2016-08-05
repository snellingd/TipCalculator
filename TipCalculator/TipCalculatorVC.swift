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
    @IBOutlet weak var billAmountTF: UITextField!
    @IBOutlet weak var tipPercentLbl: UILabel!
    @IBOutlet weak var tipPercentSlider: UISlider!
    @IBOutlet weak var tipAmountLbl: UILabel!
    @IBOutlet weak var totalAmountLbl: UILabel!
    @IBOutlet weak var splitPeopleLbl: UILabel!
    @IBOutlet weak var splitSlider: UISlider!
    @IBOutlet weak var splitAmountLbl: UILabel!
    
    // MARK: - @Properties
    var tipCalc = TipCalculate(billAmount: 0.0, tipPercent: 0.0, splitPeople: 0, totalForSplit: 0.0)
    var getNewTotal = 0.0
    
    // MARK: - Initialize Views
    override func viewDidLoad() {
        super.viewDidLoad()
        tipPercentValue()
        splitPeopleValue()
    
    }

    // MARK: - @IBActions
    @IBAction func billAmountChanges(_ sender: AnyObject) {
        calculateTip()
    }
    
    @IBAction func tipPercentChanges(_ sender: AnyObject) {
        tipPercentValue()
        calculateTip()
    }
    
    @IBAction func splitPeopleChanges(_ sender: AnyObject) {
        splittingTheBill()
        splitPeopleValue()
    }
    
    
    //MARK: - Functions
    func calculateTip() {
        tipCalc.tipPercent = Double(tipPercentSlider.value)
        tipCalc.billAmount = ((billAmountTF.text)! as NSString).doubleValue
        tipCalc.calculateTip()
        splittingTheBill ()
        updateUI()
    }
    
    func updateUI() {
        tipAmountLbl.text = String(format:"$%0.2f", tipCalc.tipAmount)
        totalAmountLbl.text = String(format:"$%0.2f", tipCalc.totalAmount)
        splitAmountLbl.text = String(format:"$%0.2f", tipCalc.splitAmount)
    }
    
    func tipPercentValue() {
        tipPercentLbl.text = "Tip \(Int(tipPercentSlider.value * 100))%"
    }
    
    func splitPeopleValue() {
        splitPeopleLbl.text = "Split \(Int(splitSlider.value))"
    }
    
    func splittingTheBill () {
        
        
    }
    
}

