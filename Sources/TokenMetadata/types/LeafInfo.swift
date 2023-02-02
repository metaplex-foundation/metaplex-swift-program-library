import Beet

public struct LeafInfo {
    public let leaf: [UInt8] /* size: 32 */
    public let proof: [[UInt8] /* size: 32 */]

    public init(
        leaf: [UInt8] /* size: 32 */,
        proof: [[UInt8] /* size: 32 */]
    ) {
        self.leaf = leaf
        self.proof = proof
    }

    static func fromArgs(args: Args) -> LeafInfo {
        return LeafInfo(
            leaf: args["leaf"] as! [UInt8] /* size: 32 */,
            proof: args["proof"] as! [[UInt8] /* size: 32 */]
        )
    }
}

/**
 * @category userTypes
 * @category generated
 */
public let leafInfoBeet = FixableBeetStruct<LeafInfo>(
    fields: [
        ("leaf", Beet.fixedBeet(.init(value: .collection(UniformFixedSizeArray<UInt8>(element: .init(value: .scalar(u8())), len: 32))))),
        ("proof", Beet.fixableBeat(array(element: Beet.fixedBeet(.init(value: .collection(UniformFixedSizeArray<UInt8>(element: .init(value: .scalar(u8())), len: 32)))))))
    ],
    construct: LeafInfo.fromArgs,
    description: "LeafInfo"
)

public let leafInfoBeetWrapped = Beet.fixableBeat(leafInfoBeet)