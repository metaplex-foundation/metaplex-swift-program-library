import Beet

public struct ApproveUseAuthorityArgs {
    public let numberOfUses: UInt64

    public init(
        numberOfUses: UInt64
    ) {
        self.numberOfUses = numberOfUses
    }

    static func fromArgs(args: Args) -> ApproveUseAuthorityArgs {
        return ApproveUseAuthorityArgs(
            numberOfUses: args["numberOfUses"] as! UInt64
        )
    }
}

/**
 * @category userTypes
 * @category generated
 */
public let approveUseAuthorityArgsBeet = BeetStruct(
    fields: [
        ("numberOfUses", (.init(value: .scalar(u64()))))
    ],
    construct: ApproveUseAuthorityArgs.fromArgs,
    description: "ApproveUseAuthorityArgs"
)

public let approveUseAuthorityArgsBeetWrapped = Beet.fixedBeet(.init(value: .scalar(approveUseAuthorityArgsBeet)))