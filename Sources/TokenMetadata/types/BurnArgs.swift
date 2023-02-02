import Beet

/**
 * This type is used to derive the {@link BurnArgs} type as well as the de/serializer.
 * However don't refer to it in your code but use the {@link BurnArgs} type instead.
 *
 * @category userTypes
 * @category enums
 * @category generated
 * @private
 */
public enum BurnArgsRecord {
  case V1(authorization_data: COption<AuthorizationData>)
}

extension BurnArgsRecord: ConstructableWithDiscriminator {
    public init?(discriminator: UInt8, params: [String: Any]) {
        switch discriminator{
        case 0: self = BurnArgsRecord.V1(authorization_data: params["authorization_data"] as! COption<AuthorizationData>)
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
 * Union type respresenting the BurnArgs data enum defined in Rust.
 *
 * @category userTypes
 * @category enums
 * @category generated
 */
public typealias BurnArgs = BurnArgsRecord


/**
 * @category userTypes
 * @category generated
 */
public let burnArgsBeet = DataEnum<BurnArgsRecord>(variants: [
    ("V1", Beet.fixableBeat(FixableBeetArgsStruct<BurnArgsRecord>(fields: [
            ("authorization_data", Beet.fixableBeat(coption(inner: authorizationDataBeetWrapped)))
        ],
        description: "BurnArgsRecord"
    )))
])

public let burnArgsBeetWrapped = Beet.fixableBeat(burnArgsBeet)