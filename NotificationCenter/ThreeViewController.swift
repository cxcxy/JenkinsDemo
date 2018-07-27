//
//  ThreeViewController.swift
//  NotificationCenter
//
//  Created by mac on 2018/7/26.
//  Copyright © 2018年 mac-cx. All rights reserved.
//

import UIKit

class ThreeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.blue
        // Do any additional setup after loading the view.
        
//        NotificationCenter.default.post(name: <#T##NSNotification.Name#>, object: <#T##Any?#>)
    }
    
    @IBAction func clickAction(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    @IBOutlet weak var click: UIButton!
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        print("33333")
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "name"), object: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
