import Beet

public struct TransferOutOfEscrowArgs {
    public let amount: UInt64

    public init(
        amount: UInt64
    ) {
        self.amount = amount
    }

    static func fromArgs(args: Args) -> TransferOutOfEscrowArgs {
        return TransferOutOfEscrowArgs(
            amount: args["amount"] as! UInt64
        )
    }
}

/**
 * @category userTypes
 * @category generated
 */
public let transferOutOfEscrowArgsBeet = BeetStruct(
    fields: [
        ("amount", (.init(value: .scalar(u64()))))
    ],
    construct: TransferOutOfEscrowArgs.fromArgs,
    description: "TransferOutOfEscrowArgs"
)

public let transferOutOfEscrowArgsBeetWrapped = Beet.fixedBeet(.init(value: .scalar(transferOutOfEscrowArgsBeet)))