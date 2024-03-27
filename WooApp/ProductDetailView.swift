//
//  ProductDetailView.swift
//  WooApp
//
//  Created by Yale Huang on 2024/3/21.
//

import SwiftUI

struct ProductDetailView: View {
    var product: Product
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                TabView {
                    ForEach(product.imageNames, id: \.self) { imageName in
                        Image(imageName)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding()
                    }
                }
                .tabViewStyle(PageTabViewStyle())
                .frame(height: 300)
                
                Text(product.title)
                    .font(.title)
                    .padding()
                
                Text(product.price)
                    .font(.headline)
                    .padding([.leading, .bottom])
                
                Text("Product Description")
                    .font(.headline)
                    .padding([.leading, .top])
                
                Text(product.description)
                    .padding()
            }
        }
        .navigationTitle(Text(product.title))
    }
}


#Preview {
    ProductDetailView(product: Product(
        title: "示例产品",
        price: "$99",
        primaryImage: "primary image",
        imageNames: ["your_image_name_1", "your_image_name_2"],
        description: "这是一个示例产品的描述。"
    ))
}
