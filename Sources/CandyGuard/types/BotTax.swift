import Beet

public struct BotTax {
    public let lamports: UInt64
    public let lastInstruction: Bool

    public init(
        lamports: UInt64,
        lastInstruction: Bool
    ) {
        self.lamports = lamports
        self.lastInstruction = lastInstruction
    }

    static func fromArgs(args: Args) -> BotTax {
        return BotTax(
            lamports: args["lamports"] as! UInt64,
            lastInstruction: args["lastInstruction"] as! Bool
        )
    }
}

/**
 * @category userTypes
 * @category generated
 */
public let botTaxBeet = BeetStruct(
    fields: [
        ("lamports", (.init(value: .scalar(u64())))),
        ("lastInstruction", (.init(value: .scalar(bool()))))
    ],
    construct: BotTax.fromArgs,
    description: "BotTax"
)

public let botTaxBeetWrapped = Beet.fixedBeet(.init(value: .scalar(botTaxBeet)))