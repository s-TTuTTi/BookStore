//
//  Store.swift
//  BookStore
//
//  Created by 옌 on 2023/08/10.
//

import Foundation

//Product

class Store {
    var products: [Product]
    
    init(){
        self.products = [
            Product(productName: "메리골드", productImage:["메리골드"], author: "윤정은", publisher: "북로망스", publicationDate: "2023-03-06",user: User.라이언),
            Product(productName: "비가 오면 열리는 상점", productImage:["상점"], author: "유영광", publisher: "플레이하우스", publicationDate: "2023-03-06",user: User.춘식),
            Product(productName: "감정은 사라져도 결과는 남는다", productImage:["감정"], author: "이해인", publisher: "필름", publicationDate: "2023-03-06",user: User.어피치),
            Product(productName: "인복, 그게 참 묘하다", productImage:["인복"], author: "김나위", publisher: "다연", publicationDate: "2023-03-06",user: User.키키)
            ]
    }
}
