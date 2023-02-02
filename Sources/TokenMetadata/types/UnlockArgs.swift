import Beet

/**
 * This type is used to derive the {@link UnlockArgs} type as well as the de/serializer.
 * However don't refer to it in your code but use the {@link UnlockArgs} type instead.
 *
 * @category userTypes
 * @category enums
 * @category generated
 * @private
 */
public enum UnlockArgsRecord {
  case V1(authorization_data: COption<AuthorizationData>)
}

extension UnlockArgsRecord: ConstructableWithDiscriminator {
    public init?(discriminator: UInt8, params: [String: Any]) {
        switch discriminator{
        case 0: self = UnlockArgsRecord.V1(authorization_data: params["authorization_data"] as! COption<AuthorizationData>)
        default: return nil
        }
    }
    
    public static func paramsOrderedKeys(discriminator: UInt8) -> [ParamkeyTypes] {
        switch discriminator{
        case 0: return [.key("authorization_data")]
        default: return []
        }
    }
}

/**
 * Union type respresenting the UnlockArgs data enum defined in Rust.
 *
 * @category userTypes
 * @category enums
 * @category generated
 */
public typealias UnlockArgs = UnlockArgsRecord


/**
 * @category userTypes
 * @category generated
 */
public let unlockArgsBeet = DataEnum<UnlockArgsRecord>(variants: [
    ("V1", Beet.fixableBeat(FixableBeetArgsStruct<UnlockArgsRecord>(fields: [
            ("authorization_data", Beet.fixableBeat(coption(inner: authorizationDataBeetWrapped)))
        ],
        description: "UnlockArgsRecord"
    )))
])

public let unlockArgsBeetWrapped = Beet.fixableBeat(unlockArgsBeet)