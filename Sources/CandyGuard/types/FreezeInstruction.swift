import Beet

/**
 * @category enums
 * @category generated
 */
public enum FreezeInstruction {
    case Initialize, Thaw, UnlockFunds
}

extension FreezeInstruction : CaseIterable & RawRepresentable {
    public  typealias RawValue = UInt8

    public  init?(rawValue: UInt8) {
        switch rawValue {
        case 0 : self = .Initialize
        case 1 : self = .Thaw
        case 2 : self = .UnlockFunds
        default : return nil
        }
    }
    
    public  var rawValue: UInt8 {
        switch self {
        case .Initialize : return 0
        case .Thaw : return 1
        case .UnlockFunds : return 2
        }
    }
}

/**
 * @category userTypes
 * @category generated
 */
public let freezeInstructionBeet = FixedSizeBeet(value: .scalar( FixedScalarEnum<FreezeInstruction>() ))
public let freezeInstructionBeetWrapped = Beet.fixedBeet(freezeInstructionBeet)