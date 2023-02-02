import Solana
import BeetSolana
import Beet

public struct UpdateMetadataAccountArgsV2 {
    public let data: COption<DataV2>
    public let updateAuthority: COption<PublicKey>
    public let primarySaleHappened: COption<Bool>
    public let isMutable: COption<Bool>

    public init(
        data: COption<DataV2>,
        updateAuthority: COption<PublicKey>,
        primarySaleHappened: COption<Bool>,
        isMutable: COption<Bool>
    ) {
        self.data = data
        self.updateAuthority = updateAuthority
        self.primarySaleHappened = primarySaleHappened
        self.isMutable = isMutable
    }

    static func fromArgs(args: Args) -> UpdateMetadataAccountArgsV2 {
        return UpdateMetadataAccountArgsV2(
            data: args["data"] as! COption<DataV2>,
            updateAuthority: args["updateAuthority"] as! COption<PublicKey>,
            primarySaleHappened: args["primarySaleHappened"] as! COption<Bool>,
            isMutable: args["isMutable"] as! COption<Bool>
        )
    }
}

/**
 * @category userTypes
 * @category generated
 */
public let updateMetadataAccountArgsV2Beet = FixableBeetStruct<UpdateMetadataAccountArgsV2>(
    fields: [
        ("data", Beet.fixableBeat(coption(inner: dataV2BeetWrapped))),
        ("updateAuthority", Beet.fixableBeat(coption(inner: Beet.fixedBeet(.init(value: .scalar(BeetPublicKey())))))),
        ("primarySaleHappened", Beet.fixableBeat(coption(inner: Beet.fixedBeet(.init(value: .scalar(bool())))))),
        ("isMutable", Beet.fixableBeat(coption(inner: Beet.fixedBeet(.init(value: .scalar(bool()))))))
    ],
    construct: UpdateMetadataAccountArgsV2.fromArgs,
    description: "UpdateMetadataAccountArgsV2"
)

public let updateMetadataAccountArgsV2BeetWrapped = Beet.fixableBeat(updateMetadataAccountArgsV2Beet)