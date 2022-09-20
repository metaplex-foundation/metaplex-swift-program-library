import Beet

public struct ConfigLine {
    let name: String
    let uri: String
}

/**
 * @category userTypes
 * @category generated
 */
public let configLineBeet = FixableBeetArgsStruct<ConfigLine>(fields: [
    ("name", Beet.fixableBeat(Utf8String())),
    ("uri", Beet.fixableBeat(Utf8String()))
], description: "ConfigLine")

public let configLineBeetWrapped = Beet.fixableBeat(configLineBeet)