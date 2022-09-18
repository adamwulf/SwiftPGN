//
//  File.swift
//  
//
//  Created by Adam Wulf on 9/18/22.
//

import Foundation

extension String {
    var lines: [String] {
        var output: [String] = []
        enumerateLines { line, stop in
            output.append(line)
        }
        return output
    }
}
