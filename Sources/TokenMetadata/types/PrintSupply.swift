import Beet

/**
 * @category enums
 * @category generated
 */
public enum PrintSupply {
    case Zero, Limited, Unlimited
}

extension PrintSupply : CaseIterable & RawRepresentable {
    public  typealias RawValue = UInt8

    public  init?(rawValue: UInt8) {
        switch rawValue {
        case 0 : self = .Zero
        case 1 : self = .Limited
        case 2 : self = .Unlimited
        default : return nil
        }
    }
    
    public  var rawValue: UInt8 {
        switch self {
        case .Zero : return 0
        case .Limited : return 1
        case .Unlimited : return 2
        }
    }
}

/**
 * @category userTypes
 * @category generated
 */
public let printSupplyBeet = FixedSizeBeet(value: .scalar( FixedScalarEnum<PrintSupply>() ))
public let printSupplyBeetWrapped = Beet.fixedBeet(printSupplyBeet)