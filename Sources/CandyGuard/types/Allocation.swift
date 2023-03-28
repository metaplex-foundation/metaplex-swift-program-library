import Beet

public struct Allocation {
    public let id: UInt8
    public let size: UInt32

    public init(
        id: UInt8,
        size: UInt32
    ) {
        self.id = id
        self.size = size
    }

    static func fromArgs(args: Args) -> Allocation {
        return Allocation(
            id: args["id"] as! UInt8,
            size: args["size"] as! UInt32
        )
    }
}

/**
 * @category userTypes
 * @category generated
 */
public let allocationBeet = BeetStruct(
    fields: [
        ("id", (.init(value: .scalar(u8())))),
        ("size", (.init(value: .scalar(u32()))))
    ],
    construct: Allocation.fromArgs,
    description: "Allocation"
)

public let allocationBeetWrapped = Beet.fixedBeet(.init(value: .scalar(allocationBeet)))