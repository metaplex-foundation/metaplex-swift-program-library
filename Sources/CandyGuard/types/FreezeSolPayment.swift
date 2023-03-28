import Solana
import Beet
import BeetSolana

public struct FreezeSolPayment {
    public let lamports: UInt64
    public let destination: PublicKey

    public init(
        lamports: UInt64,
        destination: PublicKey
    ) {
        self.lamports = lamports
        self.destination = destination
    }

    static func fromArgs(args: Args) -> FreezeSolPayment {
        return FreezeSolPayment(
            lamports: args["lamports"] as! UInt64,
            destination: args["destination"] as! PublicKey
        )
    }
}

/**
 * @category userTypes
 * @category generated
 */
public let freezeSolPaymentBeet = BeetStruct(
    fields: [
        ("lamports", (.init(value: .scalar(u64())))),
        ("destination", (.init(value: .scalar(BeetPublicKey()))))
    ],
    construct: FreezeSolPayment.fromArgs,
    description: "FreezeSolPayment"
)

public let freezeSolPaymentBeetWrapped = Beet.fixedBeet(.init(value: .scalar(freezeSolPaymentBeet)))