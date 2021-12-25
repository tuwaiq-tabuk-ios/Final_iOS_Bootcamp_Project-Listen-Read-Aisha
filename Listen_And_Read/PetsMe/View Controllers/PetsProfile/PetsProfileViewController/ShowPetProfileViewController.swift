//
//  ShowPetProfileViewController.swift
//  TableViewExample
//
//  Created by Aisha Ali on 12/15/21.
//  Copyright © 2021 Nguyen Duc Hoang. All rights reserved.
//

import UIKit

class ShowPetProfileViewController: UIViewController {
  
  var mypet = Pet()
  
  @IBOutlet weak var petImage: UIImageView!
  @IBOutlet weak var petNameLabel: UILabel!
  @IBOutlet weak var petBreedLabel: UILabel!
  @IBOutlet weak var petGenderLabel: UILabel!
  @IBOutlet weak var petBirthDateLabel: UILabel!
  
  
  
  
  var petName:String = ""
  var petGender:String = ""
  var petBreed:String = ""
  
  
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    
    petNameLabel.text = petName
    petBreedLabel.text = petBreed
    petGenderLabel.text = petGender
    
  }
  
  
  
  
  
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    makeRounded(myImage: petImage)
    
    
    // Do any additional setup after loading the view.
  }
  
  
  
  func makeRounded(myImage:UIImageView) {

        myImage.layer.borderWidth = 10
        myImage.layer.masksToBounds = true
        myImage.layer.borderColor = UIColor.cmWhite.cgColor
        myImage.layer.cornerRadius = myImage.bounds.height / 2
        myImage.clipsToBounds = true
    }
  
  
  /*
   // MARK: - Navigation
   
   // In a storyboard-based application, you will often want to do a little preparation before navigation
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
   // Get the new view controller using segue.destination.
   // Pass the selected object to the new view controller.
   }
   */
  
}
