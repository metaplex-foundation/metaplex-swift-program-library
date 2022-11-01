import Beet

/**
 * @category enums
 * @category generated
 */
public enum EndSettingType {
    case Date, Amount
}

extension EndSettingType : CaseIterable & RawRepresentable {
    public  typealias RawValue = UInt8

    public  init?(rawValue: UInt8) {
        switch rawValue {
        case 0 : self = .Date
        case 1 : self = .Amount
        default : return nil
        }
    }
    
    public  var rawValue: UInt8 {
        switch self {
        case .Date : return 0
        case .Amount : return 1
        }
    }
}

/**
 * @category userTypes
 * @category generated
 */
public let endSettingTypeBeet = FixedSizeBeet(value: .scalar( FixedScalarEnum<EndSettingType>() ))
public let endSettingTypeBeetWrapped = Beet.fixedBeet(endSettingTypeBeet)