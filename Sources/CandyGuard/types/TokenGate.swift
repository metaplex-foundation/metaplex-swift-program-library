import Beet
import Solana
import BeetSolana

public struct TokenGate {
    public let amount: UInt64
    public let mint: PublicKey

    public init(
        amount: UInt64,
        mint: PublicKey
    ) {
        self.amount = amount
        self.mint = mint
    }

    static func fromArgs(args: Args) -> TokenGate {
        return TokenGate(
            amount: args["amount"] as! UInt64,
            mint: args["mint"] as! PublicKey
        )
    }
}

/**
 * @category userTypes
 * @category generated
 */
public let tokenGateBeet = BeetStruct(
    fields: [
        ("amount", (.init(value: .scalar(u64())))),
        ("mint", (.init(value: .scalar(BeetPublicKey()))))
    ],
    construct: TokenGate.fromArgs,
    description: "TokenGate"
)

public let tokenGateBeetWrapped = Beet.fixedBeet(.init(value: .scalar(tokenGateBeet)))