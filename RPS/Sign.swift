import Foundation

func randomSign() -> Sign {
    let sign = Int.random(in: 0...2)
    if sign == 0 {
        return .rock
    } else if sign == 1 {
        return .paper
    } else {
        return .scissors
    }
}


enum Sign {
    case rock
    case paper
    case scissors
    
    var emoji: String{
        switch self {
        case .rock:
            return "👊"
        case .paper:
            return "✋"
        case .scissors:
            return "✌️"
        }
    }
    
    func compare(_ opponent: Sign) -> GameState {
        if self == opponent {
            return .draw
        }
        
        switch self {
        case .rock:
            if opponent == .scissors {
                return .win
            }
        case .paper:
            if opponent == .rock{
                return .win
            }
        case .scissors:
            if opponent == .paper {
                return .win
            }
        }
        return .lose
    }
}
