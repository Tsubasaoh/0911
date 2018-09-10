//
//  ViewController.swift
//  0911 EXCHANGE
//
//  Created by Zorro on 2018/9/11.
//  Copyright © 2018年 YI-KUNG WANG. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //outlet拉好先
    @IBOutlet weak var priceTextField: UITextField!
    @IBOutlet weak var percentTextField: UITextField!
    @IBOutlet weak var handlingFeeField: UITextField!
    @IBOutlet weak var tipsLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
   
    @IBAction func calculate(_ sender: Any) {
        let priceText = priceTextField.text!//總金額
        let percentText = percentTextField.text!//稅額
        let handlingFee = handlingFeeField.text!//討人厭的手續費
        let price = Double(priceText)
        let percent = Double(percentText)
        let handling = Double(handlingFee)
        //預防耍笨...要記得輸入數字啊
        if priceTextField.text == "" || percentTextField.text == "" || handlingFeeField.text == ""{
            tipsLabel.text="囧"//忘記輸入任何一個欄位會得到一個囧
        }
        else{
            tipsLabel.text = String(Double(priceTextField.text!)! * Double(percentTextField.text!)! / 100)
        }
        if price != nil,percent != nil,handling != nil{
            let pay = price! * percent!/100 - handling!
            tipsLabel.text="\(pay)"//若三者皆不為空值即可顯示計算結果
            view.endEditing(true)//收收收～收鍵盤
            
        }
    }
}
