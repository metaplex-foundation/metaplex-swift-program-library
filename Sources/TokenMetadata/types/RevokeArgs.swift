import Beet

/**
 * @category enums
 * @category generated
 */
public enum RevokeArgs {
    case CollectionV1, SaleV1, TransferV1, UpdateV1, UtilityV1, StakingV1, StandardV1
}

extension RevokeArgs : CaseIterable & RawRepresentable {
    public  typealias RawValue = UInt8

    public  init?(rawValue: UInt8) {
        switch rawValue {
        case 0 : self = .CollectionV1
        case 1 : self = .SaleV1
        case 2 : self = .TransferV1
        case 3 : self = .UpdateV1
        case 4 : self = .UtilityV1
        case 5 : self = .StakingV1
        case 6 : self = .StandardV1
        default : return nil
        }
    }
    
    public  var rawValue: UInt8 {
        switch self {
        case .CollectionV1 : return 0
        case .SaleV1 : return 1
        case .TransferV1 : return 2
        case .UpdateV1 : return 3
        case .UtilityV1 : return 4
        case .StakingV1 : return 5
        case .StandardV1 : return 6
        }
    }
}

/**
 * @category userTypes
 * @category generated
 */
public let revokeArgsBeet = FixedSizeBeet(value: .scalar( FixedScalarEnum<RevokeArgs>() ))
public let revokeArgsBeetWrapped = Beet.fixedBeet(revokeArgsBeet)