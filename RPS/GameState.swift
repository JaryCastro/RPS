import Foundation

enum GameState {
    case start, win, lose, draw
    
    var status: String {
        switch self {
        case .start:
            return "Rock, Paper, Scissors? 😏"
        case .win:
            return "You Won! 😁"
        case .lose:
            return "You lost! 😔"
        case .draw:
            return "It's a draw!? 🤨"
        }
    }
}
