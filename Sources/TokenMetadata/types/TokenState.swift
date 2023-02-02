import Beet

/**
 * @category enums
 * @category generated
 */
public enum TokenState {
    case Unlocked, Locked, Listed
}

extension TokenState : CaseIterable & RawRepresentable {
    public  typealias RawValue = UInt8

    public  init?(rawValue: UInt8) {
        switch rawValue {
        case 0 : self = .Unlocked
        case 1 : self = .Locked
        case 2 : self = .Listed
        default : return nil
        }
    }
    
    public  var rawValue: UInt8 {
        switch self {
        case .Unlocked : return 0
        case .Locked : return 1
        case .Listed : return 2
        }
    }
}

/**
 * @category userTypes
 * @category generated
 */
public let tokenStateBeet = FixedSizeBeet(value: .scalar( FixedScalarEnum<TokenState>() ))
public let tokenStateBeetWrapped = Beet.fixedBeet(tokenStateBeet)