//
//  TV.swift
//  TableViewDemo
//
//  Created by Harendra Sharma on 05/06/18.
//  Copyright © 2018 Harendra Sharma. All rights reserved.
//

import UIKit

class TV: UITableView, UITableViewDelegate, UITableViewDataSource {
   
    let Objects = ["A", "B", "W", "r", "T", "G", "r", "W", "W", "V", "S", "Q", "T", "P"]
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.dataSource = self
        self.delegate = self
        
    }
    
    override init(frame: CGRect, style: UITableView.Style) {
        super.init(frame: frame, style: style)
        self.register(UITableViewCell.self, forCellReuseIdentifier: "mycell")
        self.dataSource = self
        self.delegate = self
    }
    
    
    
    
    
    
    
    
    // Mark: UITableView delegate and datasource method
    
    // Required methods
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  Objects.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:UITableViewCell = (tableView.dequeueReusableCell(withIdentifier: "mycell") as UITableViewCell?)!
        
        cell.textLabel?.text = Objects [indexPath.row]
        return cell
        
    }
    
// Optional methods
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return 60
        
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat
    {
        return 10
        
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        
    }
    
    
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
