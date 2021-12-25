//
//  CustomeStyle.swift
//  
//
//  Created by Aisha Ali on 11/20/21.
//

import Foundation
import UIKit


struct Style {
  
  
  func buttonStyle(_ name:UIButton){
    
    name.layer.cornerRadius = 10
    name.layer.borderWidth = 1
    name.layer.borderColor = UIColor.gray.cgColor

  }
  
  
  
  
  func viewStyle(_ name:UIView){
    
    name.layer.cornerRadius = 10
    name.layer.borderWidth = 1
    name.layer.borderColor = UIColor.darkGray.cgColor

  }
  
}
