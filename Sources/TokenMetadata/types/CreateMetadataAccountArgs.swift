import Beet

public struct CreateMetadataAccountArgs {
    let data: Data
    let isMutable: Bool
}

/**
 * @category userTypes
 * @category generated
 */
public let createMetadataAccountArgsBeet = FixableBeetArgsStruct<CreateMetadataAccountArgs>(fields: [
    ("data", dataBeetWrapped),
    ("isMutable", Beet.fixedBeet(.init(value: .scalar(bool()))))
], description: "CreateMetadataAccountArgs")

public let createMetadataAccountArgsBeetWrapped = Beet.fixableBeat(createMetadataAccountArgsBeet)