import Beet

/**
 * This type is used to derive the {@link MintArgs} type as well as the de/serializer.
 * However don't refer to it in your code but use the {@link MintArgs} type instead.
 *
 * @category userTypes
 * @category enums
 * @category generated
 * @private
 */
public enum MintArgsRecord {
  case V1(amount: UInt64, authorization_data: COption<AuthorizationData>)
}

extension MintArgsRecord: ConstructableWithDiscriminator {
    public init?(discriminator: UInt8, params: [String: Any]) {
        switch discriminator{
        case 0: self = MintArgsRecord.V1(amount: params["amount"] as! UInt64, authorization_data: params["authorization_data"] as! COption<AuthorizationData>)
        default: return nil
        }
    }
    
    public static func paramsOrderedKeys(discriminator: UInt8) -> [ParamkeyTypes] {
        switch discriminator{
        case 0: return [.key("amount"), .key("authorization_data")]
        default: return []
        }
    }
}

/**
 * Union type respresenting the MintArgs data enum defined in Rust.
 *
 * @category userTypes
 * @category enums
 * @category generated
 */
public typealias MintArgs = MintArgsRecord


/**
 * @category userTypes
 * @category generated
 */
public let mintArgsBeet = DataEnum<MintArgsRecord>(variants: [
    ("V1", Beet.fixableBeat(FixableBeetArgsStruct<MintArgsRecord>(fields: [
            ("amount", Beet.fixedBeet(.init(value: .scalar(u64())))),
            ("authorization_data", Beet.fixableBeat(coption(inner: authorizationDataBeetWrapped)))
        ],
        description: "MintArgsRecord"
    )))
])

public let mintArgsBeetWrapped = Beet.fixableBeat(mintArgsBeet)