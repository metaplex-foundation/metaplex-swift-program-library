import BeetSolana
import Beet
import Solana

public struct GatekeeperConfig {
    public let gatekeeperNetwork: PublicKey
    public let expireOnUse: Bool

    public init(
        gatekeeperNetwork: PublicKey,
        expireOnUse: Bool
    ) {
        self.gatekeeperNetwork = gatekeeperNetwork
        self.expireOnUse = expireOnUse
    }

    static func fromArgs(args: Args) -> GatekeeperConfig {
        return GatekeeperConfig(
            gatekeeperNetwork: args["gatekeeperNetwork"] as! PublicKey,
            expireOnUse: args["expireOnUse"] as! Bool
        )
    }
}

/**
 * @category userTypes
 * @category generated
 */
public let gatekeeperConfigBeet = BeetStruct(
    fields: [
        ("gatekeeperNetwork", (.init(value: .scalar(BeetPublicKey())))),
        ("expireOnUse", (.init(value: .scalar(bool()))))
    ],
    construct: GatekeeperConfig.fromArgs,
    description: "GatekeeperConfig"
)

public let gatekeeperConfigBeetWrapped = Beet.fixedBeet(.init(value: .scalar(gatekeeperConfigBeet)))