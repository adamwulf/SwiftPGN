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
        case tag(name: String, value: String)

        var name: String {
            switch self {
            case .tag(let name, _):
                return name
            }
        }

        var value: String {
            switch self {
            case .tag(_, let value):
                return value
            }
        }
    }

    public var tags: [Tag] = []
}

extension Game.Tag: RawRepresentable {
    public typealias RawValue = String

    static let namePattern = try! NSRegularExpression(pattern: "\\[([a-zA-Z0-9]+)", options: .caseInsensitive)
    static let valuePattern = try! NSRegularExpression(pattern: "\"([^\"]+)\"\\]", options: .caseInsensitive)

    public init?(rawValue: String) {
        let rawValue = rawValue.trimmingCharacters(in: .whitespaces)
        guard rawValue.hasPrefix("["), rawValue.hasSuffix("]") else { return nil }

        /* create the regular expression with options */
        guard
            let nameResult = Self.namePattern.firstMatch(in: rawValue, range: NSRange(location: 0, length: rawValue.utf8.count)),
            let valueResult = Self.valuePattern.firstMatch(in: rawValue, range: NSRange(location: 0, length: rawValue.utf8.count))
        else {
            return nil
        }

        let nameStart = rawValue.index(rawValue.startIndex, offsetBy: nameResult.range(at: 1).lowerBound)
        let nameEnd = rawValue.index(rawValue.startIndex, offsetBy: nameResult.range(at: 1).upperBound)
        let name = String(rawValue[nameStart..<nameEnd])

        let valueStart = rawValue.index(rawValue.startIndex, offsetBy: valueResult.range(at: 1).lowerBound)
        let valueEnd = rawValue.index(rawValue.startIndex, offsetBy: valueResult.range(at: 1).upperBound)
        let value = String(rawValue[valueStart..<valueEnd])

        self = .tag(name: name, value: value)
    }

    public var rawValue: String {
        return "[\(name) \"\(value)\"]"
    }
}
