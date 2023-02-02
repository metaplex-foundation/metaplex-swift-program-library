import Beet

/**
 * This type is used to derive the {@link TransferArgs} type as well as the de/serializer.
 * However don't refer to it in your code but use the {@link TransferArgs} type instead.
 *
 * @category userTypes
 * @category enums
 * @category generated
 * @private
 */
public enum TransferArgsRecord {
  case V1(amount: UInt64, authorization_data: COption<AuthorizationData>)
}

extension TransferArgsRecord: ConstructableWithDiscriminator {
    public init?(discriminator: UInt8, params: [String: Any]) {
        switch discriminator{
        case 0: self = TransferArgsRecord.V1(amount: params["amount"] as! UInt64, authorization_data: params["authorization_data"] as! COption<AuthorizationData>)
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
 * Union type respresenting the TransferArgs data enum defined in Rust.
 *
 * @category userTypes
 * @category enums
 * @category generated
 */
public typealias TransferArgs = TransferArgsRecord


/**
 * @category userTypes
 * @category generated
 */
public let transferArgsBeet = DataEnum<TransferArgsRecord>(variants: [
    ("V1", Beet.fixableBeat(FixableBeetArgsStruct<TransferArgsRecord>(fields: [
            ("amount", Beet.fixedBeet(.init(value: .scalar(u64())))),
            ("authorization_data", Beet.fixableBeat(coption(inner: authorizationDataBeetWrapped)))
        ],
        description: "TransferArgsRecord"
    )))
])

public let transferArgsBeetWrapped = Beet.fixableBeat(transferArgsBeet)