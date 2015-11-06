//
//  ViewController.swift
//  tableViews
//
//  Created by Diego Gomes on 06/11/2015.
//  Copyright (c) 2015 Nylon. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    
    let devCourses   = [
        
        ("IOS App dev With Swift","Diego go"),
        ("Maths Curs for sciences and who like this subject","The Maths"),
        ("Nerdologia,vlog in Youtube for Nerd or person that  likes science","Atila"),
        ("Felipe Neto,show for everyone that social network is amazing but you can make someone bad for you if that you don't know that is soaciela network","Felipe Neto"),
        ("I don't like cats but sometimes cats are amezing","Me"),
        ("Goku are the the Man more Power Full Of Universy","Fan")
    ]
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return devCourses.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! UITableViewCell
        
        let (courseTitle,courseAuthor) = devCourses[indexPath.row]
            cell.textLabel?.text = courseTitle
        
        return cell
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

