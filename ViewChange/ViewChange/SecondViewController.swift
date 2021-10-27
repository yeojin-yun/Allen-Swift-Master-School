//
//  SecondViewController.swift
//  ViewChange
//
//  Created by 순진이 on 2021/10/27.
//

import UIKit

class SecondViewController: UIViewController {
    
    
    @IBAction func backButtonTapped(_ sender: UIButton) {
        self.presentingViewController?.dismiss(animated: true)
    }
    
    
  
    @IBOutlet weak var backOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //buttonTest()
        view.backgroundColor = .blue
        backOutlet.setTitleColor(.white, for: .normal)
    }
//    func buttonTest() {
//        let testButton = UIButton()
//        testButton.setTitle("BACK", for: .normal)
//        testButton.setTitleColor(.white, for: .normal)
//        testButton.translatesAutoresizingMaskIntoConstraints = false
//
//        view.addSubview(testButton)
//        
//        let safeArea = view.safeAreaLayoutGuide
//        
//        testButton.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 20).isActive = true
//        testButton.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor, constant: -20).isActive = true
//        testButton.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor, constant: -20).isActive = true
//    }
    
    
    
    
    
    
    
}
