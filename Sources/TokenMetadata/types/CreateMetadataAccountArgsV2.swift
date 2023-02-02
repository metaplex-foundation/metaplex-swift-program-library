import Beet

public struct CreateMetadataAccountArgsV2 {
    public let data: DataV2
    public let isMutable: Bool

    public init(
        data: DataV2,
        isMutable: Bool
    ) {
        self.data = data
        self.isMutable = isMutable
    }

    static func fromArgs(args: Args) -> CreateMetadataAccountArgsV2 {
        return CreateMetadataAccountArgsV2(
            data: args["data"] as! DataV2,
            isMutable: args["isMutable"] as! Bool
        )
    }
}

/**
 * @category userTypes
 * @category generated
 */
public let createMetadataAccountArgsV2Beet = FixableBeetStruct<CreateMetadataAccountArgsV2>(
    fields: [
        ("data", dataV2BeetWrapped),
        ("isMutable", Beet.fixedBeet(.init(value: .scalar(bool()))))
    ],
    construct: CreateMetadataAccountArgsV2.fromArgs,
    description: "CreateMetadataAccountArgsV2"
)

public let createMetadataAccountArgsV2BeetWrapped = Beet.fixableBeat(createMetadataAccountArgsV2Beet)