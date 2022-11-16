import BeetSolana
import Solana
import Beet

public struct Creator {
    public let address: PublicKey
    public let verified: Bool
    public let share: UInt8

    public init(
        address: PublicKey,
        verified: Bool,
        share: UInt8
    ) {
        self.address = address
        self.verified = verified
        self.share = share
    }

    static func fromArgs(args: Args) -> Creator {
        return Creator(
            address: args["address"] as! PublicKey,
            verified: args["verified"] as! Bool,
            share: args["share"] as! UInt8
        )
    }
}

/**
 * @category userTypes
 * @category generated
 */
public let creatorBeet = BeetStruct(
    fields: [
        ("address", (.init(value: .scalar(BeetPublicKey())))),
        ("verified", (.init(value: .scalar(bool())))),
        ("share", (.init(value: .scalar(u8()))))
    ],
    construct: Creator.fromArgs,
    description: "Creator"
)

public let creatorBeetWrapped = Beet.fixedBeet(.init(value: .scalar(creatorBeet)))