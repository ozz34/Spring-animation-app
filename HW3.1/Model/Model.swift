//
//  Model.swift
//  HW3.1
//
//  Created by Иван Худяков on 16.09.2022.
//

import Foundation

struct Animation {
    let name: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    var description: String {
        """
        \(name)
        \(curve)
        \(String(format: "%.02f", force))
        \(String(format: "%.02f", duration))
        \(String(format: "%.02f", delay))
        """
    }
}

extension Animation {
    static func getAnimation() -> Animation {
                Animation(name: DataStore.shared.allPresent.randomElement()?.rawValue ?? "pop",
                                         curve: DataStore.shared.allCurve.randomElement()?.rawValue ?? "linear",
                                         force: Double.random(in: 0.0..<1.0),
                                         duration: Double.random(in: 0.0..<1.0),
                                         delay: Double.random(in: 0.0..<1.0))
        }
}
