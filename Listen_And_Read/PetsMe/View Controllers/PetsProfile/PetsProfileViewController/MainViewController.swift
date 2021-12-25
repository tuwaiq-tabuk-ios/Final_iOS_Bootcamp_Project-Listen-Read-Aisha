//
//  MainViewController.swift
//  TableViewExample
//
//  Created by Nguyen Duc Hoang on 8/27/17.
//  Copyright © 2017 Nguyen Duc Hoang. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
  
  
  var myPetName: String = ""
  var myPetBreed: String = ""
  var myPetGender: String = ""
  
  
    @IBOutlet weak var tableView: UITableView?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
  
  
    //MARK - UITableViewDataSource & UITableViewDelegate
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pets.count
    }
  
  
  
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PetsProfileInfoCell") as! PetsProfileInfoCell
        let pet:Pet = pets[indexPath.row]
      makeRounded(myImage: cell.petPhoto!)

      if(pet.image != nil) {
            cell.petPhoto?.image = pet.image
        } else {
            cell.petPhoto?.image = UIImage(named: "pets")
        }
      
//      let dateString = DateFormatter.localizedString(from: moodEntry.timestamp, dateStyle: .medium, timeStyle: .short)
//      cell.detailTextLabel?.text = "on \(dateString)"
        
        cell.lblPetName?.text = pet.petName
      cell.lblPetBreed?.text = pet.petName
      
      if pet.petGender == "Male" || pet.petGender == "male"{
        cell.petGenderImage.image = UIImage(named: "male")
        
      }else {
        cell.petGenderImage.image = UIImage(named: "female")
        
      }
     return cell

    }
  
  
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    myPetName = pets[indexPath.row].petName!
    myPetGender = pets[indexPath.row].petGender!
    myPetBreed = pets[indexPath.row].petBreed!
    
    performSegue(withIdentifier: "show_Profile", sender: nil)

  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if let destinationVC = segue.destination as? ShowPetProfileViewController {
      destinationVC.petName = myPetName
      destinationVC.petGender = myPetGender
      destinationVC.petBreed = myPetBreed

    }
  }
  
  
  func makeRounded(myImage:UIImageView) {

        myImage.layer.borderWidth = 10
        myImage.layer.masksToBounds = true
        myImage.layer.borderColor = UIColor.cmWhite.cgColor
        myImage.layer.cornerRadius = myImage.bounds.height / 2
        myImage.clipsToBounds = true
    }
  
}
