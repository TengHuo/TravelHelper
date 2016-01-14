//
//  TipListTableViewController.swift
//  TravelTips
//
//  Created by 张挺然 on 1/14/16.
//  Copyright © 2016 huoteng. All rights reserved.
//

import UIKit
import DGElasticPullToRefresh

class TipListTableViewController: UITableViewController {
    
    struct tip {
        let title:String
        let content:String
        let type:tipType
        let coverImgName:String
        init(title:String, content:String, type:tipType, coverImgName:String){
            self.title = title
            self.content = content
            self.type = type
            self.coverImgName = coverImgName
        }
    }
    
    enum tipType{
        case sceneIntro
        case skill
        case strategy
        case diary
    }
    
    var tips = [tip]()
    
    
    @IBOutlet weak var refreshableTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        tips.append(tip(title: "上海旅游好去处", content: "不额外分为婉无法访问裤别为方便我违反哟各位哟", type: .strategy, coverImgName: "mountain_in_fog"))
        tips.append(tip(title: "东方明珠", content: "不发威五分裤额的个月为婉无法无关瑜无为方便我违恶服务有午饭晚饭", type: .sceneIntro, coverImgName: "mountain_in_fog"))
        tips.append(tip(title: "防霾小窍门", content: "不额的个侧五块月为婉无法访问裤为无恶服务有午饭晚饭", type: .skill, coverImgName: "mountain_in_fog"))
        tips.append(tip(title: "在上海的日子", content: "不额的个月为婉无法无关瑜无违反有关违法美不饿恶服务有午饭晚饭", type: .diary, coverImgName: "mountain_in_fog"))
        
        let loadingView = DGElasticPullToRefreshLoadingViewCircle()
        loadingView.tintColor = UIColor(red: 78/255.0, green: 221/255.0, blue: 200/255.0, alpha: 1.0)
        refreshableTableView.dg_addPullToRefreshWithActionHandler ({ [weak self] () -> Void in
            print("Refreshing")
            self?.tableView.dg_stopLoading()
        }, loadingView: loadingView)
        tableView.dg_setPullToRefreshFillColor(UIColor(red: 57/255.0, green: 67/255.0, blue: 89/255.0, alpha: 1.0))
        tableView.dg_setPullToRefreshBackgroundColor(tableView.backgroundColor!)
        
    }
    
    deinit {
        tableView.dg_removePullToRefresh()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return tips.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("tipCell", forIndexPath: indexPath)
        
        let coverImgView = cell.viewWithTag(100) as! UIImageView
        let titleLabel = cell.viewWithTag(102) as! UILabel
        let contentLabel = cell.viewWithTag(103) as! UILabel
        let typeImageView = cell.viewWithTag(101) as! UIImageView
        
        coverImgView.image = UIImage(named: tips[indexPath.row].coverImgName)
        titleLabel.text = tips[indexPath.row].title
        contentLabel.text = tips[indexPath.row].content
        switch tips[indexPath.row].type {
        case .diary: typeImageView.image = UIImage(named: "weather09")
        case .sceneIntro: typeImageView.image = UIImage(named: "weather09")
        case .skill: typeImageView.image = UIImage(named: "weather09")
        case .strategy: typeImageView.image =
            UIImage(named: "weather09")
            
        }


        return cell
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}