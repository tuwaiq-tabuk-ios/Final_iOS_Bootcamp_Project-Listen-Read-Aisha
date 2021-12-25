//
//  BookOfTheDay.swift
//  PetsMe
//
//  Created by Aisha Ali on 12/25/21.
//

import UIKit


class BookOfTheDay: Equatable, Codable{
  
  var name:String
  var bookCover: String
//  var : String?
//  var dateCreated: Date
  let id:String
  
  //lhs: left hand side -- rhs: Right hand side
  static func ==(lhs: BookOfTheDay, rhs: BookOfTheDay) -> Bool {
    return lhs.name == rhs.name
      
//      && lhs.serialNumber == rhs.serialNumber
      && lhs.bookCover == rhs.bookCover
//      && lhs.dateCreated == rhs.dateCreated
    
  }
  
  

  
  init(name:String, bookCover: String) {
    self.name = name
    self.bookCover = bookCover
    self.id = UUID().uuidString
    
    
  }
}
