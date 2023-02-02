import Beet

public struct AuthorizationData {
    public let payload: Payload

    public init(
        payload: Payload
    ) {
        self.payload = payload
    }

    static func fromArgs(args: Args) -> AuthorizationData {
        return AuthorizationData(
            payload: args["payload"] as! Payload
        )
    }
}

/**
 * @category userTypes
 * @category generated
 */
public let authorizationDataBeet = FixableBeetStruct<AuthorizationData>(
    fields: [
        ("payload", payloadBeetWrapped)
    ],
    construct: AuthorizationData.fromArgs,
    description: "AuthorizationData"
)

public let authorizationDataBeetWrapped = Beet.fixableBeat(authorizationDataBeet)