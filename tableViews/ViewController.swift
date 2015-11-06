//
//  ViewController.swift
//  tableViews
//
//  Created by Diego Gomes on 06/11/2015.
//  Copyright (c) 2015 Nylon. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    
    let devCourses = [
        
        ("IOS App dev With Swift","Diego Go"),
        ("Maths Curs for sciences and who like this subject","The Maths"),
        ("Nerdologia,vlog in Youtube for Nerd or person that  likes science","Atila"),
        ("Felipe Neto,show for everyone that social network is amazing but you can make someone bad for you if that you don't know that is soaciela network","Felipe Neto"),
        ("I don't like cats but sometimes cats are amezing","Me"),
        ("Goku are the the Man more Power Full Of Universy","Fan")
    ]
    
    
    let webCourses = [
        
        ("HTML","Lynda"),
        ("Javascript","Javascript Web"),
        ("Java","Bruno Javaman"),
        ("Swift","Diego Go"),
        ("Php","Aquele gordinho Chato"),
        ("Edição de vídeo","Gui"),
        ("Ingles","Diego Go")
    
    ]
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
                return devCourses.count
        }else{
                return webCourses.count
        }
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! UITableViewCell
        
        if indexPath.section == 0 {
            let (courseTitle,courseAuthor) = devCourses[indexPath.row]
            cell.textLabel?.text = courseTitle
            
        }else{
            
            let (courseTitle,courseAuthor) = webCourses[indexPath.row]
            cell.textLabel?.text = courseTitle
        }
        
        return cell
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "Lista of Inspirantion"
        }else{
            return "Developer"
        }
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

