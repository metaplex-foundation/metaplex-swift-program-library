import Beet

/**
 * @category enums
 * @category generated
 */
public enum RuleSetToggle {
    case None, Clear, Set
}

extension RuleSetToggle : CaseIterable & RawRepresentable {
    public  typealias RawValue = UInt8

    public  init?(rawValue: UInt8) {
        switch rawValue {
        case 0 : self = .None
        case 1 : self = .Clear
        case 2 : self = .Set
        default : return nil
        }
    }
    
    public  var rawValue: UInt8 {
        switch self {
        case .None : return 0
        case .Clear : return 1
        case .Set : return 2
        }
    }
}

/**
 * @category userTypes
 * @category generated
 */
public let ruleSetToggleBeet = FixedSizeBeet(value: .scalar( FixedScalarEnum<RuleSetToggle>() ))
public let ruleSetToggleBeetWrapped = Beet.fixedBeet(ruleSetToggleBeet)