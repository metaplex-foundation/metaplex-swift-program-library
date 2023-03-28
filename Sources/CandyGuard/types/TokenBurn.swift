import BeetSolana
import Solana
import Beet

public struct TokenBurn {
    public let amount: UInt64
    public let mint: PublicKey

    public init(
        amount: UInt64,
        mint: PublicKey
    ) {
        self.amount = amount
        self.mint = mint
    }

    static func fromArgs(args: Args) -> TokenBurn {
        return TokenBurn(
            amount: args["amount"] as! UInt64,
            mint: args["mint"] as! PublicKey
        )
    }
}

/**
 * @category userTypes
 * @category generated
 */
public let tokenBurnBeet = BeetStruct(
    fields: [
        ("amount", (.init(value: .scalar(u64())))),
        ("mint", (.init(value: .scalar(BeetPublicKey()))))
    ],
    construct: TokenBurn.fromArgs,
    description: "TokenBurn"
)

public let tokenBurnBeetWrapped = Beet.fixedBeet(.init(value: .scalar(tokenBurnBeet)))