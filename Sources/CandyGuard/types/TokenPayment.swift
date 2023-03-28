import Beet
import Solana
import BeetSolana

public struct TokenPayment {
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

    static func fromArgs(args: Args) -> TokenPayment {
        return TokenPayment(
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
public let tokenPaymentBeet = BeetStruct(
    fields: [
        ("amount", (.init(value: .scalar(u64())))),
        ("mint", (.init(value: .scalar(BeetPublicKey())))),
        ("destinationAta", (.init(value: .scalar(BeetPublicKey()))))
    ],
    construct: TokenPayment.fromArgs,
    description: "TokenPayment"
)

public let tokenPaymentBeetWrapped = Beet.fixedBeet(.init(value: .scalar(tokenPaymentBeet)))