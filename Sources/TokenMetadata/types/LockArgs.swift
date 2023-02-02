import Beet

/**
 * This type is used to derive the {@link LockArgs} type as well as the de/serializer.
 * However don't refer to it in your code but use the {@link LockArgs} type instead.
 *
 * @category userTypes
 * @category enums
 * @category generated
 * @private
 */
public enum LockArgsRecord {
  case V1(authorization_data: COption<AuthorizationData>)
}

extension LockArgsRecord: ConstructableWithDiscriminator {
    public init?(discriminator: UInt8, params: [String: Any]) {
        switch discriminator{
        case 0: self = LockArgsRecord.V1(authorization_data: params["authorization_data"] as! COption<AuthorizationData>)
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
 * Union type respresenting the LockArgs data enum defined in Rust.
 *
 * @category userTypes
 * @category enums
 * @category generated
 */
public typealias LockArgs = LockArgsRecord


/**
 * @category userTypes
 * @category generated
 */
public let lockArgsBeet = DataEnum<LockArgsRecord>(variants: [
    ("V1", Beet.fixableBeat(FixableBeetArgsStruct<LockArgsRecord>(fields: [
            ("authorization_data", Beet.fixableBeat(coption(inner: authorizationDataBeetWrapped)))
        ],
        description: "LockArgsRecord"
    )))
])

public let lockArgsBeetWrapped = Beet.fixableBeat(lockArgsBeet)