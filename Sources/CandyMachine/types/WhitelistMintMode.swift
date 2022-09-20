import Beet

/**
 * @category enums
 * @category generated
 */
public enum WhitelistMintMode {
    case BurnEveryTime, NeverBurn
}

extension WhitelistMintMode : CaseIterable & RawRepresentable {
    public  typealias RawValue = UInt8

    public  init?(rawValue: UInt8) {
        switch rawValue {
        case 0 : self = .BurnEveryTime
        case 1 : self = .NeverBurn
        default : return nil
        }
    }
    
    public  var rawValue: UInt8 {
        switch self {
        case .BurnEveryTime : return 0
        case .NeverBurn : return 1
        }
    }
}

/**
 * @category userTypes
 * @category generated
 */
public let whitelistMintModeBeet = FixedSizeBeet(value: .scalar( FixedScalarEnum<WhitelistMintMode>() ))
public let whitelistMintModeBeetWrapped = Beet.fixedBeet(whitelistMintModeBeet)