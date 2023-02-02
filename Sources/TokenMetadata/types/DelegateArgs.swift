import Beet

/**
 * This type is used to derive the {@link DelegateArgs} type as well as the de/serializer.
 * However don't refer to it in your code but use the {@link DelegateArgs} type instead.
 *
 * @category userTypes
 * @category enums
 * @category generated
 * @private
 */
public enum DelegateArgsRecord {
  case CollectionV1(authorization_data: COption<AuthorizationData>)
  case SaleV1(amount: UInt64, authorization_data: COption<AuthorizationData>)
  case TransferV1(amount: UInt64, authorization_data: COption<AuthorizationData>)
  case UpdateV1(authorization_data: COption<AuthorizationData>)
  case UtilityV1(amount: UInt64, authorization_data: COption<AuthorizationData>)
  case StakingV1(amount: UInt64, authorization_data: COption<AuthorizationData>)
  case StandardV1(amount: UInt64)
}

extension DelegateArgsRecord: ConstructableWithDiscriminator {
    public init?(discriminator: UInt8, params: [String: Any]) {
        switch discriminator{
        case 0: self = DelegateArgsRecord.CollectionV1(authorization_data: params["authorization_data"] as! COption<AuthorizationData>)
        case 1: self = DelegateArgsRecord.SaleV1(amount: params["amount"] as! UInt64, authorization_data: params["authorization_data"] as! COption<AuthorizationData>)
        case 2: self = DelegateArgsRecord.TransferV1(amount: params["amount"] as! UInt64, authorization_data: params["authorization_data"] as! COption<AuthorizationData>)
        case 3: self = DelegateArgsRecord.UpdateV1(authorization_data: params["authorization_data"] as! COption<AuthorizationData>)
        case 4: self = DelegateArgsRecord.UtilityV1(amount: params["amount"] as! UInt64, authorization_data: params["authorization_data"] as! COption<AuthorizationData>)
        case 5: self = DelegateArgsRecord.StakingV1(amount: params["amount"] as! UInt64, authorization_data: params["authorization_data"] as! COption<AuthorizationData>)
        case 6: self = DelegateArgsRecord.StandardV1(amount: params["amount"] as! UInt64)
        default: return nil
        }
    }
    
    public static func paramsOrderedKeys(discriminator: UInt8) -> [ParamkeyTypes] {
        switch discriminator{
        case 0: return [.key("authorization_data")]
        case 1: return [.key("amount"), .key("authorization_data")]
        case 2: return [.key("amount"), .key("authorization_data")]
        case 3: return [.key("authorization_data")]
        case 4: return [.key("amount"), .key("authorization_data")]
        case 5: return [.key("amount"), .key("authorization_data")]
        case 6: return [.key("amount")]
        default: return []
        }
    }
}

/**
 * Union type respresenting the DelegateArgs data enum defined in Rust.
 *
 * @category userTypes
 * @category enums
 * @category generated
 */
public typealias DelegateArgs = DelegateArgsRecord


/**
 * @category userTypes
 * @category generated
 */
public let delegateArgsBeet = DataEnum<DelegateArgsRecord>(variants: [
    ("CollectionV1", Beet.fixableBeat(FixableBeetArgsStruct<DelegateArgsRecord>(fields: [
            ("authorization_data", Beet.fixableBeat(coption(inner: authorizationDataBeetWrapped)))
        ],
        description: "DelegateArgsRecord"
    ))),
    ("SaleV1", Beet.fixableBeat(FixableBeetArgsStruct<DelegateArgsRecord>(fields: [
            ("amount", Beet.fixedBeet(.init(value: .scalar(u64())))),
            ("authorization_data", Beet.fixableBeat(coption(inner: authorizationDataBeetWrapped)))
        ],
        description: "DelegateArgsRecord"
    ))),
    ("TransferV1", Beet.fixableBeat(FixableBeetArgsStruct<DelegateArgsRecord>(fields: [
            ("amount", Beet.fixedBeet(.init(value: .scalar(u64())))),
            ("authorization_data", Beet.fixableBeat(coption(inner: authorizationDataBeetWrapped)))
        ],
        description: "DelegateArgsRecord"
    ))),
    ("UpdateV1", Beet.fixableBeat(FixableBeetArgsStruct<DelegateArgsRecord>(fields: [
            ("authorization_data", Beet.fixableBeat(coption(inner: authorizationDataBeetWrapped)))
        ],
        description: "DelegateArgsRecord"
    ))),
    ("UtilityV1", Beet.fixableBeat(FixableBeetArgsStruct<DelegateArgsRecord>(fields: [
            ("amount", Beet.fixedBeet(.init(value: .scalar(u64())))),
            ("authorization_data", Beet.fixableBeat(coption(inner: authorizationDataBeetWrapped)))
        ],
        description: "DelegateArgsRecord"
    ))),
    ("StakingV1", Beet.fixableBeat(FixableBeetArgsStruct<DelegateArgsRecord>(fields: [
            ("amount", Beet.fixedBeet(.init(value: .scalar(u64())))),
            ("authorization_data", Beet.fixableBeat(coption(inner: authorizationDataBeetWrapped)))
        ],
        description: "DelegateArgsRecord"
    ))),
    ("StandardV1", Beet.fixedBeet(.init(value: .scalar(BeetArgsStruct(fields: [
            ("amount", .init(value: .scalar(u64())))
        ],
        description: "DelegateArgsRecord"
    )))))
])

public let delegateArgsBeetWrapped = Beet.fixableBeat(delegateArgsBeet)