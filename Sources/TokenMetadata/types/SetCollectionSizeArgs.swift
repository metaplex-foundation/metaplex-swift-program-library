import Beet

public struct SetCollectionSizeArgs {
    public let size: UInt64

    public init(
        size: UInt64
    ) {
        self.size = size
    }

    static func fromArgs(args: Args) -> SetCollectionSizeArgs {
        return SetCollectionSizeArgs(
            size: args["size"] as! UInt64
        )
    }
}

/**
 * @category userTypes
 * @category generated
 */
public let setCollectionSizeArgsBeet = BeetStruct(
    fields: [
        ("size", (.init(value: .scalar(u64()))))
    ],
    construct: SetCollectionSizeArgs.fromArgs,
    description: "SetCollectionSizeArgs"
)

public let setCollectionSizeArgsBeetWrapped = Beet.fixedBeet(.init(value: .scalar(setCollectionSizeArgsBeet)))