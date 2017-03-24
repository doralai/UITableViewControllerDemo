//
//  MasterTableViewController.swift
//  UITableViewControllerDemo
//
//  Created by Frank.Chen on 2017/3/22.
//  Copyright © 2017年 Frank.Chen. All rights reserved.
//

import UIKit

class MasterTableViewController: UITableViewController {
    
    let fruitsImageName: [String] = ["Apple", "Banana", "Cherry"]
    let fruitsName: [String] = ["Apple", "Banana", "Cherry"]
    let fruitsPrice: [Int] = [10, 20, 30]
    let fruitsDesc: [String] = ["蘋果（學名：Malus pumila）是薔薇科蘋果亞科蘋果屬植物，其樹為落葉喬木。蘋果的果實富含礦物質和維生素，是人們最常食用的水果之一。", "香蕉（學名：Musa × paradisiaca），又稱甘蕉、芎蕉、芽蕉，弓蕉（閩南語：king-tsio/kin-tsio/kim-tsio；客家語：Khiûng-tsiâu），為芭蕉科芭蕉屬小果野蕉（M. acuminata）及野蕉（M. balbisiana）的人工栽培雜交種，為多年生草本植物。果實長有棱；果皮黃色，果肉白色，味道香甜。主要生長在熱帶、亞熱帶地區。原產於亞洲東南部熱帶、亞熱帶地區。", "最初由波斯傳入羅馬，再由羅馬進口至歐洲，此後歐洲也陸續發展多種品種櫻桃，分別為可鮮食的甜櫻桃與烹調為主的酸櫻桃；後於1875年傳入美國奧勒岡州(最早開始大量種植櫻桃的地區)；1952年華盛頓大學科學家 Harold Warman Fogle 利用 Bing 與 Van 混種培育出新品種 Rainier (即白櫻桃)，其名稱取自附近一座叫 Rainier 的山。"]
    
    override func viewDidLoad() {
        super.viewDidLoad()        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.fruitsImageName.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        // Configure the cell...        
        cell.imageView?.image = UIImage(named: self.fruitsImageName[indexPath.row])        
        cell.textLabel?.text = self.fruitsName[indexPath.row]
        cell.detailTextLabel?.text = String(self.fruitsPrice[indexPath.row])        
        
        return cell
    }
 

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.    
        if segue.identifier == "showDetail" {
            let detailViewController: DetailViewController = segue.destination as! DetailViewController
            detailViewController.fruitsDesc = self.fruitsDesc[(tableView.indexPathForSelectedRow?.row)!]
        }
    }
    
}
