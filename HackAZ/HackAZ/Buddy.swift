//
//  Buddy.swift
//  HackAZ
//
//  Created by Maxfield Lehman on 1/23/16.
//  Copyright © 2016 Samuel Wang. All rights reserved.
//

import Foundation

class Buddy{
    
    var name = ""
    var course = ""
    var description = ""
    
    init(name: String, course: String, description: String){
        self.name = name
        self.course = course
        self.description = description
    }
 
}
var buddy = Buddy(name: "", course: "", description: "")