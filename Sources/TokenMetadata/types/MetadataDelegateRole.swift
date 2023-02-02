import Beet

/**
 * @category enums
 * @category generated
 */
public enum MetadataDelegateRole {
    case Authority, Collection, Use, Update
}

extension MetadataDelegateRole : CaseIterable & RawRepresentable {
    public  typealias RawValue = UInt8

    public  init?(rawValue: UInt8) {
        switch rawValue {
        case 0 : self = .Authority
        case 1 : self = .Collection
        case 2 : self = .Use
        case 3 : self = .Update
        default : return nil
        }
    }
    
    public  var rawValue: UInt8 {
        switch self {
        case .Authority : return 0
        case .Collection : return 1
        case .Use : return 2
        case .Update : return 3
        }
    }
}

/**
 * @category userTypes
 * @category generated
 */
public let metadataDelegateRoleBeet = FixedSizeBeet(value: .scalar( FixedScalarEnum<MetadataDelegateRole>() ))
public let metadataDelegateRoleBeetWrapped = Beet.fixedBeet(metadataDelegateRoleBeet)