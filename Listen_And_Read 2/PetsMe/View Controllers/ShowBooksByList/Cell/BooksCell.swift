//
//  EnglishCell.swift
//
//
//
//

import UIKit


class BooksCell: UICollectionViewCell {
    
    
    static let identfir = "cell2"
    
    var englishBook: Book!
    
    var isActive2: Bool = false
  
    private let bookImage: UIImageView = {
      
        let bookImage = UIImageView()
        bookImage.translatesAutoresizingMaskIntoConstraints = false
        bookImage.clipsToBounds = false
        bookImage.layer.shadowColor = UIColor.black.cgColor
        bookImage.layer.shadowOpacity = 9.0
        bookImage.layer.shadowRadius = 10
        bookImage.contentMode = .scaleAspectFit
        bookImage.layer.cornerRadius = 20
  
        
        return bookImage
    }()
    
    private let nameLabel: UILabel = {
      
        let namebook = UILabel()
        namebook.translatesAutoresizingMaskIntoConstraints = false
        namebook.font = UIFont(name: "AvenirNextCondensed-Medium", size: 20.0)
        namebook.textAlignment = .center
        namebook.textColor = UIColor(named: "textColor")
        
        return namebook
        
    }()
    
    let autherLabel: UILabel = {
      
       let auther = UILabel()
        auther.translatesAutoresizingMaskIntoConstraints = false
        auther.font = UIFont(name: "AvenirNextCondensed-Medium", size: 18.0) //UIFont(name: "Semibold", size: 8.0)
         auther.textColor = UIColor(named: "textColor")
         auther.textAlignment = .center
      
       return auther
       
   }()
    
    
//    let categoryLabel: UILabel = {
//       let category = UILabel()
//        category.translatesAutoresizingMaskIntoConstraints = false
//        category.font = UIFont(name: "Light-Italic", size: 14.0)
//        category.textColor = UIColor(named: "textColor")
//        category.textAlignment = .center
//
//       return category
//
//   }()
    
    private let favButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "heart1"), for: .normal)
        button.addTarget(self, action: #selector(favorite2), for: .touchUpInside)

        return button
    }()
    
//    private let favButton: UIImageView = {
//        let button = UIImageView()
//        button.translatesAutoresizingMaskIntoConstraints = false
//        button.isUserInteractionEnabled = true
//        button.layer.cornerRadius = 20
//        button.layer.masksToBounds = true
//        let tap = UITapGestureRecognizer(target: self, action:  #selector(favorite2))
//        button.addGestureRecognizer(tap)
//
//        return button
//    }()
    
    @objc func favorite2() {

        if isActive2 {
            isActive2 = false
            favButton.setImage(UIImage(named: "heart1"), for: .normal)
        } else {
               isActive2 = true
                favButton.setImage(UIImage(named: "heart2"), for: .normal)
            
            let name2 = nameLabel.text ?? ""
            _ = bookImage.image ?? UIImage(systemName: "house")
            
//            FavoriteService.shared.addToFavorite(favBook: Fav(image: englishBook.image, name: name2))

        }
        
    }
//    func favouriteButtonState() {
//        if ( UserDefaults.standard.bool(forKey: "heart")) {
//            favButton.image = UIImage(named: "heart2")
//        } else {
//            favButton.image = UIImage(named: "heart1")
//        }
//    }
    
    func setCell2(book2: Book) {
        bookImage.image = UIImage(named: book2.image)
        nameLabel.text = book2.name
        autherLabel.text = book2.by
//        categoryLabel.text = book2.category
        self.englishBook = book2
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        contentView.addSubview(bookImage)
        contentView.addSubview(nameLabel)
        contentView.addSubview(autherLabel)
//        contentView.addSubview(categoryLabel)
        contentView.addSubview(favButton)
      //  favouriteButtonState()
        contentView.clipsToBounds = false
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        NSLayoutConstraint.activate(
          [
            
            
            bookImage.leadingAnchor.constraint(lessThanOrEqualTo: self.leadingAnchor),
            bookImage.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            bookImage.topAnchor.constraint(equalTo: self.topAnchor, constant: 20),
            bookImage.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 16),
            bookImage.widthAnchor.constraint(equalToConstant: 10),
            bookImage.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 100),
//            bookImage.heightAnchor.constraint(equalToConstant: 140),
//            bookImage.widthAnchor.constraint(equalToConstant: 140),
//
            nameLabel.topAnchor.constraint(equalTo: bookImage.topAnchor, constant: 100),
            nameLabel.leadingAnchor.constraint(equalTo: bookImage.trailingAnchor, constant: 10),
            
            
            autherLabel.topAnchor.constraint(equalTo: nameLabel.topAnchor, constant: 50),
            autherLabel.leadingAnchor.constraint(equalTo: bookImage.trailingAnchor, constant: 10),
            
        ])
      
       
    }
}


