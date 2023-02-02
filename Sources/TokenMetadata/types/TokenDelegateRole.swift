import Beet

/**
 * @category enums
 * @category generated
 */
public enum TokenDelegateRole {
    case Sale, Transfer, Utility, Staking, Standard, Migration
}

extension TokenDelegateRole : CaseIterable & RawRepresentable {
    public  typealias RawValue = UInt8

    public  init?(rawValue: UInt8) {
        switch rawValue {
        case 0 : self = .Sale
        case 1 : self = .Transfer
        case 2 : self = .Utility
        case 3 : self = .Staking
        case 4 : self = .Standard
        case 5 : self = .Migration
        default : return nil
        }
    }
    
    public  var rawValue: UInt8 {
        switch self {
        case .Sale : return 0
        case .Transfer : return 1
        case .Utility : return 2
        case .Staking : return 3
        case .Standard : return 4
        case .Migration : return 5
        }
    }
}

/**
 * @category userTypes
 * @category generated
 */
public let tokenDelegateRoleBeet = FixedSizeBeet(value: .scalar( FixedScalarEnum<TokenDelegateRole>() ))
public let tokenDelegateRoleBeetWrapped = Beet.fixedBeet(tokenDelegateRoleBeet)