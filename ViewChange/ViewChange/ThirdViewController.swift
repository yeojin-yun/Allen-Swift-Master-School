//
//  ThirdViewController.swift
//  ViewChange
//
//  Created by 순진이 on 2021/10/27.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBAction func greendButtonTapped(_ sender: UIButton) {
        self.presentingViewController?.dismiss(animated: true)
    }
    
    @IBOutlet weak var backoutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.green
        backoutlet.setTitleColor(.white, for: .normal)
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
