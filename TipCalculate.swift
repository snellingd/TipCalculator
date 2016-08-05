//
//  TipCalculate.swift
//  TipCalculator
//
//  Created by Duane Snelling on 2016-08-05.
//  Copyright © 2016 Duane Snelling. All rights reserved.
//

import Foundation

class TipCalculate {
    
    private var _billAmount = 0.0
    private var _tipPercent = 0.0
    private var _tipAmount = 0.0
    private var _totalAmount = 0.0
    private var _splitPeople = 0
    private var _splitAmount = 0.0
    
    var billAmount: Double {
        get {
            return _billAmount
        } set {
            _billAmount = newValue
        }
    }
    
    var tipPercent: Double {
        get {
            return _tipPercent
        } set {
            _tipPercent = newValue
        }
    }
    
    var tipAmount: Double {
        return _tipAmount
    }
    
    var totalAmount: Double {
        return _totalAmount
    }
    
    var splitPeople: Int {
        get {
            return _splitPeople
        } set {
            _splitPeople = newValue
        }
    }
    
    var splitAmount: Double {
        return _splitAmount
    }
    
    init(billAmount: Double, tipPercent:Double, splitPeople:Int) {
        self._billAmount = billAmount
        self._tipPercent = tipPercent
        self._splitPeople = splitPeople
    }
    
    func calculateTip() {
        _tipAmount = billAmount * tipPercent
        _totalAmount = tipAmount + billAmount
    }
    
    func splitupAmount() {
        _splitAmount = totalAmount / Double(splitPeople)
    }
}
