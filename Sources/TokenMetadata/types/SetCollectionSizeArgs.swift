import Beet

public struct SetCollectionSizeArgs {
    let size: UInt64
}

/**
 * @category userTypes
 * @category generated
 */
public let setCollectionSizeArgsBeet = BeetArgsStruct(fields: [
    ("size", (.init(value: .scalar(u64()))))
], description: "SetCollectionSizeArgs")

public let setCollectionSizeArgsBeetWrapped = Beet.fixedBeet(.init(value: .scalar(setCollectionSizeArgsBeet)))