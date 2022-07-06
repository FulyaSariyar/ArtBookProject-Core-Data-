//
//  DetailsVc.swift
//  ArtBookProject
//
//  Created by Fulya Sarıyar on 1.07.2022.
//

import UIKit

class DetailsVc: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var yearText: UITextField!
    @IBOutlet weak var artistText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Recognizer
       
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
               view.addGestureRecognizer(gestureRecognizer)
               
        imageView.isUserInteractionEnabled = true
        let imageTapRecognizer = UITapGestureRecognizer(target: self, action: #selector(selectImage))
        imageView.addGestureRecognizer(imageTapRecognizer)
    }

    
    @objc func selectImage(){
        let picker = UIImagePickerController()
        picker.delegate = self
        picker.sourceType = .photoLibrary
        picker.allowsEditing = true //fotograf editleme
        present(picker, animated: true, completion: nil)
        
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            imageView.image = info[.originalImage] as? UIImage
            self.dismiss(animated: true, completion: nil)
        }
    @objc func hideKeyboard(){
        view.endEditing(true)
    }

    @IBAction func saveButton(_ sender: Any) {
        print("Hola!")
    }
}
