//
//  ViewController.swift
//  ViewChange
//
//  Created by 순진이 on 2021/10/27.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func redButtonTapper(_ sender: UIButton) {
        guard let rootVC = storyboard?.instantiateViewController(identifier: "FirstVC") else { return }
        //navigationController?.pushViewController(rootVC, animated: true)
        self.present(rootVC, animated: true)
        
    }
    
    @IBAction func blueButtonTapped(_ sender: Any) {
        guard let secondVC = storyboard?.instantiateViewController(identifier: "SecondVC") else { return }
        self.present(secondVC, animated: true)
    }
    
    
    @IBAction func greenButtonTapped(_ sender: UIButton) {
        guard let thirdVC = storyboard?.instantiateViewController(identifier: "ThirdVC") else { return }
        self.present(thirdVC, animated: true)
        }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }




}
