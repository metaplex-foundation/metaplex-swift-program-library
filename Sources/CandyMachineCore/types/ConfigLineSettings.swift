import Beet

public struct ConfigLineSettings {
    public let prefixName: String
    public let nameLength: UInt32
    public let prefixUri: String
    public let uriLength: UInt32
    public let isSequential: Bool

    public init(
        prefixName: String,
        nameLength: UInt32,
        prefixUri: String,
        uriLength: UInt32,
        isSequential: Bool
    ) {
        self.prefixName = prefixName
        self.nameLength = nameLength
        self.prefixUri = prefixUri
        self.uriLength = uriLength
        self.isSequential = isSequential
    }

    static func fromArgs(args: Args) -> ConfigLineSettings {
        return ConfigLineSettings(
            prefixName: args["prefixName"] as! String,
            nameLength: args["nameLength"] as! UInt32,
            prefixUri: args["prefixUri"] as! String,
            uriLength: args["uriLength"] as! UInt32,
            isSequential: args["isSequential"] as! Bool
        )
    }
}

/**
 * @category userTypes
 * @category generated
 */
public let configLineSettingsBeet = FixableBeetStruct<ConfigLineSettings>(
    fields: [
        ("prefixName", Beet.fixableBeat(Utf8String())),
        ("nameLength", Beet.fixedBeet(.init(value: .scalar(u32())))),
        ("prefixUri", Beet.fixableBeat(Utf8String())),
        ("uriLength", Beet.fixedBeet(.init(value: .scalar(u32())))),
        ("isSequential", Beet.fixedBeet(.init(value: .scalar(bool()))))
    ],
    construct: ConfigLineSettings.fromArgs,
    description: "ConfigLineSettings"
)

public let configLineSettingsBeetWrapped = Beet.fixableBeat(configLineSettingsBeet)