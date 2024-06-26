//
//  ErrorView.swift
//  CurrencyConverter
//
//  Created by Gustavo Lira on 01/05/24.
//

import SwiftUI

struct ErrorView: View {
    
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        VStack{
            
            Spacer()
            
            Text("Oops! an error occurred!")
                .font(.title2)
                .padding()
            
            Group {
                Text("We could not successfully fetch exchange rate information")
                Text("Try again in a few minutes")
            }.multilineTextAlignment(.center)
            
            Image("error")
                .resizable()
                .frame(width: 300, height: 300)
            
            Spacer()
            
            Button(action: {
                dismiss()
            }, label: {
                Text("Dismiss")
                    .frame(width: 350, height: 50)
                    .foregroundColor(.white)
                    .background(Color.appColor)
                    .cornerRadius(200)
            })
        }.padding(30)
    }
}

#Preview {
    ErrorView()
}
