//
//  SecondViewUIView.swift
//  observed&EnvironmentObject
//
//  Created by Emiliano Diaz on 30/05/2023.
//

import SwiftUI

struct SecondViewUIView: View {
    
    @ObservedObject var num = ramdomNumber()
    
    
    var body: some View {
        VStack {
            Button(action: {
                self.num.contador += 1
            }){
                HStack{
                    Image(systemName: "play.fill")
                        .foregroundColor(.white)
                    Text("Contador = \(self.num.contador)")
                        .foregroundColor(.white)
                        .bold()
                        .font(.headline)
                }.padding(.all)
            }.background(Color.indigo)
                .cornerRadius(12)
        }
    }
}


struct SecondViewUIView_Previews: PreviewProvider {
    static var previews: some View {
        SecondViewUIView()
    }
}
