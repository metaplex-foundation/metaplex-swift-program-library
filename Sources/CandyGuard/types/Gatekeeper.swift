import Beet
import Solana
import BeetSolana

public struct Gatekeeper {
    public let gatekeeperNetwork: PublicKey
    public let expireOnUse: Bool

    public init(
        gatekeeperNetwork: PublicKey,
        expireOnUse: Bool
    ) {
        self.gatekeeperNetwork = gatekeeperNetwork
        self.expireOnUse = expireOnUse
    }

    static func fromArgs(args: Args) -> Gatekeeper {
        return Gatekeeper(
            gatekeeperNetwork: args["gatekeeperNetwork"] as! PublicKey,
            expireOnUse: args["expireOnUse"] as! Bool
        )
    }
}

/**
 * @category userTypes
 * @category generated
 */
public let gatekeeperBeet = BeetStruct(
    fields: [
        ("gatekeeperNetwork", (.init(value: .scalar(BeetPublicKey())))),
        ("expireOnUse", (.init(value: .scalar(bool()))))
    ],
    construct: Gatekeeper.fromArgs,
    description: "Gatekeeper"
)

public let gatekeeperBeetWrapped = Beet.fixedBeet(.init(value: .scalar(gatekeeperBeet)))