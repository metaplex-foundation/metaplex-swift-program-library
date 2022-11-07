import Beet

public struct UtilizeArgs {
    let numberOfUses: UInt64
}

/**
 * @category userTypes
 * @category generated
 */
public let utilizeArgsBeet = BeetArgsStruct(fields: [
    ("numberOfUses", (.init(value: .scalar(u64()))))
], description: "UtilizeArgs")

public let utilizeArgsBeetWrapped = Beet.fixedBeet(.init(value: .scalar(utilizeArgsBeet)))