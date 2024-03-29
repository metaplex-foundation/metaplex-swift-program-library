/**
 * This code was GENERATED using the solita package.
 * Please DO NOT EDIT THIS FILE, instead rerun solita to update it or write a wrapper to add functionality.
 *
 * See: https://github.com/metaplex-foundation/solita-swift
 */
import Foundation
import Beet
import Solana

/**
 * @category Instructions
 * @category SetMintAuthority
 * @category generated
 */
public struct SetMintAuthorityInstructionArgs{
    let instructionDiscriminator: [UInt8] /* size: 8 */
    

    public init(
        instructionDiscriminator: [UInt8] /* size: 8 */ = setMintAuthorityInstructionDiscriminator
    ) {
        self.instructionDiscriminator = instructionDiscriminator
    }
}
/**
 * @category Instructions
 * @category SetMintAuthority
 * @category generated
 */
public let setMintAuthorityStruct = FixableBeetArgsStruct<SetMintAuthorityInstructionArgs>(
    fields: [
        ("instructionDiscriminator", Beet.fixedBeet(.init(value: .collection(UniformFixedSizeArray<UInt8>(element: .init(value: .scalar(u8())), len: 8))))),
        
    ],
    description: "SetMintAuthorityInstructionArgs"
)
/**
* Accounts required by the _setMintAuthority_ instruction
*
* @property [_writable_] candyMachine  
* @property [**signer**] authority  
* @property [**signer**] mintAuthority   
* @category Instructions
* @category SetMintAuthority
* @category generated
*/
public struct SetMintAuthorityInstructionAccounts {
    let candyMachine: PublicKey
    let authority: PublicKey
    let mintAuthority: PublicKey

    public init(
        candyMachine: PublicKey,
        authority: PublicKey,
        mintAuthority: PublicKey
    ) {
        self.candyMachine = candyMachine
        self.authority = authority
        self.mintAuthority = mintAuthority
    }
}

public let setMintAuthorityInstructionDiscriminator = [67, 127, 155, 187, 100, 174, 103, 121] as [UInt8]

/**
* Creates a _SetMintAuthority_ instruction.
*
* @param accounts that will be accessed while the instruction is processed
* @category Instructions
* @category SetMintAuthority
* @category generated
*/
public func createSetMintAuthorityInstruction(accounts: SetMintAuthorityInstructionAccounts, 
programId: PublicKey=PublicKey(string: "CndyV3LdqHUfDLmE5naZjVN8rBZz4tqhdefbAnjHG3JR")!) -> TransactionInstruction {

    let data = setMintAuthorityStruct.serialize(
            instance: ["instructionDiscriminator": setMintAuthorityInstructionDiscriminator ])

    let keys: [AccountMeta] = [
        AccountMeta(
            publicKey: accounts.candyMachine,
            isSigner: false,
            isWritable: true
        ),
        AccountMeta(
            publicKey: accounts.authority,
            isSigner: true,
            isWritable: false
        ),
        AccountMeta(
            publicKey: accounts.mintAuthority,
            isSigner: true,
            isWritable: false
        )
    ]

    let ix = TransactionInstruction(
                keys: keys,
                programId: programId,
                data: data.0.bytes
            )
    return ix
}