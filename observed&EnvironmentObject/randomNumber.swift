//
//  randomNumber.swift
//  observed&EnvironmentObject
//
//  Created by Emiliano Diaz on 30/05/2023.
//

import Foundation
import SwiftUI
import Combine

class ramdomNumber: ObservableObject {
    @Published var number : Int = 0
    @Published var contador : Int = 1
    var timer = Timer()
    
    init() {
        
    }
    
    func start() {
        self.timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) {
            (timer) in self.number = Int.random(in: 0 ..< 5)
        }
    }
    
    func stop() {
        timer.invalidate()
    }
}
