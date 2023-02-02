import Solana
import BeetSolana
import Beet

public struct UpdateMetadataAccountArgs {
    public let data: COption<Data>
    public let updateAuthority: COption<PublicKey>
    public let primarySaleHappened: COption<Bool>

    public init(
        data: COption<Data>,
        updateAuthority: COption<PublicKey>,
        primarySaleHappened: COption<Bool>
    ) {
        self.data = data
        self.updateAuthority = updateAuthority
        self.primarySaleHappened = primarySaleHappened
    }

    static func fromArgs(args: Args) -> UpdateMetadataAccountArgs {
        return UpdateMetadataAccountArgs(
            data: args["data"] as! COption<Data>,
            updateAuthority: args["updateAuthority"] as! COption<PublicKey>,
            primarySaleHappened: args["primarySaleHappened"] as! COption<Bool>
        )
    }
}

/**
 * @category userTypes
 * @category generated
 */
public let updateMetadataAccountArgsBeet = FixableBeetStruct<UpdateMetadataAccountArgs>(
    fields: [
        ("data", Beet.fixableBeat(coption(inner: dataBeetWrapped))),
        ("updateAuthority", Beet.fixableBeat(coption(inner: Beet.fixedBeet(.init(value: .scalar(BeetPublicKey())))))),
        ("primarySaleHappened", Beet.fixableBeat(coption(inner: Beet.fixedBeet(.init(value: .scalar(bool()))))))
    ],
    construct: UpdateMetadataAccountArgs.fromArgs,
    description: "UpdateMetadataAccountArgs"
)

public let updateMetadataAccountArgsBeetWrapped = Beet.fixableBeat(updateMetadataAccountArgsBeet)