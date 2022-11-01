import Beet

public struct HiddenSettings {
    let name: String
    let uri: String
    let hash: [UInt8] /* size: 32 */
}

/**
 * @category userTypes
 * @category generated
 */
public let hiddenSettingsBeet = FixableBeetArgsStruct<HiddenSettings>(fields: [
    ("name", Beet.fixableBeat(Utf8String())),
    ("uri", Beet.fixableBeat(Utf8String())),
    ("hash", Beet.fixedBeet(.init(value: .collection(UniformFixedSizeArray<UInt8>(element: .init(value: .scalar(u8())), len: 32)))))
], description: "HiddenSettings")

public let hiddenSettingsBeetWrapped = Beet.fixableBeat(hiddenSettingsBeet)