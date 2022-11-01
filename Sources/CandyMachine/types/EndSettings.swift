import Beet

public struct EndSettings {
    let endSettingType: EndSettingType
    let number: UInt64
}

/**
 * @category userTypes
 * @category generated
 */
public let endSettingsBeet = BeetArgsStruct(fields: [
    ("endSettingType", endSettingTypeBeet),
    ("number", (.init(value: .scalar(u64()))))
], description: "EndSettings")

public let endSettingsBeetWrapped = Beet.fixedBeet(.init(value: .scalar(endSettingsBeet)))