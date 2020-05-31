//
//  Category.swift
//  ToDo
//
//  Created by Jagdev Singh Jhajj on 2020-05-29.
//  Copyright © 2020 Jagdev Singh Jhajj. All rights reserved.
//

import Foundation
import RealmSwift

class Category: Object{
    @objc dynamic var name: String = ""
    let items = List<Item>()
    @objc dynamic var color: String = ""
}
