import Solana
import BeetSolana
import Beet

/**
 * This type is used to derive the {@link ProgrammableConfig} type as well as the de/serializer.
 * However don't refer to it in your code but use the {@link ProgrammableConfig} type instead.
 *
 * @category userTypes
 * @category enums
 * @category generated
 * @private
 */
public enum ProgrammableConfigRecord {
  case V1(rule_set: COption<PublicKey>)
}

extension ProgrammableConfigRecord: ConstructableWithDiscriminator {
    public init?(discriminator: UInt8, params: [String: Any]) {
        switch discriminator{
        case 0: self = ProgrammableConfigRecord.V1(rule_set: params["rule_set"] as! COption<PublicKey>)
        default: return nil
        }
    }
    
    public static func paramsOrderedKeys(discriminator: UInt8) -> [ParamkeyTypes] {
        switch discriminator{
        case 0: return [.key("rule_set")]
        default: return []
        }
    }
}

/**
 * Union type respresenting the ProgrammableConfig data enum defined in Rust.
 *
 * @category userTypes
 * @category enums
 * @category generated
 */
public typealias ProgrammableConfig = ProgrammableConfigRecord


/**
 * @category userTypes
 * @category generated
 */
public let programmableConfigBeet = DataEnum<ProgrammableConfigRecord>(variants: [
    ("V1", Beet.fixableBeat(FixableBeetArgsStruct<ProgrammableConfigRecord>(fields: [
            ("rule_set", Beet.fixableBeat(coption(inner: Beet.fixedBeet(.init(value: .scalar(BeetPublicKey()))))))
        ],
        description: "ProgrammableConfigRecord"
    )))
])

public let programmableConfigBeetWrapped = Beet.fixableBeat(programmableConfigBeet)