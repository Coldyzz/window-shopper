//
//  ViewController.swift
//  window-shopper
//
//  Created by Дима Холод on 24.05.2022.
//

import UIKit

class MainVC: UIViewController {
    @IBOutlet weak var wageTxt: CurrencyTxtField!
    @IBOutlet weak var priceTxt: CurrencyTxtField!
    @IBOutlet weak var resultLBL: UILabel!
    @IBOutlet weak var hoursLBL: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
            let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(UIColor.white, for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
       
        wageTxt.inputAccessoryView = calcBtn
        priceTxt.inputAccessoryView = calcBtn
        
        resultLBL.isHidden = true
        hoursLBL.isHidden = true
        
    }
    @objc func  calculate() {
        if let wageTxt = wageTxt.text,let priceTxt = priceTxt.text {
            if let wage = Double(wageTxt), let price = Double(priceTxt){
                view.endEditing(true)
                resultLBL.isHidden = false
                hoursLBL.isHidden = false
                resultLBL.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
        }
        }
    }

    @IBAction func clearCalculatorPressed(_ sender: Any) {
        resultLBL.isHidden = true
        hoursLBL.isHidden = true
        wageTxt.text = ""
        priceTxt.text = ""
    }
}


