import Beet

/**
 * This type is used to derive the {@link VerifyArgs} type as well as the de/serializer.
 * However don't refer to it in your code but use the {@link VerifyArgs} type instead.
 *
 * @category userTypes
 * @category enums
 * @category generated
 * @private
 */
public enum VerifyArgsRecord {
  case V1(authorization_data: COption<AuthorizationData>)
}

extension VerifyArgsRecord: ConstructableWithDiscriminator {
    public init?(discriminator: UInt8, params: [String: Any]) {
        switch discriminator{
        case 0: self = VerifyArgsRecord.V1(authorization_data: params["authorization_data"] as! COption<AuthorizationData>)
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
 * Union type respresenting the VerifyArgs data enum defined in Rust.
 *
 * @category userTypes
 * @category enums
 * @category generated
 */
public typealias VerifyArgs = VerifyArgsRecord


/**
 * @category userTypes
 * @category generated
 */
public let verifyArgsBeet = DataEnum<VerifyArgsRecord>(variants: [
    ("V1", Beet.fixableBeat(FixableBeetArgsStruct<VerifyArgsRecord>(fields: [
            ("authorization_data", Beet.fixableBeat(coption(inner: authorizationDataBeetWrapped)))
        ],
        description: "VerifyArgsRecord"
    )))
])

public let verifyArgsBeetWrapped = Beet.fixableBeat(verifyArgsBeet)