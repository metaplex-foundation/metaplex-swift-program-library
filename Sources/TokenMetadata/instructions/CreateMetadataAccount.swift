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
 * @category CreateMetadataAccount
 * @category generated
 */
public struct CreateMetadataAccountInstructionArgs{
    let instructionDiscriminator: [UInt8] /* size: 8 */
    let createMetadataAccountArgs: CreateMetadataAccountArgs

    public init(
        instructionDiscriminator: [UInt8] /* size: 8 */ = createMetadataAccountInstructionDiscriminator,
        createMetadataAccountArgs: CreateMetadataAccountArgs
    ) {
        self.instructionDiscriminator = instructionDiscriminator
        self.createMetadataAccountArgs = createMetadataAccountArgs
    }
}
/**
 * @category Instructions
 * @category CreateMetadataAccount
 * @category generated
 */
public let CreateMetadataAccountStruct = FixableBeetArgsStruct<CreateMetadataAccountInstructionArgs>(
    fields: [
        ("instructionDiscriminator", Beet.fixedBeet(.init(value: .collection(UniformFixedSizeArray<UInt8>(element: .init(value: .scalar(u8())), len: 8))))),
        ("createMetadataAccountArgs", createMetadataAccountArgsBeetWrapped)
    ],
    description: "CreateMetadataAccountInstructionArgs"
)
/**
* Accounts required by the _CreateMetadataAccount_ instruction
*
* @property [_writable_] metadata  
* @property [] mint  
* @property [**signer**] mintAuthority  
* @property [_writable_, **signer**] payer  
* @property [] updateAuthority   
* @category Instructions
* @category CreateMetadataAccount
* @category generated
*/
public struct CreateMetadataAccountInstructionAccounts {
    let metadata: PublicKey
    let mint: PublicKey
    let mintAuthority: PublicKey
    let payer: PublicKey
    let updateAuthority: PublicKey
    let systemProgram: PublicKey?
    let rent: PublicKey?

    public init(
        metadata: PublicKey,
        mint: PublicKey,
        mintAuthority: PublicKey,
        payer: PublicKey,
        updateAuthority: PublicKey,
        systemProgram: PublicKey? = nil,
        rent: PublicKey? = nil
    ) {
        self.metadata = metadata
        self.mint = mint
        self.mintAuthority = mintAuthority
        self.payer = payer
        self.updateAuthority = updateAuthority
        self.systemProgram = systemProgram
        self.rent = rent
    }
}

public let createMetadataAccountInstructionDiscriminator = [75, 73, 45, 178, 212, 194, 127, 113] as [UInt8]

/**
* Creates a _CreateMetadataAccount_ instruction.
*
* @param accounts that will be accessed while the instruction is processed
  * @param args to provide as instruction data to the program
 * 
* @category Instructions
* @category CreateMetadataAccount
* @category generated
*/
public func createCreateMetadataAccountInstruction(accounts: CreateMetadataAccountInstructionAccounts, 
args: CreateMetadataAccountInstructionArgs, programId: PublicKey=PublicKey(string: "metaqbxxUerdq28cj1RbAWkYQm3ybzjb6a8bt518x1s")!) -> TransactionInstruction {

    let data = CreateMetadataAccountStruct.serialize(
            instance: ["instructionDiscriminator": createMetadataAccountInstructionDiscriminator,
"createMetadataAccountArgs": args.createMetadataAccountArgs])

    let keys: [AccountMeta] = [
        AccountMeta(
            publicKey: accounts.metadata,
            isSigner: false,
            isWritable: true
        ),
        AccountMeta(
            publicKey: accounts.mint,
            isSigner: false,
            isWritable: false
        ),
        AccountMeta(
            publicKey: accounts.mintAuthority,
            isSigner: true,
            isWritable: false
        ),
        AccountMeta(
            publicKey: accounts.payer,
            isSigner: true,
            isWritable: true
        ),
        AccountMeta(
            publicKey: accounts.updateAuthority,
            isSigner: false,
            isWritable: false
        ),
        AccountMeta(
            publicKey: accounts.systemProgram ?? PublicKey.systemProgramId,
            isSigner: false,
            isWritable: false
        ),
        AccountMeta(
            publicKey: accounts.rent ?? PublicKey.sysvarRent,
            isSigner: false,
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