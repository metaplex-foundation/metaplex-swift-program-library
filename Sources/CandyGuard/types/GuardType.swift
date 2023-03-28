import Beet

/**
 * @category enums
 * @category generated
 */
public enum GuardType {
    case BotTax, SolPayment, TokenPayment, StartDate, ThirdPartySigner, TokenGate, Gatekeeper, EndDate, AllowList, MintLimit, NftPayment, RedeemedAmount, AddressGate, NftGate, NftBurn, TokenBurn, FreezeSolPayment, FreezeTokenPayment, ProgramGate, Allocation
}

extension GuardType : CaseIterable & RawRepresentable {
    public  typealias RawValue = UInt8

    public  init?(rawValue: UInt8) {
        switch rawValue {
        case 0 : self = .BotTax
        case 1 : self = .SolPayment
        case 2 : self = .TokenPayment
        case 3 : self = .StartDate
        case 4 : self = .ThirdPartySigner
        case 5 : self = .TokenGate
        case 6 : self = .Gatekeeper
        case 7 : self = .EndDate
        case 8 : self = .AllowList
        case 9 : self = .MintLimit
        case 10 : self = .NftPayment
        case 11 : self = .RedeemedAmount
        case 12 : self = .AddressGate
        case 13 : self = .NftGate
        case 14 : self = .NftBurn
        case 15 : self = .TokenBurn
        case 16 : self = .FreezeSolPayment
        case 17 : self = .FreezeTokenPayment
        case 18 : self = .ProgramGate
        case 19 : self = .Allocation
        default : return nil
        }
    }
    
    public  var rawValue: UInt8 {
        switch self {
        case .BotTax : return 0
        case .SolPayment : return 1
        case .TokenPayment : return 2
        case .StartDate : return 3
        case .ThirdPartySigner : return 4
        case .TokenGate : return 5
        case .Gatekeeper : return 6
        case .EndDate : return 7
        case .AllowList : return 8
        case .MintLimit : return 9
        case .NftPayment : return 10
        case .RedeemedAmount : return 11
        case .AddressGate : return 12
        case .NftGate : return 13
        case .NftBurn : return 14
        case .TokenBurn : return 15
        case .FreezeSolPayment : return 16
        case .FreezeTokenPayment : return 17
        case .ProgramGate : return 18
        case .Allocation : return 19
        }
    }
}

/**
 * @category userTypes
 * @category generated
 */
public let guardTypeBeet = FixedSizeBeet(value: .scalar( FixedScalarEnum<GuardType>() ))
public let guardTypeBeetWrapped = Beet.fixedBeet(guardTypeBeet)