import Beet

public struct CreateMetadataAccountArgsV2 {
    let data: DataV2
    let isMutable: Bool
}

/**
 * @category userTypes
 * @category generated
 */
public let createMetadataAccountArgsV2Beet = FixableBeetArgsStruct<CreateMetadataAccountArgsV2>(fields: [
    ("data", dataV2BeetWrapped),
    ("isMutable", Beet.fixedBeet(.init(value: .scalar(bool()))))
], description: "CreateMetadataAccountArgsV2")

public let createMetadataAccountArgsV2BeetWrapped = Beet.fixableBeat(createMetadataAccountArgsV2Beet)