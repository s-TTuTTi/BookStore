//
//  User.swift
//  BookStore
//
//  Created by 옌 on 2023/08/10.
//

import Foundation

class User: Identifiable{
    var id = UUID()
    
    var name: String
    var image: String
    
    //생성자
    init(name: String,image : String){
        self.name = name
        self.image = image
    }
    
    static let 키키 = User(name: "키키", image : "키키")
    static let 춘식 = User(name: "춘식", image : "춘식")
    static let 라이언 = User(name: "라이언", image : "라이언")
    static let 어피치 = User(name: "어피치", image : "어피치")
    
}
