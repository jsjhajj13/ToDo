//
//  SwipeTableViewController.swift
//  ToDo
//
//  Created by Jagdev Singh Jhajj on 2020-05-29.
//  Copyright © 2020 Jagdev Singh Jhajj. All rights reserved.
//

import UIKit
import SwipeCellKit

class SwipeTableViewController: UITableViewController, SwipeTableViewCellDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           let cell = tableView.dequeueReusableCell(withIdentifier: "Cell",  for: indexPath) as! SwipeTableViewCell
           
           cell.delegate = self
           
           return cell
       }
    
    
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath, for orientation: SwipeActionsOrientation) -> [SwipeAction]? {
        guard orientation == .right else { return nil }
        
        let deleteAction = SwipeAction(style: .destructive, title: "Delete") { action, indexPath in
            
            self.updateModel(at: indexPath)
            //                if let categoryForDeletion = self.categories?[indexPath.row]{
            //                    do{
            //                        try self.realm.write{
            //                            self.realm.delete(categoryForDeletion)
            //                        }
            //                    }catch{
            //                        print("Error deleting \(error)")
            //                    }
            //                    //tableView.reloadData()
            //                }
            
        }
        
        // customize the action appearance
        deleteAction.image = UIImage(named: "delete-icon")
        
        return [deleteAction]
    }
    
    func tableView(_ tableView: UITableView, editActionsOptionsForRowAt indexPath: IndexPath, for orientation: SwipeActionsOrientation) -> SwipeOptions {
        var options = SwipeOptions()
        options.expansionStyle = .destructive
        return options
    }
    
    func updateModel(at indexPath: IndexPath){
        // Update DATA MODEL
    }
    
}

