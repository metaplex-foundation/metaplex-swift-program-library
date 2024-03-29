/**
 * This code was GENERATED using the solita package.
 * Please DO NOT EDIT THIS FILE, instead rerun solita to update it or write a wrapper to add functionality.
 *
 * See: https://github.com/metaplex-foundation/solita-swift
 */
import Foundation
import Solana
import Beet

/**
 * @category Instructions
 * @category DeprecatedCreateMasterEdition
 * @category generated
 */
public struct DeprecatedCreateMasterEditionInstructionArgs{
    let instructionDiscriminator: [UInt8] /* size: 8 */
    let createMasterEditionArgs: CreateMasterEditionArgs

    public init(
        instructionDiscriminator: [UInt8] /* size: 8 */ = deprecatedCreateMasterEditionInstructionDiscriminator,
        createMasterEditionArgs: CreateMasterEditionArgs
    ) {
        self.instructionDiscriminator = instructionDiscriminator
        self.createMasterEditionArgs = createMasterEditionArgs
    }
}
/**
 * @category Instructions
 * @category DeprecatedCreateMasterEdition
 * @category generated
 */
public let DeprecatedCreateMasterEditionStruct = FixableBeetArgsStruct<DeprecatedCreateMasterEditionInstructionArgs>(
    fields: [
        ("instructionDiscriminator", Beet.fixedBeet(.init(value: .collection(UniformFixedSizeArray<UInt8>(element: .init(value: .scalar(u8())), len: 8))))),
        ("createMasterEditionArgs", createMasterEditionArgsBeetWrapped)
    ],
    description: "DeprecatedCreateMasterEditionInstructionArgs"
)
/**
* Accounts required by the _DeprecatedCreateMasterEdition_ instruction
*
* @property [_writable_] edition  
* @property [_writable_] mint  
* @property [_writable_] printingMint  
* @property [_writable_] oneTimePrintingAuthorizationMint  
* @property [**signer**] updateAuthority  
* @property [**signer**] printingMintAuthority  
* @property [**signer**] mintAuthority  
* @property [] metadata  
* @property [**signer**] payer  
* @property [**signer**] oneTimePrintingAuthorizationMintAuthority   
* @category Instructions
* @category DeprecatedCreateMasterEdition
* @category generated
*/
public struct DeprecatedCreateMasterEditionInstructionAccounts {
    let edition: PublicKey
    let mint: PublicKey
    let printingMint: PublicKey
    let oneTimePrintingAuthorizationMint: PublicKey
    let updateAuthority: PublicKey
    let printingMintAuthority: PublicKey
    let mintAuthority: PublicKey
    let metadata: PublicKey
    let payer: PublicKey
    let tokenProgram: PublicKey?
    let systemProgram: PublicKey?
    let rent: PublicKey?
    let oneTimePrintingAuthorizationMintAuthority: PublicKey

    public init(
        edition: PublicKey,
        mint: PublicKey,
        printingMint: PublicKey,
        oneTimePrintingAuthorizationMint: PublicKey,
        updateAuthority: PublicKey,
        printingMintAuthority: PublicKey,
        mintAuthority: PublicKey,
        metadata: PublicKey,
        payer: PublicKey,
        tokenProgram: PublicKey? = nil,
        systemProgram: PublicKey? = nil,
        rent: PublicKey? = nil,
        oneTimePrintingAuthorizationMintAuthority: PublicKey
    ) {
        self.edition = edition
        self.mint = mint
        self.printingMint = printingMint
        self.oneTimePrintingAuthorizationMint = oneTimePrintingAuthorizationMint
        self.updateAuthority = updateAuthority
        self.printingMintAuthority = printingMintAuthority
        self.mintAuthority = mintAuthority
        self.metadata = metadata
        self.payer = payer
        self.tokenProgram = tokenProgram
        self.systemProgram = systemProgram
        self.rent = rent
        self.oneTimePrintingAuthorizationMintAuthority = oneTimePrintingAuthorizationMintAuthority
    }
}

public let deprecatedCreateMasterEditionInstructionDiscriminator = [155, 127, 165, 159, 236, 92, 79, 21] as [UInt8]

/**
* Creates a _DeprecatedCreateMasterEdition_ instruction.
*
* @param accounts that will be accessed while the instruction is processed
  * @param args to provide as instruction data to the program
 * 
* @category Instructions
* @category DeprecatedCreateMasterEdition
* @category generated
*/
public func createDeprecatedCreateMasterEditionInstruction(accounts: DeprecatedCreateMasterEditionInstructionAccounts, 
args: DeprecatedCreateMasterEditionInstructionArgs, programId: PublicKey=PublicKey(string: "metaqbxxUerdq28cj1RbAWkYQm3ybzjb6a8bt518x1s")!) -> TransactionInstruction {

    let data = DeprecatedCreateMasterEditionStruct.serialize(
            instance: ["instructionDiscriminator": deprecatedCreateMasterEditionInstructionDiscriminator,
"createMasterEditionArgs": args.createMasterEditionArgs])

    let keys: [AccountMeta] = [
        AccountMeta(
            publicKey: accounts.edition,
            isSigner: false,
            isWritable: true
        ),
        AccountMeta(
            publicKey: accounts.mint,
            isSigner: false,
            isWritable: true
        ),
        AccountMeta(
            publicKey: accounts.printingMint,
            isSigner: false,
            isWritable: true
        ),
        AccountMeta(
            publicKey: accounts.oneTimePrintingAuthorizationMint,
            isSigner: false,
            isWritable: true
        ),
        AccountMeta(
            publicKey: accounts.updateAuthority,
            isSigner: true,
            isWritable: false
        ),
        AccountMeta(
            publicKey: accounts.printingMintAuthority,
            isSigner: true,
            isWritable: false
        ),
        AccountMeta(
            publicKey: accounts.mintAuthority,
            isSigner: true,
            isWritable: false
        ),
        AccountMeta(
            publicKey: accounts.metadata,
            isSigner: false,
            isWritable: false
        ),
        AccountMeta(
            publicKey: accounts.payer,
            isSigner: true,
            isWritable: false
        ),
        AccountMeta(
            publicKey: accounts.tokenProgram ?? PublicKey.tokenProgramId,
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
        ),
        AccountMeta(
            publicKey: accounts.oneTimePrintingAuthorizationMintAuthority,
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