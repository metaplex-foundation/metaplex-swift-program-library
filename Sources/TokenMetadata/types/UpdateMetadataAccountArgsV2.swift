import BeetSolana
import Beet
import Solana

public struct UpdateMetadataAccountArgsV2 {
    let data: COption<DataV2>
    let updateAuthority: COption<PublicKey>
    let primarySaleHappened: COption<Bool>
    let isMutable: COption<Bool>
}

/**
 * @category userTypes
 * @category generated
 */
public let updateMetadataAccountArgsV2Beet = FixableBeetArgsStruct<UpdateMetadataAccountArgsV2>(fields: [
    ("data", Beet.fixableBeat(coption(inner: dataV2BeetWrapped))),
    ("updateAuthority", Beet.fixableBeat(coption(inner: Beet.fixedBeet(.init(value: .scalar(BeetPublicKey())))))),
    ("primarySaleHappened", Beet.fixableBeat(coption(inner: Beet.fixedBeet(.init(value: .scalar(bool())))))),
    ("isMutable", Beet.fixableBeat(coption(inner: Beet.fixedBeet(.init(value: .scalar(bool()))))))
], description: "UpdateMetadataAccountArgsV2")

public let updateMetadataAccountArgsV2BeetWrapped = Beet.fixableBeat(updateMetadataAccountArgsV2Beet)