//
//  UILabel Extension.swift
// 
//
//  Created by Aisha Ali on 11/1/21.
//

import UIKit

class CustomLabel:UILabel {
  
  
  override init(frame: CGRect) {
    super.init(frame: frame)
  }
  
  
  init(withText text: String
       , size font: CGFloat
       , color: UIColor = UIColor.black) {
    super.init(frame: .zero)
    self.text = text
    self.font = UIFont.systemFont(ofSize: font, weight: .regular)
    self.textColor = color
    self.translatesAutoresizingMaskIntoConstraints = false
  }
  
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}
