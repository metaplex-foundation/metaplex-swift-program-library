import Beet

public struct Data {
    let name: String
    let symbol: String
    let uri: String
    let sellerFeeBasisPoints: UInt16
    let creators: COption<[Creator]>
}

/**
 * @category userTypes
 * @category generated
 */
public let dataBeet = FixableBeetArgsStruct<Data>(fields: [
    ("name", Beet.fixableBeat(Utf8String())),
    ("symbol", Beet.fixableBeat(Utf8String())),
    ("uri", Beet.fixableBeat(Utf8String())),
    ("sellerFeeBasisPoints", Beet.fixedBeet(.init(value: .scalar(u16())))),
    ("creators", Beet.fixableBeat(coption(inner: Beet.fixableBeat(array(element: creatorBeetWrapped)))))
], description: "Data")

public let dataBeetWrapped = Beet.fixableBeat(dataBeet)