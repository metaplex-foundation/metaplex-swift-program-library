import Beet

public struct CandyGuardData {
    public let `default`: GuardSet
    public let groups: COption<[Group]>

    public init(
        default: GuardSet,
        groups: COption<[Group]>
    ) {
        self.default = `default`
        self.groups = groups
    }

    static func fromArgs(args: Args) -> CandyGuardData {
        return CandyGuardData(
            default: args["default"] as! GuardSet,
            groups: args["groups"] as! COption<[Group]>
        )
    }
}

/**
 * @category userTypes
 * @category generated
 */
public let candyGuardDataBeet = FixableBeetStruct<CandyGuardData>(
    fields: [
        ("default", guardSetBeetWrapped),
        ("groups", Beet.fixableBeat(coption(inner: Beet.fixableBeat(array(element: groupBeetWrapped)))))
    ],
    construct: CandyGuardData.fromArgs,
    description: "CandyGuardData"
)

public let candyGuardDataBeetWrapped = Beet.fixableBeat(candyGuardDataBeet)
