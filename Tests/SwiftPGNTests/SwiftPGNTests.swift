import XCTest
@testable import SwiftPGN
import SwiftToolbox

final class SwiftPGNTests: XCTestCase {
    func testSingleGame() throws {
        let games = Parser.splitGame(TestHelpers.game1)

        XCTAssertEqual(games.count, 1)
    }

    func testMultipleGames() throws {
        let games = Parser.splitGame(TestHelpers.threeGames)

        XCTAssertEqual(games.count, 3)
    }

    func testParseSingleGame() throws {
        let games = Parser.splitGame(TestHelpers.multiLineGame)

        XCTAssertEqual(games.count, 1)

        guard let game = games.first else { return }

        XCTAssertEqual(game.lines.count(where: { !$0.hasPrefix("[") }), 1)
    }
}
