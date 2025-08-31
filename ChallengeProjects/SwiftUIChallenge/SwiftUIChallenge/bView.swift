//
//  SwiftUIChallenge
//  画像と同じようなViewを実装してみよう！
//
// B. 二重に丸を配置
//

import SwiftUI

struct bView: View {
    var body: some View {
        
        ZStack{
            Circle()
                .fill(Color.yellow)
                .frame(width: 100)
            Circle()
                .fill(Color.orange)
                .frame(width: 50)
        }
    }
}

#Preview {
    bView()
}
