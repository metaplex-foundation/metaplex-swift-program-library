import Beet

public struct MintPrintingTokensViaTokenArgs {
    public let supply: UInt64

    public init(
        supply: UInt64
    ) {
        self.supply = supply
    }

    static func fromArgs(args: Args) -> MintPrintingTokensViaTokenArgs {
        return MintPrintingTokensViaTokenArgs(
            supply: args["supply"] as! UInt64
        )
    }
}

/**
 * @category userTypes
 * @category generated
 */
public let mintPrintingTokensViaTokenArgsBeet = BeetStruct(
    fields: [
        ("supply", (.init(value: .scalar(u64()))))
    ],
    construct: MintPrintingTokensViaTokenArgs.fromArgs,
    description: "MintPrintingTokensViaTokenArgs"
)

public let mintPrintingTokensViaTokenArgsBeetWrapped = Beet.fixedBeet(.init(value: .scalar(mintPrintingTokensViaTokenArgsBeet)))