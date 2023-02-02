import Beet

/**
 * This type is used to derive the {@link CreateArgs} type as well as the de/serializer.
 * However don't refer to it in your code but use the {@link CreateArgs} type instead.
 *
 * @category userTypes
 * @category enums
 * @category generated
 * @private
 */
public enum CreateArgsRecord {
  case V1(asset_data: AssetData, decimals: COption<UInt8>, print_supply: COption<PrintSupply>)
}

extension CreateArgsRecord: ConstructableWithDiscriminator {
    public init?(discriminator: UInt8, params: [String: Any]) {
        switch discriminator{
        case 0: self = CreateArgsRecord.V1(asset_data: params["asset_data"] as! AssetData, decimals: params["decimals"] as! COption<UInt8>, print_supply: params["print_supply"] as! COption<PrintSupply>)
        default: return nil
        }
    }
    
    public static func paramsOrderedKeys(discriminator: UInt8) -> [ParamkeyTypes] {
        switch discriminator{
        case 0: return [.key("asset_data"), .key("decimals"), .key("print_supply")]
        default: return []
        }
    }
}

/**
 * Union type respresenting the CreateArgs data enum defined in Rust.
 *
 * @category userTypes
 * @category enums
 * @category generated
 */
public typealias CreateArgs = CreateArgsRecord


/**
 * @category userTypes
 * @category generated
 */
public let createArgsBeet = DataEnum<CreateArgsRecord>(variants: [
    ("V1", Beet.fixableBeat(FixableBeetArgsStruct<CreateArgsRecord>(fields: [
            ("asset_data", assetDataBeetWrapped),
            ("decimals", Beet.fixableBeat(coption(inner: Beet.fixedBeet(.init(value: .scalar(u8())))))),
            ("print_supply", Beet.fixableBeat(coption(inner: printSupplyBeetWrapped)))
        ],
        description: "CreateArgsRecord"
    )))
])

public let createArgsBeetWrapped = Beet.fixableBeat(createArgsBeet)