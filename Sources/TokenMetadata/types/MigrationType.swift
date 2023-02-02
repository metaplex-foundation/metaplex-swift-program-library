import Beet

/**
 * @category enums
 * @category generated
 */
public enum MigrationType {
    case CollectionV1, ProgrammableV1
}

extension MigrationType : CaseIterable & RawRepresentable {
    public  typealias RawValue = UInt8

    public  init?(rawValue: UInt8) {
        switch rawValue {
        case 0 : self = .CollectionV1
        case 1 : self = .ProgrammableV1
        default : return nil
        }
    }
    
    public  var rawValue: UInt8 {
        switch self {
        case .CollectionV1 : return 0
        case .ProgrammableV1 : return 1
        }
    }
}

/**
 * @category userTypes
 * @category generated
 */
public let migrationTypeBeet = FixedSizeBeet(value: .scalar( FixedScalarEnum<MigrationType>() ))
public let migrationTypeBeetWrapped = Beet.fixedBeet(migrationTypeBeet)