////
////  CollectionVC+Ext.swift
////  ProtoType-CollectionsView-"Aisha_Ali"
////
////  Created by Aisha Ali on 12/1/21.
////
//
//import UIKit
//
//
//
//
//extension HomeCollectionVC: UICollectionViewDelegateFlowLayout {
//  
//  func collectionView(_ collectionView: UICollectionView,
//                      layout collectionViewLayout: UICollectionViewLayout,
//                      sizeForItemAt indexPath: IndexPath) -> CGSize {
//    
//    if let layout = collectionViewLayout as? UICollectionViewFlowLayout{
//      return layout.itemSize
//    }else{
//      
//      return .zero
//      //      CGSize(width: 0, height: 0)
//    }
//  }
//  
//  
//  func configureSize (numberOfHorizantalCells: CGFloat, marginsBetweenCells:CGFloat){
//    
//    guard let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout else {
//      
//      return
//    }
//    
//    print("\n\n\(#file) - \(#function)\n\n")
//    
//    
//    
//    
//    
//    
//    
//    
//    
//    //*** Cell Spacing
//    
//    
//    
//    let totalMarginBetweenCells:CGFloat = marginsBetweenCells * (numberOfHorizantalCells - 1)
//    print(" - totalMarginBetweenCells: \(totalMarginBetweenCells)")
//    
//    let marginPerCell:CGFloat = totalMarginBetweenCells / numberOfHorizantalCells
//    print(" - marginPerCell: \(marginPerCell)")
//    
//    
//    let frameWidth = collectionView.frame.width
//    
////    let frameWidth:CGFloat = 400
//    print(" - frameWidth: \(frameWidth)")
//    
//    let cellWidth = (frameWidth/numberOfHorizantalCells) - marginsBetweenCells
//    
//    print(" - cellWidth: \(cellWidth)")
//    
//    let cellHeight = cellWidth
//    
//    layout.minimumLineSpacing = marginPerCell
//    layout.minimumInteritemSpacing = 0
//    
//    
//    layout.estimatedItemSize = .zero
//    layout.itemSize = CGSize(width: cellWidth, height: cellHeight)
//    print(" - layout.itemSize: \(layout.itemSize)")
//    
//    
//  }
//  
//}
//
//
//
//
//
