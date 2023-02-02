import Beet

/**
 * @category enums
 * @category generated
 */
public enum EscrowAuthority {
    case TokenOwner, Creator
}

extension EscrowAuthority : CaseIterable & RawRepresentable {
    public  typealias RawValue = UInt8

    public  init?(rawValue: UInt8) {
        switch rawValue {
        case 0 : self = .TokenOwner
        case 1 : self = .Creator
        default : return nil
        }
    }
    
    public  var rawValue: UInt8 {
        switch self {
        case .TokenOwner : return 0
        case .Creator : return 1
        }
    }
}

/**
 * @category userTypes
 * @category generated
 */
public let escrowAuthorityBeet = FixedSizeBeet(value: .scalar( FixedScalarEnum<EscrowAuthority>() ))
public let escrowAuthorityBeetWrapped = Beet.fixedBeet(escrowAuthorityBeet)