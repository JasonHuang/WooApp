//
//  HomePageView.swift
//  WooApp
//
//  Created by Yale Huang on 2024/3/21.
//

import SwiftUI

struct Product: Identifiable {
    var id = UUID()
    var title: String
    var price: String
    var primaryImage: String
    var imageNames: [String]
    var description: String
}

struct HomePageView: View{
    
    // 示例数据
    let products: [Product] = [
        Product(title: "Product 1", price: "$10", primaryImage: "product1", imageNames: ["product1"],description: "desc 1"),
        Product(title: "Product 2", price: "$20", primaryImage: "product2", imageNames: ["product2"],description: "desc 2"),
        // 添加更多商品...
    ]
    
    var body: some View {
        ScrollView{
            VStack(alignment: .leading){
                HStack{
                    Image(systemName: "applelogo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50,height: 50)
                    
                    Spacer()
                    
                    Button(action:{
                        
                    }){
                        Image(systemName: "line.horizontal.3")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width:30,height: 30)
                    }
                }
                .padding(.horizontal)
                
                Image("banner") // 更换为你的banner图片
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 200)
                    .clipped()
                                
                Text("New Arrivals")
                    .font(.title)
                    .padding(.leading)
                
                // 商品瀑布流
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 150))]) {
                    ForEach(products) { product in
                        NavigationLink(destination: ProductDetailView(product: product)) {
                            VStack {
                                Image(product.primaryImage)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(height: 150)
                                    .clipped()
                                
                                Text(product.title)
                                Text(product.price)
                            }
                            .padding()
                            .background(Color.white)
                            .cornerRadius(10)
                            .shadow(radius: 5)
                        }
                    }
                }
                .padding()
                
                Text("Best Sellers")
                    .font(.title)
                    .padding(.leading)
                
                // 重复上面的瀑布流或添加其他布局来展示Best Sellers
                
                Spacer()
                
                Text("© 2024 Lefan Jewelry")
                    .font(.footnote)
                    .padding()
            }
        }
    }
}

#Preview {
    HomePageView()
}
