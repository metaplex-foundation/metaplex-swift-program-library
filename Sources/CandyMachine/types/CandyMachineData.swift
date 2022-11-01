import Beet

public struct CandyMachineData {
    let uuid: String
    let price: UInt64
    let symbol: String
    let sellerFeeBasisPoints: UInt16
    let maxSupply: UInt64
    let isMutable: Bool
    let retainAuthority: Bool
    let goLiveDate: COption<Int64>
    let endSettings: COption<EndSettings>
    let creators: [Creator]
    let hiddenSettings: COption<HiddenSettings>
    let whitelistMintSettings: COption<WhitelistMintSettings>
    let itemsAvailable: UInt64
    let gatekeeper: COption<GatekeeperConfig>
}

/**
 * @category userTypes
 * @category generated
 */
public let candyMachineDataBeet = FixableBeetArgsStruct<CandyMachineData>(fields: [
    ("uuid", Beet.fixableBeat(Utf8String())),
    ("price", Beet.fixedBeet(.init(value: .scalar(u64())))),
    ("symbol", Beet.fixableBeat(Utf8String())),
    ("sellerFeeBasisPoints", Beet.fixedBeet(.init(value: .scalar(u16())))),
    ("maxSupply", Beet.fixedBeet(.init(value: .scalar(u64())))),
    ("isMutable", Beet.fixedBeet(.init(value: .scalar(bool())))),
    ("retainAuthority", Beet.fixedBeet(.init(value: .scalar(bool())))),
    ("goLiveDate", Beet.fixableBeat(coption(inner: Beet.fixedBeet(.init(value: .scalar(i64())))))),
    ("endSettings", Beet.fixableBeat(coption(inner: endSettingsBeetWrapped))),
    ("creators", Beet.fixableBeat(array(element: creatorBeetWrapped))),
    ("hiddenSettings", Beet.fixableBeat(coption(inner: hiddenSettingsBeetWrapped))),
    ("whitelistMintSettings", Beet.fixableBeat(coption(inner: whitelistMintSettingsBeetWrapped))),
    ("itemsAvailable", Beet.fixedBeet(.init(value: .scalar(u64())))),
    ("gatekeeper", Beet.fixableBeat(coption(inner: gatekeeperConfigBeetWrapped)))
], description: "CandyMachineData")

public let candyMachineDataBeetWrapped = Beet.fixableBeat(candyMachineDataBeet)