//
//  LabelCell.swift
//  ProtoType-CollectionsView-"Aisha_Ali"
//
//  Created by Aisha Ali on 11/30/21.
//

import UIKit

class LabelCell: UICollectionViewCell {

  @IBOutlet weak var root_View: UIView!
  @IBOutlet weak var titlleLabel: UILabel!
  
  
  @IBOutlet weak var categorize: UIImageView!
  
  
//  override func awakeFromNib() {
//      super.awakeFromNib()
//      
//      self.imageView.layer.cornerRadius = 8
//      self.mainView.layer.cornerRadius = 8
//
//  }
  
  override func awakeFromNib() {
        super.awakeFromNib()
    self.root_View.clipsToBounds = true

        // Initialization code
    }

}
