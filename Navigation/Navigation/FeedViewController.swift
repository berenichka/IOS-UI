//
//  FeedViewController.swift
//  Navigation
//
//  Created by Veronika Torushko on 08.05.2021.
//

import UIKit

class FeedViewController: UIViewController {
    
    var post: Post = Post(title: "My first Post")

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "post" else {
            return
        }
        if let vc = segue.destination as? PostViewController   {
            vc.title = post.title
        } else {
            return
        }
        
        
       
    }

}

//struct Post {
//    var title: String
//}

//var post: Post = Post(title: "Post")


