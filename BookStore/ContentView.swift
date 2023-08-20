//
//  ContentView.swift
//  BookStoreFT
//
//  Created by Ted Kim on 2023/07/03.
//

import SwiftUI

struct ContentView: View {
    
    let product : Product
    
    @State private var currentImageIndex = 0
    
    let images: [String] = [ "자기관리론_1", "자기관리론_2", "자기관리론_3", "자기관리론_4"]
    
    // Button
    @State var isSelected: Bool = false
    @State var isHeart: Bool = false
    @State var isCart: Bool = false
    @State var isShare: Bool = false

    var body: some View {
        VStack(alignment: .leading){
            productImage
            productDescription
            Spacer()
            buyNow
        }
    }
}

private extension ContentView {
    
    var productImage: some View {
        //레이아웃 역할을 하는 stack
        ZStack{
            Image(product.productImage[currentImageIndex])
                .resizable()
                .scaledToFit()
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.width*2/3)
            .background(Color(red:0.8, green: 0.8,blue:0.8))
            
            //==== Left & Right Arrow Button ====
            HStack {
                // show prev image
                Button {
                    currentImageIndex -= 1
                } label: {
                    Image(currentImageIndex > 0 ? "left_arrow" : "left_arrow_gray")
                }
                
                .frame(width: 44, height: 44)
                .disabled(!(currentImageIndex>0 ))
                
                Spacer() // 여백
                
                // show next image
                Button {
                    currentImageIndex += 1
                } label: {
                    Image(currentImageIndex < images.count - 1 ? "right_arrow" : "right_arrow_gray")
                }
                
                .frame(width: 44, height: 44)
                .disabled(!(currentImageIndex < images.count - 1))
                // Image의 갯수가 달라질 수 있기에 .countf로 표시함 !!
                
            } // ==== Arrow ====
            .padding()
        } // ==== Top Layout ====
    }
    
    var productDescription: some View {
        VStack(alignment: .leading, spacing: 10) {
            
            HStack { // ==== Title ====
                Text("베스트셀러")
                    .foregroundColor(.white)
                    .padding(.horizontal, 10)
                    .padding(.vertical, 5)
                    .background(Color.blue)
                    .cornerRadius(3)
                    .font(.caption)
                    .padding(-5)
                Text(product.productName)
                    .padding(.leading)
                    .font(.title)
                
                Spacer()
                
                Button { // 좋아요 버튼
                    //action : do something
                    isSelected.toggle()
                    
                } label: { //image View
                    Image(isSelected ? "btn_heart_filled" : "btn_heart_outline" )
                        .resizable()
                        .frame(width: 50, height: 50, alignment: .leading)
                    }
            } // ==== Title ====
            
            HStack{
                Image(product.user.image)
                    .resizable()
                    .frame(width: 40, height: 40, alignment: .leading)
                    .clipShape(Circle())
                Text(product.user.name)
            }
        
            VStack(spacing: 5){
                HStack{
                    HStack{
                        Text("저자")
                            .frame(width: 60, alignment: .leading)
                        Text(product.author)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                    HStack{
                        Text("출판사")
                            .frame(width: 60, alignment: .leading)
                        Text(product.publisher)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                }
                
                HStack{
                    HStack{
                        Text("출간일")
                            .frame(width: 60, alignment: .leading)
                        Text(product.publicationDate)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                }
                
                HStack{
                    HStack{
                        Text(" ")
                    }
                    .frame(maxWidth: .infinity,alignment: .leading)
                }
                
                
                VStack(alignment: .leading, spacing : 10){
                    HStack{
                        HStack{
                            Text("책 리뷰 ")
                                .font(.title2.bold())
                            Text("14")
                                .foregroundColor(.blue)
                                .font(.title3.bold())
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        Spacer()
                        HStack{
                            HStack{
                                Image(systemName : "star.fill")
                                    .padding(-4)
                                Image(systemName : "star.fill")
                                    .padding(-4)
                                Image(systemName : "star.fill")
                                    .padding(-4)
                                Image(systemName : "star.fill")
                                    .padding(-4)
                                Image(systemName : "star.fill")
                                    .padding(-4)
                            }
                            
                            .foregroundColor(.red)
                            .frame(alignment: .leading)
                            Text("4.9")
                        }
                        
                        .padding(EdgeInsets(top: -2, leading: 0, bottom: 0, trailing: 0))

                        .frame(maxWidth: .infinity,alignment: .leading)
                    }
                    HStack{
                        Text("책 소개")
                            .font(.title2.bold())
                        Spacer()
                        Image(systemName :"chevron.right")
                            .padding(10)
                    }
                    HStack{
                        Text("『인간관계론』과 짝을 이루는 데일 카네기 최고의 역작 걱정이 내 인생을 망치기 전에 반드시 읽어야 할 책 ! 워런 버핏이 직접 적용한, 걱정 없는 인생의 핵심 원리 세계 최초의 ‘걱정 극복 실험실’에서 탄생한 마법의 공식 수록! '나는 데일 카네기에게 인생에서 가장 중요한 것을 배웠다.' _워런 버핏")
                            .tracking(1)
                            .lineSpacing(4)
                            .lineLimit(6)

                             
                    }
                    
                }
                
                
            }
        }
        
        .padding(EdgeInsets(top: 0, leading: 20, bottom: -30, trailing: 20))
    }
    
    var buyNow: some View {
        HStack() {
            HStack{
                Button {
                    //action
                    self.isHeart.toggle()
                } label: {
                    Image(systemName : isHeart ? "heart.fill" : "heart")
                        .padding(.leading, 20)
                }
                Button {
                    //action
                    self.isCart.toggle()
                } label: {
                    Image(systemName : isCart ?  "cart.fill":"cart")
                        .padding(.leading, 30)
                }
                
                Button {
                    //action
                    self.isShare.toggle()
                } label: {
                    Image(systemName : isShare ?  "square.and.arrow.up.fill":"square.and.arrow.up")
                        .padding(.leading, 30)
                }
            
            }
            .font(.system(size: 25))

            Spacer()
            Spacer()
        Button{
                            // 바로구매 버튼을 클릭했을 때 실행되는 액션
                        }
        label:{
                        Text("바로구매")}
                    .foregroundColor(.white)
                    .padding(.horizontal, 16)
                    .padding(.vertical, 8)
                    .background(Color.blue)
                    .cornerRadius(8)
                    .padding(.trailing, 15)
                    }
                        .padding(16)
                        .background(Color(red:0.9, green: 0.9,blue:0.9))
        
            
        }
        
    }
    
    
    struct LikeButton: View {
        @Binding var isSelected: Bool
        
        var body: some View {
            Button(action: {
                isSelected.toggle()
            }, label: {
                Image(isSelected ? "btn_heart_filled" : "btn_heart_outline")
                    .resizable()
                    .frame(width: 50, height: 50, alignment: .leading)
            })
        }
    }
    
    // MARK: - Previews
    
    struct ContentView_Preview: PreviewProvider {
        static var previews: some View {
            ContentView(product: Product(productName: "메리골드", productImage:["메리골드"], author: "윤정은", publisher: "북로망스", publicationDate: "2023-03-06",user: User.라이언))
        }
    }


