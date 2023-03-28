import Beet

/**
 * @category enums
 * @category generated
 */
public enum AccountVersion {
    case V1, V2
}

extension AccountVersion : CaseIterable & RawRepresentable {
    public  typealias RawValue = UInt8

    public  init?(rawValue: UInt8) {
        switch rawValue {
        case 0 : self = .V1
        case 1 : self = .V2
        default : return nil
        }
    }
    
    public  var rawValue: UInt8 {
        switch self {
        case .V1 : return 0
        case .V2 : return 1
        }
    }
}

/**
 * @category userTypes
 * @category generated
 */
public let accountVersionBeet = FixedSizeBeet(value: .scalar( FixedScalarEnum<AccountVersion>() ))
public let accountVersionBeetWrapped = Beet.fixedBeet(accountVersionBeet)