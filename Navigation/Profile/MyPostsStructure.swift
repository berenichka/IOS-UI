//
//  PostsStorage.swift
//  Navigation
//
//  Created by Veronika Torushko on 01.06.2021.
//  Copyright © 2021 Artem Novichkov. All rights reserved.
//

import UIKit
import iOSIntPackage

var post1: PostModel = PostModel(name: "Me in the mountains", description: "Look how excited I am!", image: UIImage(named: "mountains"), likes: 100, views: 500, filer: .process)
var post2: PostModel = PostModel(name: "Me on vacation", description: "Vacations are the best time to have fun. It is the best time to get yourself involved in new things and develop new skills. During my summer vacation, I joined the summer camp. It was the day camp conducted by my school. I have attended dancing, painting, singing, yoga, and karate in the camp. It was fifteen days camp, and on the last day, my teachers arranged a trip to the nearby park. The weather was not so favorable; we all enjoyed it a lot. Experiencing wildlife with so close was my first experience. I have collected many memories from the camp. Even I made new friends, I actively participated in all the activities.", image: UIImage(named:  "vacation"), likes: 200, views: 600, filer: .bloom(intensity: 0.8))
var post3: PostModel = PostModel(name: "Me at work", description: "Take a look at how I love my job", image: UIImage(named: "work"), likes: 300, views: 700, filer: .noir)
var post4: PostModel = PostModel(name: "Me resting", description: "Please go away, leave me alone. But first scratch me on my belly", image: UIImage(named: "rest"), likes: 400, views: 800, filer: .sepia(intensity: 2.0))



let myPosts: [PostModel] = [
        post1,
        post2,
        post3,
        post4
]

