//
//  ViewController.swift
//  TravelTips
//
//  Created by Teng on 12/20/15.
//  Copyright © 2015 huoteng. All rights reserved.
//  主页面

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       
        
    }
    
    @IBAction func sendMsg(sender: AnyObject) {
//        ServerModel.getWeatherData(lat: 30, lon: 120) { (tmp2) -> Void in
//            print("")
//        }
//        ServerModel.login("3456789@qq.com", withPass: "123456")//OK
//        ServerModel.registerNewUser("Teng", gender: "male", email: "3456789", passMD5: "123456")//OK

    }

    @IBAction func getData(sender: AnyObject) {
        //获取sessionID
//        let sessionID = NSUserDefaults.standardUserDefaults().valueForKey("sessionID") as! String
//        print("session:\(sessionID)")
//        ServerModel.getData(sessionID, withType: .Plan)//OK
        
        
//        let testData = [
//            "sessionID": sessionID,
//            "dataType": DataType.Bill.rawValue,
//            "value": "1000000",
//            "bill_description": "wertyui",
//            "bill_type": "kskdfjka"
//        ]
        
//        let testData = [
//            "sessionID": sessionID,
//            "dataType": DataType.Note.rawValue,
//            "deleteID": [2, 3]
//        ]
        
//        ServerModel.deleteDataRecord(testData as! [String : AnyObject])
//        ServerModel.getTips(sessionID, destination: "London") { (test) -> Void in
//            print("Test:\(test)")
//        }

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

