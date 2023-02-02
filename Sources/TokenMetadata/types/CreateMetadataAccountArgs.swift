import Beet

public struct CreateMetadataAccountArgs {
    public let data: Data
    public let isMutable: Bool

    public init(
        data: Data,
        isMutable: Bool
    ) {
        self.data = data
        self.isMutable = isMutable
    }

    static func fromArgs(args: Args) -> CreateMetadataAccountArgs {
        return CreateMetadataAccountArgs(
            data: args["data"] as! Data,
            isMutable: args["isMutable"] as! Bool
        )
    }
}

/**
 * @category userTypes
 * @category generated
 */
public let createMetadataAccountArgsBeet = FixableBeetStruct<CreateMetadataAccountArgs>(
    fields: [
        ("data", dataBeetWrapped),
        ("isMutable", Beet.fixedBeet(.init(value: .scalar(bool()))))
    ],
    construct: CreateMetadataAccountArgs.fromArgs,
    description: "CreateMetadataAccountArgs"
)

public let createMetadataAccountArgsBeetWrapped = Beet.fixableBeat(createMetadataAccountArgsBeet)