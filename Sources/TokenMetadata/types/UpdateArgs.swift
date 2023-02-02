import Beet
import BeetSolana
import Solana

/**
 * This type is used to derive the {@link UpdateArgs} type as well as the de/serializer.
 * However don't refer to it in your code but use the {@link UpdateArgs} type instead.
 *
 * @category userTypes
 * @category enums
 * @category generated
 * @private
 */
public enum UpdateArgsRecord {
  case V1(new_update_authority: COption<PublicKey>, data: COption<Data>, primary_sale_happened: COption<Bool>, is_mutable: COption<Bool>, collection: CollectionToggle, collection_details: CollectionDetailsToggle, uses: UsesToggle, rule_set: RuleSetToggle, authorization_data: COption<AuthorizationData>)
}

extension UpdateArgsRecord: ConstructableWithDiscriminator {
    public init?(discriminator: UInt8, params: [String: Any]) {
        switch discriminator{
        case 0: self = UpdateArgsRecord.V1(new_update_authority: params["new_update_authority"] as! COption<PublicKey>, data: params["data"] as! COption<Data>, primary_sale_happened: params["primary_sale_happened"] as! COption<Bool>, is_mutable: params["is_mutable"] as! COption<Bool>, collection: params["collection"] as! CollectionToggle, collection_details: params["collection_details"] as! CollectionDetailsToggle, uses: params["uses"] as! UsesToggle, rule_set: params["rule_set"] as! RuleSetToggle, authorization_data: params["authorization_data"] as! COption<AuthorizationData>)
        default: return nil
        }
    }
    
    public static func paramsOrderedKeys(discriminator: UInt8) -> [ParamkeyTypes] {
        switch discriminator{
        case 0: return [.key("new_update_authority"), .key("data"), .key("primary_sale_happened"), .key("is_mutable"), .key("collection"), .key("collection_details"), .key("uses"), .key("rule_set"), .key("authorization_data")]
        default: return []
        }
    }
}

/**
 * Union type respresenting the UpdateArgs data enum defined in Rust.
 *
 * @category userTypes
 * @category enums
 * @category generated
 */
public typealias UpdateArgs = UpdateArgsRecord


/**
 * @category userTypes
 * @category generated
 */
public let updateArgsBeet = DataEnum<UpdateArgsRecord>(variants: [
    ("V1", Beet.fixableBeat(FixableBeetArgsStruct<UpdateArgsRecord>(fields: [
            ("new_update_authority", Beet.fixableBeat(coption(inner: Beet.fixedBeet(.init(value: .scalar(BeetPublicKey())))))),
            ("data", Beet.fixableBeat(coption(inner: dataBeetWrapped))),
            ("primary_sale_happened", Beet.fixableBeat(coption(inner: Beet.fixedBeet(.init(value: .scalar(bool())))))),
            ("is_mutable", Beet.fixableBeat(coption(inner: Beet.fixedBeet(.init(value: .scalar(bool())))))),
            ("collection", collectionToggleBeetWrapped),
            ("collection_details", collectionDetailsToggleBeetWrapped),
            ("uses", usesToggleBeetWrapped),
            ("rule_set", ruleSetToggleBeetWrapped),
            ("authorization_data", Beet.fixableBeat(coption(inner: authorizationDataBeetWrapped)))
        ],
        description: "UpdateArgsRecord"
    )))
])

public let updateArgsBeetWrapped = Beet.fixableBeat(updateArgsBeet)