import Beet

public struct Uses {
    public let useMethod: UseMethod
    public let remaining: UInt64
    public let total: UInt64

    public init(
        useMethod: UseMethod,
        remaining: UInt64,
        total: UInt64
    ) {
        self.useMethod = useMethod
        self.remaining = remaining
        self.total = total
    }

    static func fromArgs(args: Args) -> Uses {
        return Uses(
            useMethod: args["useMethod"] as! UseMethod,
            remaining: args["remaining"] as! UInt64,
            total: args["total"] as! UInt64
        )
    }
}

/**
 * @category userTypes
 * @category generated
 */
public let usesBeet = BeetStruct(
    fields: [
        ("useMethod", useMethodBeet),
        ("remaining", (.init(value: .scalar(u64())))),
        ("total", (.init(value: .scalar(u64()))))
    ],
    construct: Uses.fromArgs,
    description: "Uses"
)

public let usesBeetWrapped = Beet.fixedBeet(.init(value: .scalar(usesBeet)))