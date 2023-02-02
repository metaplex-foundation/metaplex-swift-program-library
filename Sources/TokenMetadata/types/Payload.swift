import Beet

public struct Payload {
    public let map: [PayloadKey: PayloadType]

    public init(
        map: [PayloadKey: PayloadType]
    ) {
        self.map = map
    }

    static func fromArgs(args: Args) -> Payload {
        return Payload(
            map: args["map"] as! [PayloadKey: PayloadType]
        )
    }
}

/**
 * @category userTypes
 * @category generated
 */
public let payloadBeet = FixableBeetStruct<Payload>(
    fields: [
        ("map", Beet.fixableBeat(hashmap(keyElement: payloadKeyBeetWrapped, valElement: payloadTypeBeetWrapped)))
    ],
    construct: Payload.fromArgs,
    description: "Payload"
)

public let payloadBeetWrapped = Beet.fixableBeat(payloadBeet)