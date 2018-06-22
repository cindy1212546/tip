//
//  TipController.swift
//  tip
//
//  Created by User07 on 2018/5/16.
//  Copyright © 2018年 User07. All rights reserved.
//

import UIKit

class TipController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBOutlet weak var price: UITextField!
    @IBOutlet weak var percent: UITextField!
    @IBOutlet weak var result: UILabel!
    @IBAction func calaulate(_ sender: Any) {
        price.resignFirstResponder()
        percent.resignFirstResponder()
        
        if price.text == "" || percent.text == ""{
            result.text = "請輸入金額及小費"
        }
        else{
            result.text = String(Double(price.text!)! * Double(percent.text!)! / 100)
        }
        view.endEditing(true)
    }
    @IBAction func viewTapped(_ sender: Any) {
        view.endEditing(true)
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
