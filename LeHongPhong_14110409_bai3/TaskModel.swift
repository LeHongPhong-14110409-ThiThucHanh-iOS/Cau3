//
//  TaskModel.swift
//  LeHongPhong_14110409_bai3
//
//  Created by PhongLe on 7/5/17.
//  Copyright © 2017 PhongLe. All rights reserved.
//

import Foundation

enum PriorityType: String {
    case type1 = "🔴 type 1"
    case type2 = "🔵 type 2"
}

class TaskModel {
    var title: String
    var priority: PriorityType
    
    init(title: String, priority: PriorityType) {
        self.title = title
        self.priority = priority
    }
}
