import Beet

public struct ConfigLine {
    public let name: String
    public let uri: String

    public init(
        name: String,
        uri: String
    ) {
        self.name = name
        self.uri = uri
    }

    static func fromArgs(args: Args) -> ConfigLine {
        return ConfigLine(
            name: args["name"] as! String,
            uri: args["uri"] as! String
        )
    }
}

/**
 * @category userTypes
 * @category generated
 */
public let configLineBeet = FixableBeetStruct<ConfigLine>(
    fields: [
        ("name", Beet.fixableBeat(Utf8String())),
        ("uri", Beet.fixableBeat(Utf8String()))
    ],
    construct: ConfigLine.fromArgs,
    description: "ConfigLine"
)

public let configLineBeetWrapped = Beet.fixableBeat(configLineBeet)