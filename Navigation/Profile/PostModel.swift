//
//  PostStructure.swift
//  Navigation
//
//  Created by Veronika Torushko on 01.06.2021.
//  Copyright © 2021 Artem Novichkov. All rights reserved.
//

import UIKit
import iOSIntPackage

struct PostModel {
    
    var name: String // сделала здесь название поста, а не автора
    var description: String
    var image: UIImage?
    var likes: Int
    var views: Int
    var filer: ColorFilter
}



