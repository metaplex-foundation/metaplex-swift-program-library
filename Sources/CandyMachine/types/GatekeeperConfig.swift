import Solana
import BeetSolana
import Beet

public struct GatekeeperConfig {
    let gatekeeperNetwork: PublicKey
    let expireOnUse: Bool
}

/**
 * @category userTypes
 * @category generated
 */
public let gatekeeperConfigBeet = BeetArgsStruct(fields: [
    ("gatekeeperNetwork", (.init(value: .scalar(BeetPublicKey())))),
    ("expireOnUse", (.init(value: .scalar(bool()))))
], description: "GatekeeperConfig")

public let gatekeeperConfigBeetWrapped = Beet.fixedBeet(.init(value: .scalar(gatekeeperConfigBeet)))