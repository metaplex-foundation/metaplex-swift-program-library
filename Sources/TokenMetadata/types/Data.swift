import Beet

public struct Data {
    public let name: String
    public let symbol: String
    public let uri: String
    public let sellerFeeBasisPoints: UInt16
    public let creators: COption<[Creator]>

    public init(
        name: String,
        symbol: String,
        uri: String,
        sellerFeeBasisPoints: UInt16,
        creators: COption<[Creator]>
    ) {
        self.name = name
        self.symbol = symbol
        self.uri = uri
        self.sellerFeeBasisPoints = sellerFeeBasisPoints
        self.creators = creators
    }

    static func fromArgs(args: Args) -> Data {
        return Data(
            name: args["name"] as! String,
            symbol: args["symbol"] as! String,
            uri: args["uri"] as! String,
            sellerFeeBasisPoints: args["sellerFeeBasisPoints"] as! UInt16,
            creators: args["creators"] as! COption<[Creator]>
        )
    }
}

/**
 * @category userTypes
 * @category generated
 */
public let dataBeet = FixableBeetStruct<Data>(
    fields: [
        ("name", Beet.fixableBeat(Utf8String())),
        ("symbol", Beet.fixableBeat(Utf8String())),
        ("uri", Beet.fixableBeat(Utf8String())),
        ("sellerFeeBasisPoints", Beet.fixedBeet(.init(value: .scalar(u16())))),
        ("creators", Beet.fixableBeat(coption(inner: Beet.fixableBeat(array(element: creatorBeetWrapped)))))
    ],
    construct: Data.fromArgs,
    description: "Data"
)

public let dataBeetWrapped = Beet.fixableBeat(dataBeet)