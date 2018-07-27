//
//  TwoViewViewController.swift
//  NotificationCenter
//
//  Created by mac on 2018/7/26.
//  Copyright © 2018年 mac-cx. All rights reserved.
//

import UIKit

class TwoViewViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.red
        // Do any additional setup after loading the view.
        // Do any additional setup after loading the view, typically from a nib.
        _ = NotificationCenter.default.observe(name: NSNotification.Name(rawValue: "name"), object: nil, queue: nil) { (notifation) in
                print("接收到22的通知")
        }
    }

    @IBAction func click(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let vc = ThreeViewController()
        self.navigationController?.pushViewController(vc, animated: true)
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
