//
//  Product.swift
//  BookStore
//
//  Created by 옌 on 2023/08/10.
//

import Foundation

struct Product: Identifiable{
    var id = UUID()
    
    
    let productName: String
    let productImage: [String] //image 갯수가 여러개
    
    let author: String
    let publisher: String
    let publicationDate: String
    
    let user : User
}
//감정상점인복

