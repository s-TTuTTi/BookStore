//
//  BookStoreApp.swift
//  BookStore
//
//  Created by Ted Kim on 2023/07/27.
//

import SwiftUI

@main
struct BookStoreApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(product: Product(productName: "메리골드", productImage:["메리골드"], author: "윤정은", publisher: "북로망스", publicationDate: "2023-03-06",user: User.라이언))
        }
    }
}
