import Beet
import Solana
import BeetSolana

public struct ProgramGate {
    public let additional: [PublicKey]

    public init(
        additional: [PublicKey]
    ) {
        self.additional = additional
    }

    static func fromArgs(args: Args) -> ProgramGate {
        return ProgramGate(
            additional: args["additional"] as! [PublicKey]
        )
    }
}

/**
 * @category userTypes
 * @category generated
 */
public let programGateBeet = FixableBeetStruct<ProgramGate>(
    fields: [
        ("additional", Beet.fixableBeat(array(element: Beet.fixedBeet(.init(value: .scalar(BeetPublicKey()))))))
    ],
    construct: ProgramGate.fromArgs,
    description: "ProgramGate"
)

public let programGateBeetWrapped = Beet.fixableBeat(programGateBeet)