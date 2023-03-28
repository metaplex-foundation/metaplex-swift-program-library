import Solana
import Beet
import BeetSolana

public struct FreezeTokenPayment {
    public let amount: UInt64
    public let mint: PublicKey
    public let destinationAta: PublicKey

    public init(
        amount: UInt64,
        mint: PublicKey,
        destinationAta: PublicKey
    ) {
        self.amount = amount
        self.mint = mint
        self.destinationAta = destinationAta
    }

    static func fromArgs(args: Args) -> FreezeTokenPayment {
        return FreezeTokenPayment(
            amount: args["amount"] as! UInt64,
            mint: args["mint"] as! PublicKey,
            destinationAta: args["destinationAta"] as! PublicKey
        )
    }
}

/**
 * @category userTypes
 * @category generated
 */
public let freezeTokenPaymentBeet = BeetStruct(
    fields: [
        ("amount", (.init(value: .scalar(u64())))),
        ("mint", (.init(value: .scalar(BeetPublicKey())))),
        ("destinationAta", (.init(value: .scalar(BeetPublicKey()))))
    ],
    construct: FreezeTokenPayment.fromArgs,
    description: "FreezeTokenPayment"
)

public let freezeTokenPaymentBeetWrapped = Beet.fixedBeet(.init(value: .scalar(freezeTokenPaymentBeet)))