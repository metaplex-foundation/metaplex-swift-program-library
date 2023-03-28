import Beet

public struct Group {
    public let label: String
    public let guards: GuardSet

    public init(
        label: String,
        guards: GuardSet
    ) {
        self.label = label
        self.guards = guards
    }

    static func fromArgs(args: Args) -> Group {
        return Group(
            label: args["label"] as! String,
            guards: args["guards"] as! GuardSet
        )
    }
}

/**
 * @category userTypes
 * @category generated
 */
public let groupBeet = FixableBeetStruct<Group>(
    fields: [
        ("label", Beet.fixableBeat(Utf8String())),
        ("guards", guardSetBeetWrapped)
    ],
    construct: Group.fromArgs,
    description: "Group"
)

public let groupBeetWrapped = Beet.fixableBeat(groupBeet)