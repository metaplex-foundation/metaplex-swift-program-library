import Beet

public struct MintPrintingTokensViaTokenArgs {
    let supply: UInt64
}

/**
 * @category userTypes
 * @category generated
 */
public let mintPrintingTokensViaTokenArgsBeet = BeetArgsStruct(fields: [
    ("supply", (.init(value: .scalar(u64()))))
], description: "MintPrintingTokensViaTokenArgs")

public let mintPrintingTokensViaTokenArgsBeetWrapped = Beet.fixedBeet(.init(value: .scalar(mintPrintingTokensViaTokenArgsBeet)))