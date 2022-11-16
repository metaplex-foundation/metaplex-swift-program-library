import Beet

public struct ApproveUseAuthorityArgs {
    let numberOfUses: UInt64
}

/**
 * @category userTypes
 * @category generated
 */
public let approveUseAuthorityArgsBeet = BeetArgsStruct(fields: [
    ("numberOfUses", (.init(value: .scalar(u64()))))
], description: "ApproveUseAuthorityArgs")

public let approveUseAuthorityArgsBeetWrapped = Beet.fixedBeet(.init(value: .scalar(approveUseAuthorityArgsBeet)))