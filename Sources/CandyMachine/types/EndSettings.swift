import Beet

public struct EndSettings {
    public let endSettingType: EndSettingType
    public let number: UInt64

    public init(
        endSettingType: EndSettingType,
        number: UInt64
    ) {
        self.endSettingType = endSettingType
        self.number = number
    }

    static func fromArgs(args: Args) -> EndSettings {
        return EndSettings(
            endSettingType: args["endSettingType"] as! EndSettingType,
            number: args["number"] as! UInt64
        )
    }
}

/**
 * @category userTypes
 * @category generated
 */
public let endSettingsBeet = BeetStruct(
    fields: [
        ("endSettingType", endSettingTypeBeet),
        ("number", (.init(value: .scalar(u64()))))
    ],
    construct: EndSettings.fromArgs,
    description: "EndSettings"
)

public let endSettingsBeetWrapped = Beet.fixedBeet(.init(value: .scalar(endSettingsBeet)))