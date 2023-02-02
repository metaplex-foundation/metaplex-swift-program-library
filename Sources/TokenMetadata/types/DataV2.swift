import Beet

public struct DataV2 {
    public let name: String
    public let symbol: String
    public let uri: String
    public let sellerFeeBasisPoints: UInt16
    public let creators: COption<[Creator]>
    public let collection: COption<Collection>
    public let uses: COption<Uses>

    public init(
        name: String,
        symbol: String,
        uri: String,
        sellerFeeBasisPoints: UInt16,
        creators: COption<[Creator]>,
        collection: COption<Collection>,
        uses: COption<Uses>
    ) {
        self.name = name
        self.symbol = symbol
        self.uri = uri
        self.sellerFeeBasisPoints = sellerFeeBasisPoints
        self.creators = creators
        self.collection = collection
        self.uses = uses
    }

    static func fromArgs(args: Args) -> DataV2 {
        return DataV2(
            name: args["name"] as! String,
            symbol: args["symbol"] as! String,
            uri: args["uri"] as! String,
            sellerFeeBasisPoints: args["sellerFeeBasisPoints"] as! UInt16,
            creators: args["creators"] as! COption<[Creator]>,
            collection: args["collection"] as! COption<Collection>,
            uses: args["uses"] as! COption<Uses>
        )
    }
}

/**
 * @category userTypes
 * @category generated
 */
public let dataV2Beet = FixableBeetStruct<DataV2>(
    fields: [
        ("name", Beet.fixableBeat(Utf8String())),
        ("symbol", Beet.fixableBeat(Utf8String())),
        ("uri", Beet.fixableBeat(Utf8String())),
        ("sellerFeeBasisPoints", Beet.fixedBeet(.init(value: .scalar(u16())))),
        ("creators", Beet.fixableBeat(coption(inner: Beet.fixableBeat(array(element: creatorBeetWrapped))))),
        ("collection", Beet.fixableBeat(coption(inner: collectionBeetWrapped))),
        ("uses", Beet.fixableBeat(coption(inner: usesBeetWrapped)))
    ],
    construct: DataV2.fromArgs,
    description: "DataV2"
)

public let dataV2BeetWrapped = Beet.fixableBeat(dataV2Beet)