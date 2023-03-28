import Beet

public struct AllowListProof {
    public let timestamp: Int64

    public init(
        timestamp: Int64
    ) {
        self.timestamp = timestamp
    }

    static func fromArgs(args: Args) -> AllowListProof {
        return AllowListProof(
            timestamp: args["timestamp"] as! Int64
        )
    }
}

/**
 * @category userTypes
 * @category generated
 */
public let allowListProofBeet = BeetStruct(
    fields: [
        ("timestamp", (.init(value: .scalar(i64()))))
    ],
    construct: AllowListProof.fromArgs,
    description: "AllowListProof"
)

public let allowListProofBeetWrapped = Beet.fixedBeet(.init(value: .scalar(allowListProofBeet)))