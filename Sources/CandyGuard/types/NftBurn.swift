import Beet
import Solana
import BeetSolana

public struct NftBurn {
    public let requiredCollection: PublicKey

    public init(
        requiredCollection: PublicKey
    ) {
        self.requiredCollection = requiredCollection
    }

    static func fromArgs(args: Args) -> NftBurn {
        return NftBurn(
            requiredCollection: args["requiredCollection"] as! PublicKey
        )
    }
}

/**
 * @category userTypes
 * @category generated
 */
public let nftBurnBeet = BeetStruct(
    fields: [
        ("requiredCollection", (.init(value: .scalar(BeetPublicKey()))))
    ],
    construct: NftBurn.fromArgs,
    description: "NftBurn"
)

public let nftBurnBeetWrapped = Beet.fixedBeet(.init(value: .scalar(nftBurnBeet)))