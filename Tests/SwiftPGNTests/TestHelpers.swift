//
//  File.swift
//  
//
//  Created by Adam Wulf on 9/18/22.
//

import Foundation

enum TestHelpers {
    static let game1 = """
        [Event "Live Chess"]
        [Site "Chess.com"]
        [Date "2022.08.25"]
        [Round "-"]
        [White "KDlearns"]
        [Black "DinaBelenkaya"]
        [Result "0-1"]
        [CurrentPosition "8/8/8/1pk5/8/8/1QP5/2K1q3 w - -"]
        [Timezone "UTC"]
        [ECO "B12"]
        [ECOUrl "https://www.chess.com/openings/Caro-Kann-Defense-Advance-Variation-3...Bf5-4.Bd3"]
        [UTCDate "2022.08.25"]
        [UTCTime "21:52:29"]
        [WhiteElo "1173"]
        [BlackElo "2423"]
        [TimeControl "300+5"]
        [Termination "DinaBelenkaya won by checkmate"]
        [StartTime "21:52:29"]
        [EndDate "2022.08.25"]
        [EndTime "22:14:19"]
        [Link "https://www.chess.com/game/live/55203554251"]

        1. e4 {[%clk 0:05:05]} 1... c6 {[%clk 0:05:05]} 2. d4 {[%clk 0:05:09.3]} 2... d5 {[%clk 0:05:09.9]} 3. e5 {[%clk 0:05:13.7]} 3... Bf5 {[%clk 0:05:14.4]} 4. Bd3 {[%clk 0:05:17.7]} 4... Bxd3 {[%clk 0:05:09.5]} 5. Qxd3 {[%clk 0:05:22.6]} 5... Qa5+ {[%clk 0:05:12.4]} 6. Nc3 {[%clk 0:05:24.5]} 6... Qa6 {[%clk 0:05:14]} 7. Qh3 {[%clk 0:05:27.2]} 7... e6 {[%clk 0:05:18.3]} 8. a4 {[%clk 0:05:13]} 8... Nd7 {[%clk 0:03:54.7]} 9. Nge2 {[%clk 0:05:15.4]} 9... Ne7 {[%clk 0:03:24.9]} 10. O-O {[%clk 0:04:56.1]} 10... Nf5 {[%clk 0:03:20.6]} 11. g4 {[%clk 0:03:53]} 11... Ne7 {[%clk 0:03:01.7]} 12. f4 {[%clk 0:03:28.2]} 12... O-O-O {[%clk 0:02:33.3]} 13. f5 {[%clk 0:03:10.6]} 13... exf5 {[%clk 0:02:13.1]} 14. gxf5 {[%clk 0:03:05.9]} 14... f6 {[%clk 0:01:58.1]} 15. Nf4 {[%clk 0:02:38.8]} 15... fxe5 {[%clk 0:01:53.8]} 16. dxe5 {[%clk 0:02:24.3]} 16... Kb8 {[%clk 0:01:34.6]} 17. Ne6 {[%clk 0:02:09.8]} 17... Rc8 {[%clk 0:01:34.7]} 18. f6 {[%clk 0:01:43.4]} 18... gxf6 {[%clk 0:01:13.7]} 19. exf6 {[%clk 0:01:45.8]} 19... Ng6 {[%clk 0:01:17.1]} 20. f7 {[%clk 0:00:57.6]} 20... Nde5 {[%clk 0:00:44.5]} 21. Nf4 {[%clk 0:00:30.4]} 21... Bc5+ {[%clk 0:00:27.4]} 22. Kg2 {[%clk 0:00:23.2]} 22... Rcf8 {[%clk 0:00:27.5]} 23. Ne6 {[%clk 0:00:20.7]} 23... Rxf7 {[%clk 0:00:23.4]} 24. Rxf7 {[%clk 0:00:19.6]} 24... Nxf7 {[%clk 0:00:28.1]} 25. Qg3+ {[%clk 0:00:20.3]} 25... Bd6 {[%clk 0:00:27]} 26. Bf4 {[%clk 0:00:20.4]} 26... Nxf4+ {[%clk 0:00:29.4]} 27. Nxf4 {[%clk 0:00:25.3]} 27... Nh6 {[%clk 0:00:30.4]} 28. Qh4 {[%clk 0:00:20]} 28... Rg8+ {[%clk 0:00:30.3]} 29. Kf2 {[%clk 0:00:16]} 29... Bc5+ {[%clk 0:00:30.4]} 30. Ke1 {[%clk 0:00:17.1]} 30... Rg1+ {[%clk 0:00:33]} 31. Kd2 {[%clk 0:00:18.7]} 31... Qb6 {[%clk 0:00:12.6]} 32. Rxg1 {[%clk 0:00:18.2]} 32... Bxg1 {[%clk 0:00:17.5]} 33. Qxh6 {[%clk 0:00:21.9]} 33... Qe3+ {[%clk 0:00:21.7]} 34. Kd1 {[%clk 0:00:21.2]} 34... Qf3+ {[%clk 0:00:24.2]} 35. Nfe2 {[%clk 0:00:22.5]} 35... Be3 {[%clk 0:00:25.4]} 36. Qd6+ {[%clk 0:00:23.9]} 36... Kc8 {[%clk 0:00:28.8]} 37. Qe6+ {[%clk 0:00:16.7]} 37... Kc7 {[%clk 0:00:33.2]} 38. Qe7+ {[%clk 0:00:11.3]} 38... Kb6 {[%clk 0:00:37.5]} 39. Qb4+ {[%clk 0:00:14.4]} 39... Ka6 {[%clk 0:00:41.9]} 40. Nxd5 {[%clk 0:00:12.8]} 40... Qf1+ {[%clk 0:00:45.4]} 41. Qe1 {[%clk 0:00:15.5]} 41... Qf7 {[%clk 0:00:16.9]} 42. Nb4+ {[%clk 0:00:14.9]} 42... Kb6 {[%clk 0:00:21.2]} 43. a5+ {[%clk 0:00:14.6]} 43... Kc7 {[%clk 0:00:22.1]} 44. Qc3 {[%clk 0:00:14.9]} 44... Qf1+ {[%clk 0:00:20.1]} 45. Qe1 {[%clk 0:00:18]} 45... Qf8 {[%clk 0:00:15.2]} 46. Qc3 {[%clk 0:00:19.7]} 46... Qd6+ {[%clk 0:00:11.4]} 47. Nd3 {[%clk 0:00:17]} 47... c5 {[%clk 0:00:11]} 48. b3 {[%clk 0:00:14]} 48... Qd5 {[%clk 0:00:13.1]} 49. Qg7+ {[%clk 0:00:08.5]} 49... Kc6 {[%clk 0:00:15.8]} 50. Qf6+ {[%clk 0:00:07.8]} 50... Kd7 {[%clk 0:00:17.4]} 51. Qe5 {[%clk 0:00:07.1]} 51... Qh1+ {[%clk 0:00:20.8]} 52. Ne1 {[%clk 0:00:08.9]} 52... Bd4 {[%clk 0:00:08.4]} 53. Nxd4 {[%clk 0:00:08.7]} 53... cxd4 {[%clk 0:00:13.3]} 54. Qxd4+ {[%clk 0:00:12.4]} 54... Kc7 {[%clk 0:00:17.7]} 55. Qxa7 {[%clk 0:00:14.3]} 55... Qxh2 {[%clk 0:00:19.1]} 56. Qc5+ {[%clk 0:00:17]} 56... Kd7 {[%clk 0:00:21]} 57. Qd4+ {[%clk 0:00:19.1]} 57... Kc8 {[%clk 0:00:25]} 58. Qg7 {[%clk 0:00:20.8]} 58... Qh5+ {[%clk 0:00:27.7]} 59. Kc1 {[%clk 0:00:23.2]} 59... Qxa5 {[%clk 0:00:32.6]} 60. Qxh7 {[%clk 0:00:25.8]} 60... Qxe1+ {[%clk 0:00:35.2]} 61. Kb2 {[%clk 0:00:28.9]} 61... Qe5+ {[%clk 0:00:39.4]} 62. Ka2 {[%clk 0:00:30.1]} 62... Kb8 {[%clk 0:00:43.5]} 63. Qh1 {[%clk 0:00:31.2]} 63... Qc3 {[%clk 0:00:46.5]} 64. Qd1 {[%clk 0:00:33.3]} 64... Ka7 {[%clk 0:00:50.2]} 65. Qg1+ {[%clk 0:00:35.5]} 65... b6 {[%clk 0:00:53.7]} 66. Qc1 {[%clk 0:00:37]} 66... Ka6 {[%clk 0:00:57.7]} 67. Kb1 {[%clk 0:00:41]} 67... b5 {[%clk 0:00:58.1]} 68. Qb2 {[%clk 0:00:44.3]} 68... Qe1+ {[%clk 0:01:01.6]} 69. Qc1 {[%clk 0:00:46.8]} 69... Qe4 {[%clk 0:01:04.8]} 70. Qa3+ {[%clk 0:00:50.5]} 70... Kb6 {[%clk 0:01:08.9]} 71. Qd6+ {[%clk 0:00:53.8]} 71... Ka5 {[%clk 0:01:12.2]} 72. b4+ {[%clk 0:00:45]} 72... Ka4 {[%clk 0:01:12.4]} 73. Qa6+ {[%clk 0:00:37.5]} 73... Kxb4 {[%clk 0:01:15.5]} 74. Qa2 {[%clk 0:00:23.2]} 74... Qe1+ {[%clk 0:01:18.6]} 75. Kb2 {[%clk 0:00:24.8]} 75... Qc3+ {[%clk 0:01:22.7]} 76. Kc1 {[%clk 0:00:26.5]} 76... Kc5 {[%clk 0:01:13.1]} 77. Qb2 {[%clk 0:00:24.6]} 77... Qe1# {[%clk 0:01:14.5]} 0-1
        """

    static let game2 = """
        [Event "Live Chess"]
        [Site "Chess.com"]
        [Date "2022.08.25"]
        [Round "-"]
        [White "KDlearns"]
        [Black "DinaBelenkaya"]
        [Result "0-1"]
        [CurrentPosition "rn1qkbnr/pp2pppp/2p5/3pPb2/3P3P/8/PPP2PP1/RNBQKBNR b KQkq h3"]
        [Timezone "UTC"]
        [ECO "B12"]
        [ECOUrl "https://www.chess.com/openings/Caro-Kann-Defense-Advance-Tal-Variation"]
        [UTCDate "2022.08.25"]
        [UTCTime "21:51:24"]
        [WhiteElo "1173"]
        [BlackElo "2423"]
        [TimeControl "300+5"]
        [Termination "DinaBelenkaya won by resignation"]
        [StartTime "21:51:24"]
        [EndDate "2022.08.25"]
        [EndTime "21:52:23"]
        [Link "https://www.chess.com/game/live/55203069819"]

        1. e4 {[%clk 0:05:05]} 1... c6 {[%clk 0:05:05]} 2. d4 {[%clk 0:05:07.3]} 2... d5 {[%clk 0:05:08.7]} 3. e5 {[%clk 0:05:07.6]} 3... Bf5 {[%clk 0:04:57.3]} 4. h4 {[%clk 0:05:02.8]} 0-1
        """

    static let game3 = """
        [Event "Live Chess"]
        [Site "Chess.com"]
        [Date "2022.08.16"]
        [Round "-"]
        [White "DinaBelenkaya"]
        [Black "manitodeplomo"]
        [Result "1-0"]
        [Tournament "https://www.chess.com/tournament/live/late-titled-tuesday-blitz-august-16-2022-3304769"]
        [CurrentPosition "R5Q1/2q2p1k/2b4p/8/7p/1P4PP/P3N2K/8 b - -"]
        [Timezone "UTC"]
        [ECO "A05"]
        [ECOUrl "https://www.chess.com/openings/Reti-Opening-Kings-Indian-Attack"]
        [UTCDate "2022.08.16"]
        [UTCTime "21:30:40"]
        [WhiteElo "2423"]
        [BlackElo "2569"]
        [TimeControl "180+1"]
        [Termination "DinaBelenkaya won by checkmate"]
        [StartTime "21:30:40"]
        [EndDate "2022.08.16"]
        [EndTime "21:37:36"]
        [Link "https://www.chess.com/game/live/54424259361"]

        1. Nf3 {[%clk 0:02:53.6]} 1... Nf6 {[%clk 0:02:54.6]} 2. g3 {[%clk 0:02:54.5]} 2... d6 {[%clk 0:02:55]} 3. Bg2 {[%clk 0:02:52]} 3... h6 {[%clk 0:02:54.6]} 4. O-O {[%clk 0:02:52.9]} 4... Bf5 {[%clk 0:02:54.8]} 5. d3 {[%clk 0:02:53.2]} 5... Bh7 {[%clk 0:02:54.3]} 6. e4 {[%clk 0:02:52.6]} 6... e6 {[%clk 0:02:46]} 7. Re1 {[%clk 0:02:45]} 7... Be7 {[%clk 0:02:42.7]} 8. b3 {[%clk 0:02:33.5]} 8... O-O {[%clk 0:02:41.7]} 9. Bb2 {[%clk 0:02:33.8]} 9... e5 {[%clk 0:02:24.6]} 10. Nbd2 {[%clk 0:02:33]} 10... Nbd7 {[%clk 0:02:24.7]} 11. Nh4 {[%clk 0:02:31]} 11... Re8 {[%clk 0:02:23.7]} 12. f4 {[%clk 0:02:31]} 12... Bf8 {[%clk 0:02:23.4]} 13. f5 {[%clk 0:02:29.7]} 13... c6 {[%clk 0:02:19.1]} 14. Nc4 {[%clk 0:02:22.6]} 14... d5 {[%clk 0:02:08.4]} 15. exd5 {[%clk 0:02:23.5]} 15... cxd5 {[%clk 0:02:07.9]} 16. Nxe5 {[%clk 0:02:23.6]} 16... Nxe5 {[%clk 0:02:05.6]} 17. Bxe5 {[%clk 0:02:23]} 17... Qb6+ {[%clk 0:02:01.3]} 18. Kh1 {[%clk 0:02:17.9]} 18... Bb4 {[%clk 0:02:00.1]} 19. c3 {[%clk 0:01:55.7]} 19... Rxe5 {[%clk 0:01:58.9]} 20. Rxe5 {[%clk 0:01:56.6]} 20... Bxc3 {[%clk 0:01:58.5]} 21. Re7 {[%clk 0:01:51.2]} 21... Bxa1 {[%clk 0:01:50.2]} 22. Qxa1 {[%clk 0:01:52.1]} 22... Rc8 {[%clk 0:01:44.2]} 23. Qe1 {[%clk 0:01:46.2]} 23... Kf8 {[%clk 0:01:38.4]} 24. h3 {[%clk 0:01:27.3]} 24... Qd6 {[%clk 0:01:21.6]} 25. Rxb7 {[%clk 0:01:22]} 25... Re8 {[%clk 0:01:12.7]} 26. Qf2 {[%clk 0:01:21.6]} 26... d4 {[%clk 0:01:12.9]} 27. Rxa7 {[%clk 0:01:12.4]} 27... Re3 {[%clk 0:01:09.6]} 28. Ra8+ {[%clk 0:01:11.5]} 28... Ke7 {[%clk 0:01:08.8]} 29. Ra7+ {[%clk 0:01:00.7]} 29... Kf8 {[%clk 0:01:07.9]} 30. Ra8+ {[%clk 0:00:59.1]} 30... Ke7 {[%clk 0:01:07.8]} 31. Kh2 {[%clk 0:00:33.9]} 31... Nh5 {[%clk 0:01:01.7]} 32. Bf3 {[%clk 0:00:32.9]} 32... g6 {[%clk 0:00:52.4]} 33. Ra7+ {[%clk 0:00:33.2]} 33... Ke8 {[%clk 0:00:51.5]} 34. Bxh5 {[%clk 0:00:33.1]} 34... gxh5 {[%clk 0:00:51.7]} 35. Ra8+ {[%clk 0:00:31.1]} 35... Ke7 {[%clk 0:00:51.7]} 36. Qg2 {[%clk 0:00:32]} 36... Qc7 {[%clk 0:00:45.5]} 37. Nf3 {[%clk 0:00:27.2]} 37... Bxf5 {[%clk 0:00:44.2]} 38. Nxd4 {[%clk 0:00:27.1]} 38... Bd7 {[%clk 0:00:43.8]} 39. Qf2 {[%clk 0:00:23.4]} 39... Rxd3 {[%clk 0:00:43.5]} 40. Qe2+ {[%clk 0:00:19.9]} 40... Kf6 {[%clk 0:00:40.8]} 41. Qxd3 {[%clk 0:00:20.3]} 41... h4 {[%clk 0:00:41.1]} 42. Qf3+ {[%clk 0:00:20.5]} 42... Kg7 {[%clk 0:00:41]} 43. Ne2 {[%clk 0:00:17.7]} 43... Bc6 {[%clk 0:00:39.6]} 44. Qg4+ {[%clk 0:00:17.7]} 44... Kh7 {[%clk 0:00:38.3]} 45. Qg8# {[%clk 0:00:17.9]} 1-0
        """

    static let threeGames = game1 + "\n" + game2 + "\n" + game3

    static let multiLineGame = """
        [Event "Live Chess"]
        [Site "Chess.com"]
        [Date "2022.08.16"]
        [Round "-"]
        [White "djano"]
        [Black "DinaBelenkaya"]
        [Result "1-0"]
        [Tournament "https://www.chess.com/tournament/live/late-titled-tuesday-blitz-august-16-2022-3304769"]
        [CurrentPosition "2r1k2r/pp3ppp/2bBpn2/3N4/3N4/1P2R3/P2P1PPP/R2Q2K1 b k -"]
        [Timezone "UTC"]
        [ECO "C00"]
        [ECOUrl "https://www.chess.com/openings/French-Defense-Horwitz-Papa-Ticulat-Gambit"]
        [UTCDate "2022.08.16"]
        [UTCTime "21:19:49"]
        [WhiteElo "2587"]
        [BlackElo "2411"]
        [TimeControl "180+1"]
        [Termination "djano won by resignation"]
        [StartTime "21:19:49"]
        [EndDate "2022.08.16"]
        [EndTime "21:23:24"]
        [Link "https://www.chess.com/game/live/54423647519"]

        1. e4 {[%clk 0:03:00.9]} 1... e6 {[%clk 0:02:55.7]} 2. b3 {[%clk 0:02:59.6]} 2... d5 {[%clk 0:02:54.1]} 3. Bb2 {[%clk 0:02:59.4]} 3... d4 {[%clk 0:02:53.9]} 4. c3 {[%clk 0:02:50.8]} 4... c5 {[%clk 0:02:53.8]} 5. Nf3 {[%clk 0:02:48.4]} 5... Nc6 {[%clk 0:02:53.8]}
        6. Bb5 {[%clk 0:02:48.3]} 6... Qb6 {[%clk 0:02:47]} 7. Bxc6+ {[%clk 0:02:45.6]} 7... Qxc6 {[%clk 0:02:47.9]} 8. O-O {[%clk 0:02:42.1]} 8... Qxe4 {[%clk 0:02:39]} 9. cxd4 {[%clk 0:02:41.8]} 9... cxd4 {[%clk 0:02:39]} 10. Bxd4 {[%clk 0:02:33.3]} 10... Nf6 {[%clk 0:02:36.4]}
        11. Nc3 {[%clk 0:02:32.8]} 11... Qd3 {[%clk 0:02:30.4]} 12. Re1 {[%clk 0:02:17.8]} 12... Bd6 {[%clk 0:02:22.1]} 13. Re3 {[%clk 0:02:01.8]} 13... Qf5 {[%clk 0:02:21.3]} 14. Be5 {[%clk 0:01:52.3]} 14... Bd7 {[%clk 0:02:19.5]} 15. Bxd6 {[%clk 0:01:49.8]} 15... Rd8 {[%clk 0:02:13.2]}
        16. Bc7 {[%clk 0:01:44.1]} 16... Rc8 {[%clk 0:02:11.6]} 17. Bd6 {[%clk 0:01:37.2]} 17... Bc6 {[%clk 0:01:58.6]} 18. Nd4 {[%clk 0:01:26.8]} 18... Qd5 {[%clk 0:01:53.2]} 19. Nxd5 {[%clk 0:01:26.1]} 1-0
        """

}
