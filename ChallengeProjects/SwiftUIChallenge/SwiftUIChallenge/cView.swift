//
//  SwiftUIChallenge
//  画像と同じようなViewを実装してみよう！
//
// C. テキストを四角形の左下に配置
//

import SwiftUI

struct cView: View {
    var body: some View {
        ZStack{
            Rectangle()
                .fill(Color.green)
                .frame(width: 200, height: 100)
            VStack{
                Text(" ")
                
                Text(" ")
                
                Text(" ")
                
                HStack{
                    
                    Text("hello world")
                        .foregroundColor(.white)
                    Text("                     ")
                }

                }
        }
    }
}

#Preview {
    cView()
}
