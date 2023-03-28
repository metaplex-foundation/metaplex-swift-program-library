import Beet
import Solana
import BeetSolana

public struct Creator {
    public let address: PublicKey
    public let verified: Bool
    public let percentageShare: UInt8

    public init(
        address: PublicKey,
        verified: Bool,
        percentageShare: UInt8
    ) {
        self.address = address
        self.verified = verified
        self.percentageShare = percentageShare
    }

    static func fromArgs(args: Args) -> Creator {
        return Creator(
            address: args["address"] as! PublicKey,
            verified: args["verified"] as! Bool,
            percentageShare: args["percentageShare"] as! UInt8
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
        ("percentageShare", (.init(value: .scalar(u8()))))
    ],
    construct: Creator.fromArgs,
    description: "Creator"
)

public let creatorBeetWrapped = Beet.fixedBeet(.init(value: .scalar(creatorBeet)))