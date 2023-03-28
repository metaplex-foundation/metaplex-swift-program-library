import Beet

public struct MintTracker {
    public let count: UInt32

    public init(
        count: UInt32
    ) {
        self.count = count
    }

    static func fromArgs(args: Args) -> MintTracker {
        return MintTracker(
            count: args["count"] as! UInt32
        )
    }
}

/**
 * @category userTypes
 * @category generated
 */
public let mintTrackerBeet = BeetStruct(
    fields: [
        ("count", (.init(value: .scalar(u32()))))
    ],
    construct: MintTracker.fromArgs,
    description: "MintTracker"
)

public let mintTrackerBeetWrapped = Beet.fixedBeet(.init(value: .scalar(mintTrackerBeet)))