import BeetSolana
import Beet
import Solana

public struct WhitelistMintSettings {
    let mode: WhitelistMintMode
    let mint: PublicKey
    let presale: Bool
    let discountPrice: COption<UInt64>
}

/**
 * @category userTypes
 * @category generated
 */
public let whitelistMintSettingsBeet = FixableBeetArgsStruct<WhitelistMintSettings>(fields: [
    ("mode", whitelistMintModeBeetWrapped),
    ("mint", Beet.fixedBeet(.init(value: .scalar(BeetPublicKey())))),
    ("presale", Beet.fixedBeet(.init(value: .scalar(bool())))),
    ("discountPrice", Beet.fixableBeat(coption(inner: Beet.fixedBeet(.init(value: .scalar(u64()))))))
], description: "WhitelistMintSettings")

public let whitelistMintSettingsBeetWrapped = Beet.fixableBeat(whitelistMintSettingsBeet)