




import UIKit

class NewPetProfileViewController: UIViewController,
                                   UITextFieldDelegate,
                                   UIImagePickerControllerDelegate,
                                   UINavigationControllerDelegate  {
  
  
  
  @IBOutlet weak var petBreed: UITextField!
  @IBOutlet weak var petName: UITextField?
  @IBOutlet weak var petGender: UITextField!
  @IBOutlet weak var petPhoto: UIImageView?
  @IBOutlet weak var dateOfBirth: UIDatePicker!
  @IBOutlet weak var btnSave: UIButton!
  
  
  
  var newPet = Pet()
  
  
  @IBAction func btnSave(sender: UIButton) {
    print("press Save !")
    if ( newPet.petBreed?.count == 0 || newPet.petName?.count == 0 || newPet.petGender?.count == 0) {
      let alertController = UIAlertController(title: "Alert", message: "Please set food's name, choose image ", preferredStyle: .alert)
      let okAction = UIAlertAction(title: "OK", style: .default) { (action) in
        
      }
      alertController.addAction(okAction)
      self.present(alertController, animated: true, completion: nil)
    } else {
      //Add newFood to foods array
      pets.append(newPet)
      navigationController?.popViewController(animated: true)
      let mainViewController = self.navigationController?.topViewController as? MainViewController
      mainViewController?.tableView?.reloadData()
    }
  }
  
  
  override func viewDidLoad() {
    Utilities.styleTextField(petBreed)
    Utilities.styleTextField(petName!)
    Utilities.styleTextField(petGender)


    super.viewDidLoad()
    //tap to imageview
    btnSave.layer.cornerRadius = 30
    makeRounded(myImage: petPhoto!)
    
    
    
    
    
    
    let tapGestureToImageView = UITapGestureRecognizer(target: self, action: #selector(tapToImageView(sender:)))
    tapGestureToImageView.numberOfTapsRequired = 1
    petPhoto?.isUserInteractionEnabled = true
    petPhoto?.addGestureRecognizer(tapGestureToImageView)
  }
  
  
  @objc func tapToImageView(sender: UITapGestureRecognizer) {
    print("tap to imageView")
    let pickerController = UIImagePickerController()
    pickerController.delegate = self
    pickerController.allowsEditing = true
    pickerController.sourceType = .photoLibrary;
    self.present(pickerController, animated: true, completion: nil)
  }
  
  
  
  //MARK - UINavigationControllerDelegate
  private func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
    //    let a :UIImage = info[UIImagePickerControllerEditedImage] as! UIImage
    let chosenImage:UIImage = info[UIImagePickerController.InfoKey.editedImage.rawValue] as! UIImage
    petPhoto!.image = chosenImage
    newPet.image = chosenImage
    picker.dismiss(animated: true, completion: nil)
  }
  
  
  //MARK -- UITextFieldDelegate
  func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    print("press return")
    textField.resignFirstResponder()
    return true
  }

  
  func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
    newPet.petName = textField.text ?? ""
    newPet.petBreed = textField.text ?? ""
    newPet.petGender = textField.text ?? ""
    textField.resignFirstResponder()
    return true
  }
  

  
  func makeRounded(myImage:UIImageView) {
    
    myImage.layer.borderWidth = 10
    myImage.layer.masksToBounds = true
    myImage.layer.borderColor = UIColor.cmWhite.cgColor
    myImage.layer.cornerRadius = myImage.bounds.height / 2
    myImage.clipsToBounds = true
  }
  
}
