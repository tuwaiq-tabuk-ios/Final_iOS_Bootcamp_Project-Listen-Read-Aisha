//
//  BookListTableViewCell.swift
//  PetsMe
//
//  Created by Aisha Ali on 12/25/21.
//

import UIKit

class BookListCell: UITableViewCell {

  @IBOutlet weak var bookCoverImage: UIImageView!
  @IBOutlet weak var bookTitleLabel: UILabel!
  @IBOutlet weak var bookGenreLabel: UILabel!
  @IBOutlet weak var bookAuthorName: UILabel!

  override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
