//
//  AppDelegate.swift
//  Todoey
//
//  Created by Jagdev Singh Jhajj on 2020-05-25.
//  Copyright © 2020 Jagdev Singh Jhajj. All rights reserved.
//

import UIKit
import RealmSwift

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        //print(Realm.Configuration.defaultConfiguration.fileURL)
        do{
         _ = try Realm()
        } catch {
            print("Error Initialising new Realm \(error)")
        }
        return true
    }

    
    

}
