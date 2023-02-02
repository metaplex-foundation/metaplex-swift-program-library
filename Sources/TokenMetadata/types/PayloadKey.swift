import Beet

/**
 * @category enums
 * @category generated
 */
public enum PayloadKey {
    case Target, Holder, Authority, Amount
}

extension PayloadKey : CaseIterable & RawRepresentable {
    public  typealias RawValue = UInt8

    public  init?(rawValue: UInt8) {
        switch rawValue {
        case 0 : self = .Target
        case 1 : self = .Holder
        case 2 : self = .Authority
        case 3 : self = .Amount
        default : return nil
        }
    }
    
    public  var rawValue: UInt8 {
        switch self {
        case .Target : return 0
        case .Holder : return 1
        case .Authority : return 2
        case .Amount : return 3
        }
    }
}

/**
 * @category userTypes
 * @category generated
 */
public let payloadKeyBeet = FixedSizeBeet(value: .scalar( FixedScalarEnum<PayloadKey>() ))
public let payloadKeyBeetWrapped = Beet.fixedBeet(payloadKeyBeet)