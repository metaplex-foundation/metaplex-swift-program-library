import Beet

public struct RedeemedAmount {
    public let maximum: UInt64

    public init(
        maximum: UInt64
    ) {
        self.maximum = maximum
    }

    static func fromArgs(args: Args) -> RedeemedAmount {
        return RedeemedAmount(
            maximum: args["maximum"] as! UInt64
        )
    }
}

/**
 * @category userTypes
 * @category generated
 */
public let redeemedAmountBeet = BeetStruct(
    fields: [
        ("maximum", (.init(value: .scalar(u64()))))
    ],
    construct: RedeemedAmount.fromArgs,
    description: "RedeemedAmount"
)

public let redeemedAmountBeetWrapped = Beet.fixedBeet(.init(value: .scalar(redeemedAmountBeet)))