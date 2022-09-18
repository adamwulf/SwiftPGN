//
//  File.swift
//  
//
//  Created by Adam Wulf on 9/18/22.
//

import Foundation

public struct Game {
    public enum Color {
        case white
        case black
    }
    public enum Result {
        case checkmate(_ winner: Color)
        case resignation(_ resigner: Color)
        case draw
        case stalemate
        case timeout(_ outOfTime: Color)
    }
    public enum Tag {
        case event(_ value: String)
        case site(_ value: String)
        case start(_ date: Date)
        case round(_ round: Int)
        case username(_ username: String, color: Color)
        case end(_ date: Date)
        case elo(_ elo: Int, color: Color)
        case result(_ result: Result)
        case tag(_ tag: String, _ value: String)
        case timeControl(_ timecontrol: String)
        case link(_ link: URL)
    }

    public var tags: [Tag] = []
}
