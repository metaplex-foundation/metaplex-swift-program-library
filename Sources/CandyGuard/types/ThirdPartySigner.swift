import Beet
import Solana
import BeetSolana

public struct ThirdPartySigner {
    public let signerKey: PublicKey

    public init(
        signerKey: PublicKey
    ) {
        self.signerKey = signerKey
    }

    static func fromArgs(args: Args) -> ThirdPartySigner {
        return ThirdPartySigner(
            signerKey: args["signerKey"] as! PublicKey
        )
    }
}

/**
 * @category userTypes
 * @category generated
 */
public let thirdPartySignerBeet = BeetStruct(
    fields: [
        ("signerKey", (.init(value: .scalar(BeetPublicKey()))))
    ],
    construct: ThirdPartySigner.fromArgs,
    description: "ThirdPartySigner"
)

public let thirdPartySignerBeetWrapped = Beet.fixedBeet(.init(value: .scalar(thirdPartySignerBeet)))