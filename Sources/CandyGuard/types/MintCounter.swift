import Beet

public struct MintCounter {
    public let count: UInt16

    public init(
        count: UInt16
    ) {
        self.count = count
    }

    static func fromArgs(args: Args) -> MintCounter {
        return MintCounter(
            count: args["count"] as! UInt16
        )
    }
}

/**
 * @category userTypes
 * @category generated
 */
public let mintCounterBeet = BeetStruct(
    fields: [
        ("count", (.init(value: .scalar(u16()))))
    ],
    construct: MintCounter.fromArgs,
    description: "MintCounter"
)

public let mintCounterBeetWrapped = Beet.fixedBeet(.init(value: .scalar(mintCounterBeet)))