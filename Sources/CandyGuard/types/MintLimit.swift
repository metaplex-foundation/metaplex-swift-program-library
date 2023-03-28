import Beet

public struct MintLimit {
    public let id: UInt8
    public let limit: UInt16

    public init(
        id: UInt8,
        limit: UInt16
    ) {
        self.id = id
        self.limit = limit
    }

    static func fromArgs(args: Args) -> MintLimit {
        return MintLimit(
            id: args["id"] as! UInt8,
            limit: args["limit"] as! UInt16
        )
    }
}

/**
 * @category userTypes
 * @category generated
 */
public let mintLimitBeet = BeetStruct(
    fields: [
        ("id", (.init(value: .scalar(u8())))),
        ("limit", (.init(value: .scalar(u16()))))
    ],
    construct: MintLimit.fromArgs,
    description: "MintLimit"
)

public let mintLimitBeetWrapped = Beet.fixedBeet(.init(value: .scalar(mintLimitBeet)))