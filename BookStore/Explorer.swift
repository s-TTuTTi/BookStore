//
//  Explorer.swift
//  BookStore
//
//  Created by 옌 on 2023/08/10.
//

import SwiftUI



struct Explorer: View {
    
    let store = Store()
    //모든 곳에서 사용 가능
    var body: some View {
        NavigationView{
            List(store.products){product in
                NavigationLink(destination: ContentView(product: product)){
                    ProductRow(product: product)
                }//NaviLink
            }//List
            .navigationTitle("BookStore")
        }//NaviView
        
    }
}

struct Explorer_Previews: PreviewProvider {
    static var previews: some View {
        Explorer()
    }
}
