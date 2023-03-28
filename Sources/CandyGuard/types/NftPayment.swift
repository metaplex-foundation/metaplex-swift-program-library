import Beet
import Solana
import BeetSolana

public struct NftPayment {
    public let requiredCollection: PublicKey
    public let destination: PublicKey

    public init(
        requiredCollection: PublicKey,
        destination: PublicKey
    ) {
        self.requiredCollection = requiredCollection
        self.destination = destination
    }

    static func fromArgs(args: Args) -> NftPayment {
        return NftPayment(
            requiredCollection: args["requiredCollection"] as! PublicKey,
            destination: args["destination"] as! PublicKey
        )
    }
}

/**
 * @category userTypes
 * @category generated
 */
public let nftPaymentBeet = BeetStruct(
    fields: [
        ("requiredCollection", (.init(value: .scalar(BeetPublicKey())))),
        ("destination", (.init(value: .scalar(BeetPublicKey()))))
    ],
    construct: NftPayment.fromArgs,
    description: "NftPayment"
)

public let nftPaymentBeetWrapped = Beet.fixedBeet(.init(value: .scalar(nftPaymentBeet)))