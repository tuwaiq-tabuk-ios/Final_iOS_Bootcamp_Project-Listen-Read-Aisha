//
//  Data.swift
//  eBook
//
//
//

import UIKit

struct Book {
    var image: String
    var name: String
    var by: String
    var category: String
    var BooksInfo: Array<BookInformation>
  
}
struct BookInformation {
    let bookImage: String
    let bookName: String
    let auther: String
    let pageNumber: String
}


struct Fav {
//    var id: String
    var image: String
    var name: String
   
}



let bookList2 = [
    Book(image: "Alice’s Adventures in Wonderland", name: "Words That Change Minds", by: "by: Shelle Rose Charvet", category: "Business & Economics", BooksInfo: [
        BookInformation(bookImage: "11", bookName: "Words That Change Minds", auther: "by: Shelle Rose Charvet", pageNumber: "318")]),

    Book(image: "Alice’s Adventures in Wonderland", name: "It Ends with Us", by: "by: Colleen Hoover", category: "Romance", BooksInfo: [
        BookInformation(bookImage: "12", bookName: "Words That Change Minds", auther: "Colleen Hoover", pageNumber: "385")]),

    Book(image: "Alice’s Adventures in Wonderland", name: "The Power of Habit", by: "by:Charles Duhigg", category: "Business & Economics", BooksInfo: [
        BookInformation(bookImage: "13", bookName: "Words That Change Minds", auther: "by:Charles Duhigg", pageNumber: "276")]),

    Book(image: "Alice’s Adventures in Wonderland", name: "The Question Book", by: "by:Mikael Krogerus..", category: "Relationships & Lifestyle", BooksInfo: [
        BookInformation(bookImage: "14", bookName: "The Question Book", auther: "by:Mikael Krogerus, Roman Tschäppeler", pageNumber: "133")]),

    Book(image: "Alice’s Adventures in Wonderland", name: "The Power of Now ", by: "by:Eckhart Tolle", category: "human development", BooksInfo: [
        BookInformation(bookImage: "15", bookName: "The Power of Now", auther: "by:Eckhart Tolle", pageNumber: "258")]),

    Book(image: "Alice’s Adventures in Wonderland", name: "Finish What You Start", by:"by:Peter Hollins", category: "Business & Economics", BooksInfo: [
        BookInformation(bookImage: "16", bookName: "Finish What You Start: The Art of Following Through, Taking Action, Executing, & Self-Discipline", auther: "by:Peter Hollins", pageNumber: "133")]),

    Book(image: "Alice’s Adventures in Wonderland", name: "Think Again", by: "by:Walter Sinnott-Armstrong", category: "Politics & Philosophy ", BooksInfo: [
        BookInformation(bookImage: "17", bookName: "Think Again: How to Reason and Argue", auther: "by:Walter Sinnott-Armstrong", pageNumber: "256")]),

    Book(image: "Alice’s Adventures in Wonderland", name: "365 Days", by: "by:Meadows, Martin", category: "Relationships & Lifestyle", BooksInfo: [
        BookInformation(bookImage: "Alice’s Adventures in Wonderland", bookName: "365 Days With Self-Discipline", auther: "by:Meadows, Martin", pageNumber: "697")]),
    
    Book(image: "Alice’s Adventures in Wonderland", name: "The Power of Now ", by: "by:Eckhart Tolle", category: "human development", BooksInfo: [
        BookInformation(bookImage: "15", bookName: "The Power of Now", auther: "by:Eckhart Tolle", pageNumber: "258")]),

    Book(image: "Alice’s Adventures in Wonderland", name: "Finish What You Start", by:"by:Peter Hollins", category: "Business & Economics", BooksInfo: [
        BookInformation(bookImage: "16", bookName: "Finish What You Start: The Art of Following Through, Taking Action, Executing, & Self-Discipline", auther: "by:Peter Hollins", pageNumber: "133")]),

    Book(image: "Alice’s Adventures in Wonderland", name: "Think Again", by: "by:Walter Sinnott-Armstrong", category: "Politics & Philosophy ", BooksInfo: [
        BookInformation(bookImage: "17", bookName: "Think Again: How to Reason and Argue", auther: "by:Walter Sinnott-Armstrong", pageNumber: "256")]),

    Book(image: "Alice’s Adventures in Wonderland", name: "365 Days", by: "by:Meadows, Martin", category: "Relationships & Lifestyle", BooksInfo: [
        BookInformation(bookImage: "Alice’s Adventures in Wonderland", bookName: "365 Days With Self-Discipline", auther: "by:Meadows, Martin", pageNumber: "697")]),
    
    Book(image: "Alice’s Adventures in Wonderland", name: "The Power of Now ", by: "by:Eckhart Tolle", category: "human development", BooksInfo: [
        BookInformation(bookImage: "15", bookName: "The Power of Now", auther: "by:Eckhart Tolle", pageNumber: "258")]),

    Book(image: "Alice’s Adventures in Wonderland", name: "Finish What You Start", by:"by:Peter Hollins", category: "Business & Economics", BooksInfo: [
        BookInformation(bookImage: "16", bookName: "Finish What You Start: The Art of Following Through, Taking Action, Executing, & Self-Discipline", auther: "by:Peter Hollins", pageNumber: "133")]),

    Book(image: "Alice’s Adventures in Wonderland", name: "Think Again", by: "by:Walter Sinnott-Armstrong", category: "Politics & Philosophy ", BooksInfo: [
        BookInformation(bookImage: "17", bookName: "Think Again: How to Reason and Argue", auther: "by:Walter Sinnott-Armstrong", pageNumber: "256")]),

    Book(image: "Alice’s Adventures in Wonderland", name: "365 Days", by: "by:Meadows, Martin", category: "Relationships & Lifestyle", BooksInfo: [
        BookInformation(bookImage: "Alice’s Adventures in Wonderland", bookName: "365 Days With Self-Discipline", auther: "by:Meadows, Martin", pageNumber: "697")]),

]





