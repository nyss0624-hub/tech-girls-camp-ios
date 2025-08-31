//
//  SwiftUIChallenge
//  画像と同じようなViewを実装してみよう！
//
// E. 商品アイテム
//

import SwiftUI

struct eView: View {
    var body: some View {
        ZStack{
            Rectangle()
                .fill(Color.gray)
                .frame(width: 360, height: 300)
                .cornerRadius(20)
                .opacity(0.5)
            VStack{
                
                AsyncImage(url: URL(string: "https://picsum.photos/300/200")!)
                    .cornerRadius(20)
                
                Text("風景")
                    .foregroundColor(.white)
                    .font(.title)
                
                Text("旅費：〜円")
            }
        }
    }
}

#Preview {
    eView()
}
