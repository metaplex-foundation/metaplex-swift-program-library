import BeetSolana
import Solana
import Beet

public struct Collection {
    public let verified: Bool
    public let key: PublicKey

    public init(
        verified: Bool,
        key: PublicKey
    ) {
        self.verified = verified
        self.key = key
    }

    static func fromArgs(args: Args) -> Collection {
        return Collection(
            verified: args["verified"] as! Bool,
            key: args["key"] as! PublicKey
        )
    }
}

/**
 * @category userTypes
 * @category generated
 */
public let collectionBeet = BeetStruct(
    fields: [
        ("verified", (.init(value: .scalar(bool())))),
        ("key", (.init(value: .scalar(BeetPublicKey()))))
    ],
    construct: Collection.fromArgs,
    description: "Collection"
)

public let collectionBeetWrapped = Beet.fixedBeet(.init(value: .scalar(collectionBeet)))