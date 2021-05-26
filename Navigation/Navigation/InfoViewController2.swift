//
//  InfoViewController2.swift
//  Navigation
//
//  Created by Veronika Torushko on 09.05.2021.
//

import UIKit

class InfoViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func tap() {
        showAlert()
        
    }
    
    func showAlert() {
        let alert = UIAlertController(title: "Error", message: "Are you sure?", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: { action in
            print("OK")
        }))
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: {action in
                                        print("Cancel")}))
        
        
        present(alert, animated: true, completion: nil)
    }


}
