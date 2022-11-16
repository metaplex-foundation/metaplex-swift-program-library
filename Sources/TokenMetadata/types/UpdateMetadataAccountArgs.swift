import Solana
import Beet
import BeetSolana

public struct UpdateMetadataAccountArgs {
    let data: COption<Data>
    let updateAuthority: COption<PublicKey>
    let primarySaleHappened: COption<Bool>
}

/**
 * @category userTypes
 * @category generated
 */
public let updateMetadataAccountArgsBeet = FixableBeetArgsStruct<UpdateMetadataAccountArgs>(fields: [
    ("data", Beet.fixableBeat(coption(inner: dataBeetWrapped))),
    ("updateAuthority", Beet.fixableBeat(coption(inner: Beet.fixedBeet(.init(value: .scalar(BeetPublicKey())))))),
    ("primarySaleHappened", Beet.fixableBeat(coption(inner: Beet.fixedBeet(.init(value: .scalar(bool()))))))
], description: "UpdateMetadataAccountArgs")

public let updateMetadataAccountArgsBeetWrapped = Beet.fixableBeat(updateMetadataAccountArgsBeet)