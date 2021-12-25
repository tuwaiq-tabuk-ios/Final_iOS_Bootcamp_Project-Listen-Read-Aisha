//
//  Register.swift
//  ProtoType_cookRec
//
//  Created by Aisha Ali on 11/20/21.
//

import Foundation
import UIKit



class Register:UIViewController{
  public var vc = UIViewController()
  let style = Style()
  
  @IBOutlet weak var register_Button: UIButton!
  
  @IBOutlet weak var name_View: UIView!
  @IBOutlet weak var password_View: UIView!
  @IBOutlet weak var confirmPassword_View: UIView!
  @IBOutlet weak var email_View: UIView!
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    register_Button.layer.cornerRadius = 30
    style.viewStyle(name_View)
    style.viewStyle(password_View)
    style.viewStyle(confirmPassword_View)
    style.viewStyle(email_View)
    
    
  }
  
  @IBAction func button_Pressed(_ sender: UIButton) {
    print(#function)
    
//    if sender.tag == 0 {
//
//      vc = self.storyboard?.instantiateViewController(withIdentifier: "SignIn") as! SignIn
//      vc.modalPresentationStyle = .fullScreen
//      present(vc,animated: false, completion: nil)
//    }else
    if sender.tag == 1 {
//
      vc = self.storyboard?.instantiateViewController(withIdentifier: "MainTabBar") as! MainTabBar
      vc.modalPresentationStyle = .fullScreen
      present(vc,animated: false, completion: nil)

    } else if sender.tag == 2 {

      vc = self.storyboard?.instantiateViewController(withIdentifier: "TermsAndServices") as! TermsAndServices
//      vc.modalPresentationStyle = .fullScren
      present(vc,animated: false, completion: nil)
//
    }
  }
  



//#if canImport(SwiftUI) && DEBUG
//import SwiftUI
//
//struct SwiftLeeViewRepresentable: UIViewRepresentable {
//    func makeUIView(context: Context) -> UIView {
//        return UIStoryboard(name: "Main", bundle: Bundle.main).instantiateInitialViewController()!.view
//    }
//
//    func updateUIView(_ view: UIView, context: Context) {
//
//    }
//}
//
//@available(iOS 13.0, *)
//struct SwiftLeeViewController_Preview: PreviewProvider {
//    static var previews: some View {
//        SwiftLeeViewRepresentable()
//    }
//}
//#endif
}
