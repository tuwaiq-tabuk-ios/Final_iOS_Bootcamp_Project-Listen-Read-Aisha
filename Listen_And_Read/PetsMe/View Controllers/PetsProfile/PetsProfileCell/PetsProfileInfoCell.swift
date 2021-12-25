//
//  FoodTableViewCell.swift
//  TableViewExample
//
//  Created by Nguyen Duc Hoang on 8/27/17.
//  Copyright © 2017 Nguyen Duc Hoang. All rights reserved.
//

import UIKit

class PetsProfileInfoCell: UITableViewCell {
  
  @IBOutlet weak var lblPetBreed: UILabel!
  @IBOutlet weak var petPhoto: UIImageView?
  @IBOutlet weak var lblPetName: UILabel?
  @IBOutlet weak var dateOfBirth: UILabel?
  @IBOutlet weak var petGenderImage: UIImageView!
  
  
  
//  let dateFormatter: DateFormatter = {
//    let formatter = DateFormatter()
//    formatter.dateStyle = .medium
//    formatter.timeStyle = .none
//    return formatter
//  }()
  
  
  override func awakeFromNib() {
    super.awakeFromNib()
    // Initialization code
  }
  
  override func setSelected(_ selected: Bool, animated: Bool) {
    super.setSelected(selected, animated: animated)
    
    // Configure the view for the selected state
  }
  
}
