//
//  Item.swift
//  ToDo
//
//  Created by Jagdev Singh Jhajj on 2020-05-29.
//  Copyright © 2020 Jagdev Singh Jhajj. All rights reserved.
//

import Foundation
import RealmSwift

class Item: Object {
    @objc dynamic var title: String = ""
    @objc dynamic var done: Bool = false
    var parentCategory = LinkingObjects(fromType: Category.self, property: "items")
}
