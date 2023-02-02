import Beet

/**
 * @category enums
 * @category generated
 */
public enum AuthorityType {
    case None, Metadata, Delegate, Holder
}

extension AuthorityType : CaseIterable & RawRepresentable {
    public  typealias RawValue = UInt8

    public  init?(rawValue: UInt8) {
        switch rawValue {
        case 0 : self = .None
        case 1 : self = .Metadata
        case 2 : self = .Delegate
        case 3 : self = .Holder
        default : return nil
        }
    }
    
    public  var rawValue: UInt8 {
        switch self {
        case .None : return 0
        case .Metadata : return 1
        case .Delegate : return 2
        case .Holder : return 3
        }
    }
}

/**
 * @category userTypes
 * @category generated
 */
public let authorityTypeBeet = FixedSizeBeet(value: .scalar( FixedScalarEnum<AuthorityType>() ))
public let authorityTypeBeetWrapped = Beet.fixedBeet(authorityTypeBeet)