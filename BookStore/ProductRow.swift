//
//  ProductRow.swift
//  BookStore
//
//  Created by 옌 on 2023/08/10.
//

import SwiftUI

struct ProductRow: View {
    
    let product: Product
    var body: some View {
        HStack{
            Image(product.productImage[0])
                .resizable()
                .scaledToFit()
                .frame(width: 40,height: 40)
            Text(product.productName)
                .font(.headline)
            Spacer()
            Text(product.user.name)
                .font(.caption)
        } //Hstack
    }
}

struct ProductRow_Previews: PreviewProvider {
    static var previews: some View {
        ProductRow(product: Product(productName: "메리골드", productImage:["메리골드"], author: "윤정은", publisher: "북로망스", publicationDate: "2023-03-06",user: User.라이언))
    }
}
