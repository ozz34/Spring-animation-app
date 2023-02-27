//
//  DataStore.swift
//  HW3.1
//
//  Created by Иван Худяков on 18.09.2022.
//

import Foundation
import SpringAnimation

class DataStore {
    static let shared = DataStore()
    
    let allPresent = AnimationPreset.allCases
    let allCurve = AnimationCurve.allCases
    
    private init() {}
}
