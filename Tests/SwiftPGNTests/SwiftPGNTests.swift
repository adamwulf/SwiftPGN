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

    func testMultilineGame() throws {
        let games = Parser.splitGame(TestHelpers.multiLineGame)

        XCTAssertEqual(games.count, 1)

        guard let game = games.first else { return }

        XCTAssertEqual(game.lines.count(where: { !$0.hasPrefix("[") }), 1)
    }

    func testParseSingleGame() throws {
        let games = Parser.parse(string: TestHelpers.game1)

        XCTAssertEqual(games.count, 1)

        guard let game = games.first else { return }

        XCTAssertEqual(game.tags.count, 21)
        XCTAssert(game.tags.contains(where: { $0.value == "8/8/8/1pk5/8/8/1QP5/2K1q3 w - -" }))
        XCTAssert(game.tags.contains(where: { $0.value == "300+5" }))
        XCTAssert(game.tags.contains(where: { $0.name == "Black" && $0.value == "DinaBelenkaya" }))
    }
}
