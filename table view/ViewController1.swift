//
//  ViewController1.swift
//  table view
//
//  Created by COE-02 on 26/12/19.
//  Copyright © 2019 COE-02. All rights reserved.
//

import UIKit

class ViewController1: UIViewController {
    
    
    @IBOutlet weak var image: UIImageView!
    
    @IBOutlet weak var testRuns: UILabel!
    

    @IBOutlet weak var ODIruns: UILabel!
    
    var Image = UIImage()
    var test = ""
    var odi = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        image.image = Image
        testRuns.text = test
        ODIruns.text = odi

        // Do any additional setup after loading the view.
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
