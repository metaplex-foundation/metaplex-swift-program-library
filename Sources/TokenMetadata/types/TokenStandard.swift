import Beet

/**
 * @category enums
 * @category generated
 */
public enum TokenStandard {
    case NonFungible, FungibleAsset, Fungible, NonFungibleEdition, ProgrammableNonFungible
}

extension TokenStandard : CaseIterable & RawRepresentable {
    public  typealias RawValue = UInt8

    public  init?(rawValue: UInt8) {
        switch rawValue {
        case 0 : self = .NonFungible
        case 1 : self = .FungibleAsset
        case 2 : self = .Fungible
        case 3 : self = .NonFungibleEdition
        case 4 : self = .ProgrammableNonFungible
        default : return nil
        }
    }
    
    public  var rawValue: UInt8 {
        switch self {
        case .NonFungible : return 0
        case .FungibleAsset : return 1
        case .Fungible : return 2
        case .NonFungibleEdition : return 3
        case .ProgrammableNonFungible : return 4
        }
    }
}

/**
 * @category userTypes
 * @category generated
 */
public let tokenStandardBeet = FixedSizeBeet(value: .scalar( FixedScalarEnum<TokenStandard>() ))
public let tokenStandardBeetWrapped = Beet.fixedBeet(tokenStandardBeet)