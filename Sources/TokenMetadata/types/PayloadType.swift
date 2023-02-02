import Beet

/**
 * @category enums
 * @category generated
 */
public enum PayloadType {
    case Pubkey, Seeds, MerkleProof, Number
}

extension PayloadType : CaseIterable & RawRepresentable {
    public  typealias RawValue = UInt8

    public  init?(rawValue: UInt8) {
        switch rawValue {
        case 0 : self = .Pubkey
        case 1 : self = .Seeds
        case 2 : self = .MerkleProof
        case 3 : self = .Number
        default : return nil
        }
    }
    
    public  var rawValue: UInt8 {
        switch self {
        case .Pubkey : return 0
        case .Seeds : return 1
        case .MerkleProof : return 2
        case .Number : return 3
        }
    }
}

/**
 * @category userTypes
 * @category generated
 */
public let payloadTypeBeet = FixedSizeBeet(value: .scalar( FixedScalarEnum<PayloadType>() ))
public let payloadTypeBeetWrapped = Beet.fixedBeet(payloadTypeBeet)