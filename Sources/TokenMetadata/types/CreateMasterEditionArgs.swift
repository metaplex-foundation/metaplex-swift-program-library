import Beet

public struct CreateMasterEditionArgs {
    let maxSupply: COption<UInt64>
}

/**
 * @category userTypes
 * @category generated
 */
public let createMasterEditionArgsBeet = FixableBeetArgsStruct<CreateMasterEditionArgs>(fields: [
    ("maxSupply", Beet.fixableBeat(coption(inner: Beet.fixedBeet(.init(value: .scalar(u64()))))))
], description: "CreateMasterEditionArgs")

public let createMasterEditionArgsBeetWrapped = Beet.fixableBeat(createMasterEditionArgsBeet)