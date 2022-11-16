import BeetSolana
import Solana
import Beet

public struct Collection {
    let verified: Bool
    let key: PublicKey
}

/**
 * @category userTypes
 * @category generated
 */
public let collectionBeet = BeetArgsStruct(fields: [
    ("verified", (.init(value: .scalar(bool())))),
    ("key", (.init(value: .scalar(BeetPublicKey()))))
], description: "Collection")

public let collectionBeetWrapped = Beet.fixedBeet(.init(value: .scalar(collectionBeet)))