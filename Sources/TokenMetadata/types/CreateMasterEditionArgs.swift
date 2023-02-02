import Beet

public struct CreateMasterEditionArgs {
    public let maxSupply: COption<UInt64>

    public init(
        maxSupply: COption<UInt64>
    ) {
        self.maxSupply = maxSupply
    }

    static func fromArgs(args: Args) -> CreateMasterEditionArgs {
        return CreateMasterEditionArgs(
            maxSupply: args["maxSupply"] as! COption<UInt64>
        )
    }
}

/**
 * @category userTypes
 * @category generated
 */
public let createMasterEditionArgsBeet = FixableBeetStruct<CreateMasterEditionArgs>(
    fields: [
        ("maxSupply", Beet.fixableBeat(coption(inner: Beet.fixedBeet(.init(value: .scalar(u64()))))))
    ],
    construct: CreateMasterEditionArgs.fromArgs,
    description: "CreateMasterEditionArgs"
)

public let createMasterEditionArgsBeetWrapped = Beet.fixableBeat(createMasterEditionArgsBeet)