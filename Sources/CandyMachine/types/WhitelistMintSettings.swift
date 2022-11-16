import Beet
import BeetSolana
import Solana

public struct WhitelistMintSettings {
    public let mode: WhitelistMintMode
    public let mint: PublicKey
    public let presale: Bool
    public let discountPrice: COption<UInt64>

    public init(
        mode: WhitelistMintMode,
        mint: PublicKey,
        presale: Bool,
        discountPrice: COption<UInt64>
    ) {
        self.mode = mode
        self.mint = mint
        self.presale = presale
        self.discountPrice = discountPrice
    }

    static func fromArgs(args: Args) -> WhitelistMintSettings {
        return WhitelistMintSettings(
            mode: args["mode"] as! WhitelistMintMode,
            mint: args["mint"] as! PublicKey,
            presale: args["presale"] as! Bool,
            discountPrice: args["discountPrice"] as! COption<UInt64>
        )
    }
}

/**
 * @category userTypes
 * @category generated
 */
public let whitelistMintSettingsBeet = FixableBeetStruct<WhitelistMintSettings>(
    fields: [
        ("mode", whitelistMintModeBeetWrapped),
        ("mint", Beet.fixedBeet(.init(value: .scalar(BeetPublicKey())))),
        ("presale", Beet.fixedBeet(.init(value: .scalar(bool())))),
        ("discountPrice", Beet.fixableBeat(coption(inner: Beet.fixedBeet(.init(value: .scalar(u64()))))))
    ],
    construct: WhitelistMintSettings.fromArgs,
    description: "WhitelistMintSettings"
)

public let whitelistMintSettingsBeetWrapped = Beet.fixableBeat(whitelistMintSettingsBeet)