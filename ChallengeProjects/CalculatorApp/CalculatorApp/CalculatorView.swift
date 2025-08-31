//
//  CalculatorView.swift
//  CalculatorApp
//
//  ChallengeProjects
//

import SwiftUI

struct CalculatorView: View {
    // 最初に利用する変数を定義しています
    // @State: プロパティが変更されたときにビューを自動的に再描画するためのおまじない
    @State var firstNumber: String = ""
    @State var secondNumber: String = ""
    @State var result: String = "?"
    @State var thirdNumber: String = ""
    @State var forthNumber: String = ""
    @State var result2: String = "?"
    
    var body: some View {
        VStack(spacing: 20) {
            Text("足し算電卓")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            HStack(spacing: 10) {
                // 1つ目の入力フィールド
                // @Stateのついたプロパティには$をつけるというおまじない。
                TextField("?", text: $firstNumber)
                    .keyboardType(.numberPad)
                    .frame(width: 60)
                    .multilineTextAlignment(.center)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Text("+")
                    .font(.title)
                
                // 2つ目の入力フィールド
                TextField("?", text: $secondNumber)
                    .keyboardType(.numberPad)
                    .frame(width: 60)
                    .multilineTextAlignment(.center)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Text("=")
                    .font(.title)
                
                // 結果の表示
                Text(result)
                    .font(.title)
                    .fontWeight(.bold)
                    .frame(width: 100)
                    .multilineTextAlignment(.center)
            }
            
            // 計算ボタン
            Button(action: {
                calculateSum()
            }) {
                Text("計算する")
                    .fontWeight(.bold)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding(.horizontal)
            
            Spacer()
            
            Text("引き算電卓")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            HStack(spacing: 10){
                
                TextField("?", text: $thirdNumber)
                    .keyboardType(.numberPad)
                    .frame(width: 60)
                    .multilineTextAlignment(.center)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Text("-")
                    .font(.title)
                
                TextField("?", text: $forthNumber)
                    .keyboardType(.numberPad)
                    .frame(width: 60)
                    .multilineTextAlignment(.center)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Text("=")
                    .font(.title)
                
                Text(result2)
                    .font(.title)
                    .fontWeight(.bold)
                    .frame(width: 100)
                    .multilineTextAlignment(.center)
                
                Button(action: {
                    calculateSum2()
                }){
                    Text("計算する")
                        .fontWeight(.bold)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding(.horizontal)
                
                Spacer()
                
            }
        }
        .padding()
        
        Divider()
        
    }
    
    // 足し算の処理
    func calculateSum() {
        // TODO: - Challenge1
        // ここに計算ロジックを記述し、計算結果を表示できるようにしてみよう
        if let firstNumberDouble = Double(firstNumber), let secondNumberDouble = Double(secondNumber){
            let resultDouble = firstNumberDouble + secondNumberDouble
            result = String(resultDouble)}else{result = "error"}
    }
    
    func calculateSum2() {
        if let thirdNumberDouble = Double(thirdNumber), let forthNumberDouble = Double(forthNumber){
            let resultDouble2 = thirdNumberDouble - forthNumberDouble
            result2 = String(resultDouble2)
        }else{
            result2 = "error"
        }
        
    }
    
}

#Preview {
    CalculatorView()
}
