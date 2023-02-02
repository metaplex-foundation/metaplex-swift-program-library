import Beet

public struct SeedsVec {
    public let seeds: [Data]

    public init(
        seeds: [Data]
    ) {
        self.seeds = seeds
    }

    static func fromArgs(args: Args) -> SeedsVec {
        return SeedsVec(
            seeds: args["seeds"] as! [Data]
        )
    }
}

/**
 * @category userTypes
 * @category generated
 */
public let seedsVecBeet = FixableBeetStruct<SeedsVec>(
    fields: [
        ("seeds", Beet.fixableBeat(array(element: Beet.fixableBeat(Uint8Array()))))
    ],
    construct: SeedsVec.fromArgs,
    description: "SeedsVec"
)

public let seedsVecBeetWrapped = Beet.fixableBeat(seedsVecBeet)