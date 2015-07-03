//
//  EmojiListViewController.swift
//  Emoji Glossary
//
//  Created by Felicia Ferreira on 1/15/15.
//  Copyright (c) 2015 Felicia Ferreira. All rights reserved.
//

import Foundation

import UIKit


class EmojiListViewController : UIViewController, UITableViewDataSource, UITableViewDelegate {
   
    
    @IBOutlet weak var tableView: UITableView!
    
    var emojis = ["😘", "👸", "🙊", "😊", "😢"]
    
    override func viewDidLoad() {
        self.tableView.dataSource = self
        self.tableView.delegate = self
    }
    
    //how many rows in table
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.emojis.count
    }
    //show the items in each table cell
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cell = UITableViewCell()
        cell.textLabel!.text = self.emojis[indexPath.row]
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
       self.performSegueWithIdentifier("tableViewTransitionToEmojiSegue", sender: self)
    }
}
