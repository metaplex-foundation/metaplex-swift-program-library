import Beet

public struct CreateMetadataAccountArgsV3 {
    let data: DataV2
    let isMutable: Bool
    let collectionDetails: COption<CollectionDetails>
}

/**
 * @category userTypes
 * @category generated
 */
public let createMetadataAccountArgsV3Beet = FixableBeetArgsStruct<CreateMetadataAccountArgsV3>(fields: [
    ("data", dataV2BeetWrapped),
    ("isMutable", Beet.fixedBeet(.init(value: .scalar(bool())))),
    ("collectionDetails", Beet.fixableBeat(coption(inner: collectionDetailsBeetWrapped)))
], description: "CreateMetadataAccountArgsV3")

public let createMetadataAccountArgsV3BeetWrapped = Beet.fixableBeat(createMetadataAccountArgsV3Beet)