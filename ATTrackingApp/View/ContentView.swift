//
//  ContentView.swift
//  ATTrackingApp
//
//  Created by sasaki.ken on 2021/11/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Button(action: {
            
        }) {
            Text("アラート表示")
                .foregroundColor(.white)
                .font(.title2)
                .fontWeight(.medium)
                .padding(.horizontal, 50)
                .padding(.vertical, 10)
                .background(Color.black)
                .cornerRadius(25)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
