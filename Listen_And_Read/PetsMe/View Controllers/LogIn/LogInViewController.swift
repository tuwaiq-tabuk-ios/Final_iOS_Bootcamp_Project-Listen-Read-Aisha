//
//  LogInViewController.swift
//  LogInProtoType
//
//  Created by Aisha Ali on 12/14/21.
//

import UIKit
//import Firebase
//import FirebaseAuth

class LogInViewController: UIViewController {
  
  @IBOutlet weak var passwordTextField: UITextField!
  @IBOutlet weak var emailTextField: UITextField!
  @IBOutlet weak var logInButton: UIButton!
  @IBOutlet weak var errorLabel: UILabel!
  
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    setUpLayOut()
    
    
    // Do any additional setup after loading the view.
  }
  
  
  
  func setUpLayOut(){
    errorLabel.alpha = 0
    Utilities.styleTextField(passwordTextField)
    Utilities.styleTextField(emailTextField)
    Utilities.styleButton(logInButton)
    
    
    
    
    
  }
//  
//  @IBAction func logInTapped(_ sender: UIButton) {
//    let email = emailTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
//    let password = passwordTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
//    
//    // Signing in the user
//    Auth.auth().signIn(withEmail: email, password: password) { (result, error) in
//      
//      if error != nil {
//        // Couldn't sign in
//        self.errorLabel.text = error!.localizedDescription
//        self.errorLabel.alpha = 1
//      }
//      else {
//        
//        let homeViewController = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.homeViewController) as? HomeViewController
//        
//        self.view.window?.rootViewController = homeViewController
//        self.view.window?.makeKeyAndVisible()
//      }
//    }
//  }
//}
}
