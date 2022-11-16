import Beet

public struct Uses {
    let useMethod: UseMethod
    let remaining: UInt64
    let total: UInt64
}

/**
 * @category userTypes
 * @category generated
 */
public let usesBeet = BeetArgsStruct(fields: [
    ("useMethod", useMethodBeet),
    ("remaining", (.init(value: .scalar(u64())))),
    ("total", (.init(value: .scalar(u64()))))
], description: "Uses")

public let usesBeetWrapped = Beet.fixedBeet(.init(value: .scalar(usesBeet)))