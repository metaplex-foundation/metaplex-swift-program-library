import Beet

/**
 * @category enums
 * @category generated
 */
public enum Key {
    case Uninitialized, EditionV1, MasterEditionV1, ReservationListV1, MetadataV1, ReservationListV2, MasterEditionV2, EditionMarker, UseAuthorityRecord, CollectionAuthorityRecord, TokenOwnedEscrow, TokenRecord, MetadataDelegate
}

extension Key : CaseIterable & RawRepresentable {
    public  typealias RawValue = UInt8

    public  init?(rawValue: UInt8) {
        switch rawValue {
        case 0 : self = .Uninitialized
        case 1 : self = .EditionV1
        case 2 : self = .MasterEditionV1
        case 3 : self = .ReservationListV1
        case 4 : self = .MetadataV1
        case 5 : self = .ReservationListV2
        case 6 : self = .MasterEditionV2
        case 7 : self = .EditionMarker
        case 8 : self = .UseAuthorityRecord
        case 9 : self = .CollectionAuthorityRecord
        case 10 : self = .TokenOwnedEscrow
        case 11 : self = .TokenRecord
        case 12 : self = .MetadataDelegate
        default : return nil
        }
    }
    
    public  var rawValue: UInt8 {
        switch self {
        case .Uninitialized : return 0
        case .EditionV1 : return 1
        case .MasterEditionV1 : return 2
        case .ReservationListV1 : return 3
        case .MetadataV1 : return 4
        case .ReservationListV2 : return 5
        case .MasterEditionV2 : return 6
        case .EditionMarker : return 7
        case .UseAuthorityRecord : return 8
        case .CollectionAuthorityRecord : return 9
        case .TokenOwnedEscrow : return 10
        case .TokenRecord : return 11
        case .MetadataDelegate : return 12
        }
    }
}

/**
 * @category userTypes
 * @category generated
 */
public let keyBeet = FixedSizeBeet(value: .scalar( FixedScalarEnum<Key>() ))
public let keyBeetWrapped = Beet.fixedBeet(keyBeet)