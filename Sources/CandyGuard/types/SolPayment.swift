import BeetSolana
import Solana
import Beet

public struct SolPayment {
    public let lamports: UInt64
    public let destination: PublicKey

    public init(
        lamports: UInt64,
        destination: PublicKey
    ) {
        self.lamports = lamports
        self.destination = destination
    }

    static func fromArgs(args: Args) -> SolPayment {
        return SolPayment(
            lamports: args["lamports"] as! UInt64,
            destination: args["destination"] as! PublicKey
        )
    }
}

/**
 * @category userTypes
 * @category generated
 */
public let solPaymentBeet = BeetStruct(
    fields: [
        ("lamports", (.init(value: .scalar(u64())))),
        ("destination", (.init(value: .scalar(BeetPublicKey()))))
    ],
    construct: SolPayment.fromArgs,
    description: "SolPayment"
)

public let solPaymentBeetWrapped = Beet.fixedBeet(.init(value: .scalar(solPaymentBeet)))