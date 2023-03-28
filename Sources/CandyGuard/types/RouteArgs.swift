import Beet
import Foundation

public struct RouteArgs {
    public let `guard`: GuardType
    public let data: Data

    public init(
        guard: GuardType,
        data: Data
    ) {
        self.guard = `guard`
        self.data = data
    }

    static func fromArgs(args: Args) -> RouteArgs {
        return RouteArgs(
            guard: args["guard"] as! GuardType,
            data: args["data"] as! Data
        )
    }
}

/**
 * @category userTypes
 * @category generated
 */
public let routeArgsBeet = FixableBeetStruct<RouteArgs>(
    fields: [
        ("guard", guardTypeBeetWrapped),
        ("data", Beet.fixableBeat(Uint8Array()))
    ],
    construct: RouteArgs.fromArgs,
    description: "RouteArgs"
)

public let routeArgsBeetWrapped = Beet.fixableBeat(routeArgsBeet)
