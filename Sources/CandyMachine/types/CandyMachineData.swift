import Beet

public struct CandyMachineData {
    public let uuid: String
    public let price: UInt64
    public let symbol: String
    public let sellerFeeBasisPoints: UInt16
    public let maxSupply: UInt64
    public let isMutable: Bool
    public let retainAuthority: Bool
    public let goLiveDate: COption<Int64>
    public let endSettings: COption<EndSettings>
    public let creators: [Creator]
    public let hiddenSettings: COption<HiddenSettings>
    public let whitelistMintSettings: COption<WhitelistMintSettings>
    public let itemsAvailable: UInt64
    public let gatekeeper: COption<GatekeeperConfig>

    public init(
        uuid: String,
        price: UInt64,
        symbol: String,
        sellerFeeBasisPoints: UInt16,
        maxSupply: UInt64,
        isMutable: Bool,
        retainAuthority: Bool,
        goLiveDate: COption<Int64>,
        endSettings: COption<EndSettings>,
        creators: [Creator],
        hiddenSettings: COption<HiddenSettings>,
        whitelistMintSettings: COption<WhitelistMintSettings>,
        itemsAvailable: UInt64,
        gatekeeper: COption<GatekeeperConfig>
    ) {
        self.uuid = uuid
        self.price = price
        self.symbol = symbol
        self.sellerFeeBasisPoints = sellerFeeBasisPoints
        self.maxSupply = maxSupply
        self.isMutable = isMutable
        self.retainAuthority = retainAuthority
        self.goLiveDate = goLiveDate
        self.endSettings = endSettings
        self.creators = creators
        self.hiddenSettings = hiddenSettings
        self.whitelistMintSettings = whitelistMintSettings
        self.itemsAvailable = itemsAvailable
        self.gatekeeper = gatekeeper
    }

    static func fromArgs(args: Args) -> CandyMachineData {
        return CandyMachineData(
            uuid: args["uuid"] as! String,
            price: args["price"] as! UInt64,
            symbol: args["symbol"] as! String,
            sellerFeeBasisPoints: args["sellerFeeBasisPoints"] as! UInt16,
            maxSupply: args["maxSupply"] as! UInt64,
            isMutable: args["isMutable"] as! Bool,
            retainAuthority: args["retainAuthority"] as! Bool,
            goLiveDate: args["goLiveDate"] as! COption<Int64>,
            endSettings: args["endSettings"] as! COption<EndSettings>,
            creators: args["creators"] as! [Creator],
            hiddenSettings: args["hiddenSettings"] as! COption<HiddenSettings>,
            whitelistMintSettings: args["whitelistMintSettings"] as! COption<WhitelistMintSettings>,
            itemsAvailable: args["itemsAvailable"] as! UInt64,
            gatekeeper: args["gatekeeper"] as! COption<GatekeeperConfig>
        )
    }
}

/**
 * @category userTypes
 * @category generated
 */
public let candyMachineDataBeet = FixableBeetStruct<CandyMachineData>(
    fields: [
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
    ],
    construct: CandyMachineData.fromArgs,
    description: "CandyMachineData"
)

public let candyMachineDataBeetWrapped = Beet.fixableBeat(candyMachineDataBeet)