//
//  ViewController.swift
//  table view
//
//  Created by COE-02 on 26/12/19.
//  Copyright © 2019 COE-02. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    
    let list = [["Image":#imageLiteral(resourceName: "r1"),"Name":"Rohit Sharma","Test":"2141","odi":"8944"],
                ["Image":#imageLiteral(resourceName: "r2"),"Name":"Shikhar Dhawan","Test":"2315","odi":"5518"],
                ["Image":#imageLiteral(resourceName: "r3"),"Name":"Virat Kohli","Test":"7202","odi":"11609"],
                ["Image":#imageLiteral(resourceName: "r4"),"Name":"K L Rahul","Test":"2006","odi":"889"],
                ["Image":#imageLiteral(resourceName: "r51"),"Name":"M S Dhoni","Test":"4876","odi":"10773"],
                ["Image":#imageLiteral(resourceName: "r6"),"Name":"Ravindra Jadeja","Test":"1844","odi":"2188"]]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! myTableViewCell
        
        cell.lblname.text = list[indexPath.row]["Name"] as? String
       
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        let Navigate = self.storyboard?.instantiateViewController(withIdentifier: "page2" ) as! ViewController1

        self.navigationController?.pushViewController(Navigate, animated: true)
       
        Navigate.Image = list[indexPath.row]["Image"]  as! UIImage
        Navigate.odi = list[indexPath.row]["odi"]  as! String
        Navigate.test = list[indexPath.row]["Test"]  as! String



    }
    

    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

