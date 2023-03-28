import Beet
import Solana
import BeetSolana

public struct NftGate {
    public let requiredCollection: PublicKey

    public init(
        requiredCollection: PublicKey
    ) {
        self.requiredCollection = requiredCollection
    }

    static func fromArgs(args: Args) -> NftGate {
        return NftGate(
            requiredCollection: args["requiredCollection"] as! PublicKey
        )
    }
}

/**
 * @category userTypes
 * @category generated
 */
public let nftGateBeet = BeetStruct(
    fields: [
        ("requiredCollection", (.init(value: .scalar(BeetPublicKey()))))
    ],
    construct: NftGate.fromArgs,
    description: "NftGate"
)

public let nftGateBeetWrapped = Beet.fixedBeet(.init(value: .scalar(nftGateBeet)))