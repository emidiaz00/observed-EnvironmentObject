//
//  ContentView.swift
//  observed&EnvironmentObject
//
//  Created by Emiliano Diaz on 30/05/2023.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var numberRamdom = ramdomNumber()
    var valor = 3
    
    var body: some View {
        VStack {
            Text("\(self.numberRamdom.number)")
                .font(.title)
                .bold()
            if self.numberRamdom.number == self.valor {
                Text("Es igual")
                    .font(.title)
                    .bold()
                    .foregroundColor(.indigo)
            } else {
                Text("Es diferente")
                    .font(.title)
                    .bold()
                    .foregroundColor(.red)
            }
            HStack {
                Button(action: {
                    self.numberRamdom.start()
                }) {
                    HStack {
                        Image(systemName: "play.fill")
                            .foregroundColor(.white)
                        Text("Start")
                            .foregroundColor(.white)
                            .bold()
                            .font(.headline)
                    }.padding(.all)
                }.background(Color.indigo)
                    .cornerRadius(18)
                Button(action: {
                    self.numberRamdom.stop()
                }) {
                    HStack {
                        Image(systemName: "stop.fill")
                            .foregroundColor(.white)
                        Text("Stop")
                            .foregroundColor(.white)
                            .bold()
                            .font(.headline)
                    }.padding(.all)
                }.background(Color.red)
                    .cornerRadius(18)
                
            }
            SecondViewUIView()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
