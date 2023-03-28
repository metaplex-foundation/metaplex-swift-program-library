import Beet

public struct CandyMachineData {
    public let itemsAvailable: UInt64
    public let symbol: String
    public let sellerFeeBasisPoints: UInt16
    public let maxSupply: UInt64
    public let isMutable: Bool
    public let creators: [Creator]
    public let configLineSettings: COption<ConfigLineSettings>
    public let hiddenSettings: COption<HiddenSettings>

    public init(
        itemsAvailable: UInt64,
        symbol: String,
        sellerFeeBasisPoints: UInt16,
        maxSupply: UInt64,
        isMutable: Bool,
        creators: [Creator],
        configLineSettings: COption<ConfigLineSettings>,
        hiddenSettings: COption<HiddenSettings>
    ) {
        self.itemsAvailable = itemsAvailable
        self.symbol = symbol
        self.sellerFeeBasisPoints = sellerFeeBasisPoints
        self.maxSupply = maxSupply
        self.isMutable = isMutable
        self.creators = creators
        self.configLineSettings = configLineSettings
        self.hiddenSettings = hiddenSettings
    }

    static func fromArgs(args: Args) -> CandyMachineData {
        return CandyMachineData(
            itemsAvailable: args["itemsAvailable"] as! UInt64,
            symbol: args["symbol"] as! String,
            sellerFeeBasisPoints: args["sellerFeeBasisPoints"] as! UInt16,
            maxSupply: args["maxSupply"] as! UInt64,
            isMutable: args["isMutable"] as! Bool,
            creators: args["creators"] as! [Creator],
            configLineSettings: args["configLineSettings"] as! COption<ConfigLineSettings>,
            hiddenSettings: args["hiddenSettings"] as! COption<HiddenSettings>
        )
    }
}

/**
 * @category userTypes
 * @category generated
 */
public let candyMachineDataBeet = FixableBeetStruct<CandyMachineData>(
    fields: [
        ("itemsAvailable", Beet.fixedBeet(.init(value: .scalar(u64())))),
        ("symbol", Beet.fixableBeat(Utf8String())),
        ("sellerFeeBasisPoints", Beet.fixedBeet(.init(value: .scalar(u16())))),
        ("maxSupply", Beet.fixedBeet(.init(value: .scalar(u64())))),
        ("isMutable", Beet.fixedBeet(.init(value: .scalar(bool())))),
        ("creators", Beet.fixableBeat(array(element: creatorBeetWrapped))),
        ("configLineSettings", Beet.fixableBeat(coption(inner: configLineSettingsBeetWrapped))),
        ("hiddenSettings", Beet.fixableBeat(coption(inner: hiddenSettingsBeetWrapped)))
    ],
    construct: CandyMachineData.fromArgs,
    description: "CandyMachineData"
)

public let candyMachineDataBeetWrapped = Beet.fixableBeat(candyMachineDataBeet)