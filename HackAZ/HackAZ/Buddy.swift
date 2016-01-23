//
//  Buddy.swift
//  HackAZ
//
//  Created by Maxfield Lehman on 1/23/16.
//  Copyright © 2016 Samuel Wang. All rights reserved.
//

import Foundation
import UIKit

class Buddy{
    
    var name: String
    var course: String
    var description: String
    var pic: UIImage?
    
    init(name: String, course: String, description: String, pic: UIImage?){
        self.name = name
        self.course = course
        self.description = description
        self.pic = pic
    }
}