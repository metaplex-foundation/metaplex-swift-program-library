import Beet

/**
 * This type is used to derive the {@link CollectionDetails} type as well as the de/serializer.
 * However don't refer to it in your code but use the {@link CollectionDetails} type instead.
 *
 * @category userTypes
 * @category enums
 * @category generated
 * @private
 */
public enum CollectionDetailsRecord: Equatable {
  case V1(size: UInt64)
}

extension CollectionDetailsRecord: ConstructableWithDiscriminator {
    public init?(discriminator: UInt8, params: [String: Any]) {
        switch discriminator{
        case 0: self = CollectionDetailsRecord.V1(size: params["size"] as! UInt64)
        default: return nil
        }
    }
    
    public static func paramsOrderedKeys(discriminator: UInt8) -> [ParamkeyTypes] {
        switch discriminator{
        case 0: return [.key("size")]
        default: return []
        }
    }
}

/**
 * Union type respresenting the CollectionDetails data enum defined in Rust.
 *
 * @category userTypes
 * @category enums
 * @category generated
 */
public typealias CollectionDetails = CollectionDetailsRecord


/**
 * @category userTypes
 * @category generated
 */
public let collectionDetailsBeet = DataEnum<CollectionDetailsRecord>(variants: [
    ("V1", Beet.fixedBeet(.init(value: .scalar(BeetArgsStruct(fields: [
            ("size", .init(value: .scalar(u64())))
        ],
        description: "CollectionDetailsRecord"
    )))))
])

public let collectionDetailsBeetWrapped = Beet.fixableBeat(collectionDetailsBeet)