import Beet

public struct CreateMetadataAccountArgsV3 {
    public let data: DataV2
    public let isMutable: Bool
    public let collectionDetails: COption<CollectionDetails>

    public init(
        data: DataV2,
        isMutable: Bool,
        collectionDetails: COption<CollectionDetails>
    ) {
        self.data = data
        self.isMutable = isMutable
        self.collectionDetails = collectionDetails
    }

    static func fromArgs(args: Args) -> CreateMetadataAccountArgsV3 {
        return CreateMetadataAccountArgsV3(
            data: args["data"] as! DataV2,
            isMutable: args["isMutable"] as! Bool,
            collectionDetails: args["collectionDetails"] as! COption<CollectionDetails>
        )
    }
}

/**
 * @category userTypes
 * @category generated
 */
public let createMetadataAccountArgsV3Beet = FixableBeetStruct<CreateMetadataAccountArgsV3>(
    fields: [
        ("data", dataV2BeetWrapped),
        ("isMutable", Beet.fixedBeet(.init(value: .scalar(bool())))),
        ("collectionDetails", Beet.fixableBeat(coption(inner: collectionDetailsBeetWrapped)))
    ],
    construct: CreateMetadataAccountArgsV3.fromArgs,
    description: "CreateMetadataAccountArgsV3"
)

public let createMetadataAccountArgsV3BeetWrapped = Beet.fixableBeat(createMetadataAccountArgsV3Beet)