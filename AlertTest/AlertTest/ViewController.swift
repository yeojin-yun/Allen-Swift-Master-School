//
//  ViewController.swift
//  AlertTest
//
//  Created by 순진이 on 2021/10/28.
//

import UIKit

class ViewController: UIViewController {
    
    var first: Int = 0
    var second: Int = 0
    var third: Int = 0
    
    @IBOutlet weak var mywalletLabel: UITextField!
    @IBOutlet weak var totalTextLbl: UITextField!
    
    @IBOutlet weak var firstTextLbl: UITextField!
    @IBOutlet weak var secondTextLbl: UITextField!
    @IBOutlet weak var thirdTextLbl: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func firstStepperTapped(_ sender: UIStepper) {
        let firstLbl = Int(sender.value).description
        firstTextLbl.text = firstLbl + "개"
        let totalLbl = Int(sender.value) * 6000
        first = totalLbl
        totalTextLbl.text = String(first + second + third)
    }
    
    
    @IBAction func secondStepperTapped(_ sender: UIStepper) {
        let secondLbl = Int(sender.value).description
        secondTextLbl.text = secondLbl + "개"
        let totalLbl = Int(sender.value) * 8000
        second = totalLbl
        totalTextLbl.text = String(first + second + third)
    }
    
    @IBAction func thirdStepperTapped(_ sender: UIStepper) {
        let thirdLbl = Int(sender.value).description
        thirdTextLbl.text = thirdLbl + "개"
        let totalLbl = Int(sender.value) * 9000
        third = totalLbl
        totalTextLbl.text = String(first + second + third)
    }
    
    
    @IBAction func alertAction(_ sender: UIButton) {
        let alert = UIAlertController(title: "내 주머니", message: "남은 돈은?", preferredStyle: .alert)
        alert.addTextField { (textField) in
            textField.placeholder = "내가 가진 돈 입력하기"
        }
        let okAction = UIAlertAction(title: "입력", style: .default) { [weak self] (action) in
            if let fieldList = alert.textFields {
                if let textField = fieldList.first {
                    self?.mywalletLabel.text = textField.text
                }
            }
        }
        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
        firstTextLbl.text = ""
        secondTextLbl.text = ""
        thirdTextLbl.text = ""
        totalTextLbl.text = ""
        mywalletLabel.text = ""
    }

    @IBAction func buyButtonTapped(_ sender: UIButton) {
        let alert = UIAlertController(title: "정말 구매하시겠습니까?", message: "구매 금액은 \(String(describing: totalTextLbl))입니다.", preferredStyle: .alert)
    }
    let okAction = UIAlertAction(title: "확인", style: .default, handler: <#T##((UIAlertAction) -> Void)?##((UIAlertAction) -> Void)?##(UIAlertAction) -> Void#>)
    
    
}

