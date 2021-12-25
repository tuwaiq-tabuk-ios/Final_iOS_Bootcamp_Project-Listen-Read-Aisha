//
//  VC+Ext.swift
//  SignIn_ProtoType
//
//  Created by Aisha Ali on 11/27/21.
//

import Foundation
import UIKit



extension Home: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
  
  
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    
    if collectionView == self.bookOfTheDayCollection {
      return bookOfTheDay.count

    } else {
      return bookByCtegory.count
    }
  }

  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    
    if collectionView == self.bookOfTheDayCollection {
      
      let cellA = bookOfTheDayCollection.dequeueReusableCell(withReuseIdentifier: "BookOfTheDayCell", for: indexPath) as! BookOfTheDayCell
      
      cellA.bookOfTheDayImage.image = UIImage(named: bookOfTheDay[indexPath.row].myImages)
      cellA.bookOfTheDayLabel.text = "\(bookOfTheDay[indexPath.row].name)"
      cellA.bookOfTheDay_View.layer.cornerRadius = 20

      return cellA
      
    } else {
      
      let cellB = categoriesCollection.dequeueReusableCell(withReuseIdentifier: "BookByCtegoryCell", for: indexPath) as! BookByCtegoryCell
      
      cellB.categoriesCollection.image = UIImage(named: bookByCtegory[indexPath.row].myImages)
      cellB.bookByCategory_View.layer.cornerRadius = 20
      cellB.categortName_Label.text = "\(bookByCtegory[indexPath.row].name)"
      
      return cellB
    }
    
  }
}





