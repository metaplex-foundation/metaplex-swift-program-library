import Beet

/**
 * @category enums
 * @category generated
 */
public enum UseMethod {
    case Burn, Multiple, Single
}

extension UseMethod : CaseIterable & RawRepresentable {
    public  typealias RawValue = UInt8

    public  init?(rawValue: UInt8) {
        switch rawValue {
        case 0 : self = .Burn
        case 1 : self = .Multiple
        case 2 : self = .Single
        default : return nil
        }
    }
    
    public  var rawValue: UInt8 {
        switch self {
        case .Burn : return 0
        case .Multiple : return 1
        case .Single : return 2
        }
    }
}

/**
 * @category userTypes
 * @category generated
 */
public let useMethodBeet = FixedSizeBeet(value: .scalar( FixedScalarEnum<UseMethod>() ))
public let useMethodBeetWrapped = Beet.fixedBeet(useMethodBeet)