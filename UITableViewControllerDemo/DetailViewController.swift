//
//  DetailViewController.swift
//  UITableViewControllerDemo
//
//  Created by Frank.Chen on 2017/3/22.
//  Copyright © 2017年 Frank.Chen. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
        
    var fruitsDesc: String!    
    @IBOutlet weak var desc: UILabel!
    
    override func viewDidLoad() {
        // Do any additional setup after loading the view.
        super.viewDidLoad()
        desc.text = self.fruitsDesc
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
