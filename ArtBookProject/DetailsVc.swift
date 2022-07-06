//
//  DetailsVc.swift
//  ArtBookProject
//
//  Created by Fulya Sarıyar on 1.07.2022.
//

import UIKit

class DetailsVc: UIViewController {
    @IBOutlet weak var nameText: UITextField!
    
    @IBOutlet weak var yearText: UITextField!
    @IBOutlet weak var artistText: UITextField!
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        //klavyeyi kapatmak
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
        view.addGestureRecognizer(gestureRecognizer)
    }
    
    @objc func hideKeyboard(){
        view.endEditing(true)
    }

    @IBAction func saveButton(_ sender: Any) {
        print("Hola!")
    }
}
