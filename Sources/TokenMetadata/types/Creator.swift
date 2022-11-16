import BeetSolana
import Solana
import Beet

public struct Creator {
    let address: PublicKey
    let verified: Bool
    let share: UInt8
}

/**
 * @category userTypes
 * @category generated
 */
public let creatorBeet = BeetArgsStruct(fields: [
    ("address", (.init(value: .scalar(BeetPublicKey())))),
    ("verified", (.init(value: .scalar(bool())))),
    ("share", (.init(value: .scalar(u8()))))
], description: "Creator")

public let creatorBeetWrapped = Beet.fixedBeet(.init(value: .scalar(creatorBeet)))