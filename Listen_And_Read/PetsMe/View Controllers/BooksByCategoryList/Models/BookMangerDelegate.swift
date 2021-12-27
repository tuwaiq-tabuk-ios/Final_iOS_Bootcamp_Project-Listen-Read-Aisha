//
//  BookMangerDelegate.swift
//  PetsMe
//
//  Created by Aisha Ali on 12/25/21.
//

import Foundation
protocol BookMangerDelegate {
    func didUpdateBook(_ bookManager : BookManager, _ books: [Books], _ nextUrl : BookModel)
    func didFailWithError(error : Error)
}
