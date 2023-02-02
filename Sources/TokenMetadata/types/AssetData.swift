import BeetSolana
import Beet
import Solana

public struct AssetData {
    public let name: String
    public let symbol: String
    public let uri: String
    public let sellerFeeBasisPoints: UInt16
    public let creators: COption<[Creator]>
    public let primarySaleHappened: Bool
    public let isMutable: Bool
    public let tokenStandard: TokenStandard
    public let collection: COption<Collection>
    public let uses: COption<Uses>
    public let collectionDetails: COption<CollectionDetails>
    public let ruleSet: COption<PublicKey>

    public init(
        name: String,
        symbol: String,
        uri: String,
        sellerFeeBasisPoints: UInt16,
        creators: COption<[Creator]>,
        primarySaleHappened: Bool,
        isMutable: Bool,
        tokenStandard: TokenStandard,
        collection: COption<Collection>,
        uses: COption<Uses>,
        collectionDetails: COption<CollectionDetails>,
        ruleSet: COption<PublicKey>
    ) {
        self.name = name
        self.symbol = symbol
        self.uri = uri
        self.sellerFeeBasisPoints = sellerFeeBasisPoints
        self.creators = creators
        self.primarySaleHappened = primarySaleHappened
        self.isMutable = isMutable
        self.tokenStandard = tokenStandard
        self.collection = collection
        self.uses = uses
        self.collectionDetails = collectionDetails
        self.ruleSet = ruleSet
    }

    static func fromArgs(args: Args) -> AssetData {
        return AssetData(
            name: args["name"] as! String,
            symbol: args["symbol"] as! String,
            uri: args["uri"] as! String,
            sellerFeeBasisPoints: args["sellerFeeBasisPoints"] as! UInt16,
            creators: args["creators"] as! COption<[Creator]>,
            primarySaleHappened: args["primarySaleHappened"] as! Bool,
            isMutable: args["isMutable"] as! Bool,
            tokenStandard: args["tokenStandard"] as! TokenStandard,
            collection: args["collection"] as! COption<Collection>,
            uses: args["uses"] as! COption<Uses>,
            collectionDetails: args["collectionDetails"] as! COption<CollectionDetails>,
            ruleSet: args["ruleSet"] as! COption<PublicKey>
        )
    }
}

/**
 * @category userTypes
 * @category generated
 */
public let assetDataBeet = FixableBeetStruct<AssetData>(
    fields: [
        ("name", Beet.fixableBeat(Utf8String())),
        ("symbol", Beet.fixableBeat(Utf8String())),
        ("uri", Beet.fixableBeat(Utf8String())),
        ("sellerFeeBasisPoints", Beet.fixedBeet(.init(value: .scalar(u16())))),
        ("creators", Beet.fixableBeat(coption(inner: Beet.fixableBeat(array(element: creatorBeetWrapped))))),
        ("primarySaleHappened", Beet.fixedBeet(.init(value: .scalar(bool())))),
        ("isMutable", Beet.fixedBeet(.init(value: .scalar(bool())))),
        ("tokenStandard", tokenStandardBeetWrapped),
        ("collection", Beet.fixableBeat(coption(inner: collectionBeetWrapped))),
        ("uses", Beet.fixableBeat(coption(inner: usesBeetWrapped))),
        ("collectionDetails", Beet.fixableBeat(coption(inner: collectionDetailsBeetWrapped))),
        ("ruleSet", Beet.fixableBeat(coption(inner: Beet.fixedBeet(.init(value: .scalar(BeetPublicKey()))))))
    ],
    construct: AssetData.fromArgs,
    description: "AssetData"
)

public let assetDataBeetWrapped = Beet.fixableBeat(assetDataBeet)