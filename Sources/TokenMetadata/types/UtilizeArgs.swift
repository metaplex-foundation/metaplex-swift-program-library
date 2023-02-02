import Beet

public struct UtilizeArgs {
    public let numberOfUses: UInt64

    public init(
        numberOfUses: UInt64
    ) {
        self.numberOfUses = numberOfUses
    }

    static func fromArgs(args: Args) -> UtilizeArgs {
        return UtilizeArgs(
            numberOfUses: args["numberOfUses"] as! UInt64
        )
    }
}

/**
 * @category userTypes
 * @category generated
 */
public let utilizeArgsBeet = BeetStruct(
    fields: [
        ("numberOfUses", (.init(value: .scalar(u64()))))
    ],
    construct: UtilizeArgs.fromArgs,
    description: "UtilizeArgs"
)

public let utilizeArgsBeetWrapped = Beet.fixedBeet(.init(value: .scalar(utilizeArgsBeet)))