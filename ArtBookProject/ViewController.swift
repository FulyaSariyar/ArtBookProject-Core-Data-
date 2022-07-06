//
//  ViewController.swift
//  ArtBookProject
//
//  Created by Fulya Sarıyar on 1.07.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        navigationController?.navigationBar.topItem?.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.add, target: self, action: #selector(addButtonClicked))
        
        
    
    }
    @objc func addButtonClicked(){
        performSegue(withIdentifier: "todetailsVC", sender: nil)
    }

}

