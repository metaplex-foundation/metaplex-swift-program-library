import Beet

public struct DataV2 {
    let name: String
    let symbol: String
    let uri: String
    let sellerFeeBasisPoints: UInt16
    let creators: COption<[Creator]>
    let collection: COption<Collection>
    let uses: COption<Uses>
}

/**
 * @category userTypes
 * @category generated
 */
public let dataV2Beet = FixableBeetArgsStruct<DataV2>(fields: [
    ("name", Beet.fixableBeat(Utf8String())),
    ("symbol", Beet.fixableBeat(Utf8String())),
    ("uri", Beet.fixableBeat(Utf8String())),
    ("sellerFeeBasisPoints", Beet.fixedBeet(.init(value: .scalar(u16())))),
    ("creators", Beet.fixableBeat(coption(inner: Beet.fixableBeat(array(element: creatorBeetWrapped))))),
    ("collection", Beet.fixableBeat(coption(inner: collectionBeetWrapped))),
    ("uses", Beet.fixableBeat(coption(inner: usesBeetWrapped)))
], description: "DataV2")

public let dataV2BeetWrapped = Beet.fixableBeat(dataV2Beet)