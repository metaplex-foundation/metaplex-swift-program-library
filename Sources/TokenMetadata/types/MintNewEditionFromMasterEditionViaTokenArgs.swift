import Beet

public struct MintNewEditionFromMasterEditionViaTokenArgs {
    let edition: UInt64
}

/**
 * @category userTypes
 * @category generated
 */
public let mintNewEditionFromMasterEditionViaTokenArgsBeet = BeetArgsStruct(fields: [
    ("edition", (.init(value: .scalar(u64()))))
], description: "MintNewEditionFromMasterEditionViaTokenArgs")

public let mintNewEditionFromMasterEditionViaTokenArgsBeetWrapped = Beet.fixedBeet(.init(value: .scalar(mintNewEditionFromMasterEditionViaTokenArgsBeet)))