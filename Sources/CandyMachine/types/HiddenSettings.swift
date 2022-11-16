import Beet

public struct HiddenSettings {
    public let name: String
    public let uri: String
    public let hash: [UInt8] /* size: 32 */

    public init(
        name: String,
        uri: String,
        hash: [UInt8] /* size: 32 */
    ) {
        self.name = name
        self.uri = uri
        self.hash = hash
    }

    static func fromArgs(args: Args) -> HiddenSettings {
        return HiddenSettings(
            name: args["name"] as! String,
            uri: args["uri"] as! String,
            hash: args["hash"] as! [UInt8] /* size: 32 */
        )
    }
}

/**
 * @category userTypes
 * @category generated
 */
public let hiddenSettingsBeet = FixableBeetStruct<HiddenSettings>(
    fields: [
        ("name", Beet.fixableBeat(Utf8String())),
        ("uri", Beet.fixableBeat(Utf8String())),
        ("hash", Beet.fixedBeet(.init(value: .collection(UniformFixedSizeArray<UInt8>(element: .init(value: .scalar(u8())), len: 32)))))
    ],
    construct: HiddenSettings.fromArgs,
    description: "HiddenSettings"
)

public let hiddenSettingsBeetWrapped = Beet.fixableBeat(hiddenSettingsBeet)