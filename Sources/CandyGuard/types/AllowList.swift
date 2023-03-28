import Beet

public struct AllowList {
    public let merkleRoot: [UInt8] /* size: 32 */

    public init(
        merkleRoot: [UInt8] /* size: 32 */
    ) {
        self.merkleRoot = merkleRoot
    }

    static func fromArgs(args: Args) -> AllowList {
        return AllowList(
            merkleRoot: args["merkleRoot"] as! [UInt8] /* size: 32 */
        )
    }
}

/**
 * @category userTypes
 * @category generated
 */
public let allowListBeet = BeetStruct(
    fields: [
        ("merkleRoot", (.init(value: .collection(UniformFixedSizeArray<UInt8>(element: .init(value: .scalar(u8())), len: 32)))))
    ],
    construct: AllowList.fromArgs,
    description: "AllowList"
)

public let allowListBeetWrapped = Beet.fixedBeet(.init(value: .scalar(allowListBeet)))