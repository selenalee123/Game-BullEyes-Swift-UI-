//
//  Game.swift
//  Bulleyes
//
//  Created by kim ly on 2022-07-11.
//

import Foundation

struct Game{
    var target: Int = 42
    var score: Int = 0
    var round: Int = 1
    
    func points(sliderValue: Int) -> Int{
        return 100 - abs(sliderValue - target)
    }
}
