import Beet

/**
 * This type is used to derive the {@link UseArgs} type as well as the de/serializer.
 * However don't refer to it in your code but use the {@link UseArgs} type instead.
 *
 * @category userTypes
 * @category enums
 * @category generated
 * @private
 */
public enum UseArgsRecord {
  case V1(authorization_data: COption<AuthorizationData>)
}

extension UseArgsRecord: ConstructableWithDiscriminator {
    public init?(discriminator: UInt8, params: [String: Any]) {
        switch discriminator{
        case 0: self = UseArgsRecord.V1(authorization_data: params["authorization_data"] as! COption<AuthorizationData>)
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
 * Union type respresenting the UseArgs data enum defined in Rust.
 *
 * @category userTypes
 * @category enums
 * @category generated
 */
public typealias UseArgs = UseArgsRecord


/**
 * @category userTypes
 * @category generated
 */
public let useArgsBeet = DataEnum<UseArgsRecord>(variants: [
    ("V1", Beet.fixableBeat(FixableBeetArgsStruct<UseArgsRecord>(fields: [
            ("authorization_data", Beet.fixableBeat(coption(inner: authorizationDataBeetWrapped)))
        ],
        description: "UseArgsRecord"
    )))
])

public let useArgsBeetWrapped = Beet.fixableBeat(useArgsBeet)