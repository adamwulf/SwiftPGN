import Foundation

public class Parser {
    public static func parse(url: URL) -> [Game] {
        return []
    }

    public static func parse(path: String) throws -> [Game] {
        var isDirectory: ObjCBool = true
        guard FileManager.default.fileExists(atPath: path, isDirectory: &isDirectory), !isDirectory.boolValue else { return [] }
        let data = try Data(contentsOf: URL(fileURLWithPath: path))
        guard let string = String(data: data, encoding: .utf8) else { return [] }
        return parse(string: string)
    }

    public static func parse(string: String) -> [Game] {
        let games = splitGame(string)
        for game in games {

        }
        return []
    }

    // MARK: - Helper

    static func splitGame(_ multipleGamePGN: String) -> [String] {
        var games: [String] = []
        var game = ""
        var tagMode = true
        multipleGamePGN.enumerateLines { line, stop in
            guard !line.isEmpty else { return }
            let line = line.trimmingCharacters(in: .whitespacesAndNewlines)
            if line.hasPrefix("["), tagMode {
                if !game.isEmpty {
                    game.append("\n")
                }
                game.append(line)
            } else if !line.hasPrefix("[") {
                if !game.isEmpty {
                    game.append(tagMode ? "\n" : " ")
                }
                tagMode = false
                game.append(line)
            } else if line.hasPrefix("["), !tagMode {
                games.append(game)
                game = line
                tagMode = true
            }
        }
        if !game.isEmpty {
            games.append(game)
        }
        return games
    }
}
