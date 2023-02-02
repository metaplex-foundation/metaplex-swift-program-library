import Beet

public struct MintNewEditionFromMasterEditionViaTokenArgs {
    public let edition: UInt64

    public init(
        edition: UInt64
    ) {
        self.edition = edition
    }

    static func fromArgs(args: Args) -> MintNewEditionFromMasterEditionViaTokenArgs {
        return MintNewEditionFromMasterEditionViaTokenArgs(
            edition: args["edition"] as! UInt64
        )
    }
}

/**
 * @category userTypes
 * @category generated
 */
public let mintNewEditionFromMasterEditionViaTokenArgsBeet = BeetStruct(
    fields: [
        ("edition", (.init(value: .scalar(u64()))))
    ],
    construct: MintNewEditionFromMasterEditionViaTokenArgs.fromArgs,
    description: "MintNewEditionFromMasterEditionViaTokenArgs"
)

public let mintNewEditionFromMasterEditionViaTokenArgsBeetWrapped = Beet.fixedBeet(.init(value: .scalar(mintNewEditionFromMasterEditionViaTokenArgsBeet)))