//
//  ViewController.swift
//  CameraUlt
//
//  Created by Marcylene Barreto on 23/12/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageUser: UIImageView!
    @IBOutlet weak var addImageButton: UIButton!
    
    var imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.imagePicker.delegate = self
        
        self.addImageButton.layer.cornerRadius = 20
        self.addImageButton.clipsToBounds =  true
    }

    @IBAction func handlerButtonAdd(_ sender: Any) {
        
        self.imagePicker.sourceType = .photoLibrary
        self.present(self.imagePicker, animated: true, completion: nil)
        
    }
}

extension ViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
     
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let imagemRecuperada: UIImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            self.imageUser.image = imagemRecuperada
        }
        picker.dismiss(animated: true, completion: nil)
    }
}

