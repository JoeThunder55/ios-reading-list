//
//  AddDetailViewController.swift
//  Reading List
//
//  Created by Aaron on 8/18/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit



class AddDetailViewController: UIViewController {
    
    @IBOutlet weak var bookTitle: UITextField!
    @IBOutlet weak var reasonText: UITextView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func saveButtonPressed(_ sender: Any) {
        dismiss(animated: true)
        
        
    }
    
    
}
