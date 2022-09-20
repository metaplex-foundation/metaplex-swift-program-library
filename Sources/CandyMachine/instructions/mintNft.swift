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
 * @category MintNft
 * @category generated
 */
public struct MintNftInstructionArgs{
    let instructionDiscriminator: [UInt8] /* size: 8 */
    let creatorBump: UInt8
}
/**
 * @category Instructions
 * @category MintNft
 * @category generated
 */
public let mintNftStruct = FixableBeetArgsStruct<MintNftInstructionArgs>(
    fields: [
        ("instructionDiscriminator", Beet.fixedBeet(.init(value: .collection(UniformFixedSizeArray<UInt8>(element: .init(value: .scalar(u8())), len: 8))))),
        ("creatorBump", Beet.fixedBeet(.init(value: .scalar(u8()))))
    ],
    description: "MintNftInstructionArgs"
)
/**
* Accounts required by the _mintNft_ instruction
*
* @property [_writable_] candyMachine  
* @property [] candyMachineCreator  
* @property [**signer**] payer  
* @property [_writable_] wallet  
* @property [_writable_] metadata  
* @property [_writable_] mint  
* @property [**signer**] mintAuthority  
* @property [**signer**] updateAuthority  
* @property [_writable_] masterEdition  
* @property [] tokenMetadataProgram  
* @property [] clock  
* @property [] recentBlockhashes  
* @property [] instructionSysvarAccount   
* @category Instructions
* @category MintNft
* @category generated
*/
public struct MintNftInstructionAccounts {
        let candyMachine: PublicKey
        let candyMachineCreator: PublicKey
        let payer: PublicKey
        let wallet: PublicKey
        let metadata: PublicKey
        let mint: PublicKey
        let mintAuthority: PublicKey
        let updateAuthority: PublicKey
        let masterEdition: PublicKey
        let tokenMetadataProgram: PublicKey
        let tokenProgram: PublicKey?
        let systemProgram: PublicKey?
        let rent: PublicKey?
        let clock: PublicKey
        let recentBlockhashes: PublicKey
        let instructionSysvarAccount: PublicKey
}

public let mintNftInstructionDiscriminator = [103, 108, 111, 98, 97, 108, 58, 109] as [UInt8]

/**
* Creates a _MintNft_ instruction.
*
* @param accounts that will be accessed while the instruction is processed
  * @param args to provide as instruction data to the program
 * 
* @category Instructions
* @category MintNft
* @category generated
*/
public func createMintNftInstruction(accounts: MintNftInstructionAccounts, 
args: MintNftInstructionArgs, programId: PublicKey=PublicKey(string: "")!) -> TransactionInstruction {

    let data = mintNftStruct.serialize(
            instance: ["instructionDiscriminator": mintNftInstructionDiscriminator,
"creatorBump": args.creatorBump])

    let keys: [Account.Meta] = [
        Account.Meta(
            publicKey: accounts.candyMachine,
            isSigner: false,
            isWritable: true
        ),
        Account.Meta(
            publicKey: accounts.candyMachineCreator,
            isSigner: false,
            isWritable: false
        ),
        Account.Meta(
            publicKey: accounts.payer,
            isSigner: true,
            isWritable: false
        ),
        Account.Meta(
            publicKey: accounts.wallet,
            isSigner: false,
            isWritable: true
        ),
        Account.Meta(
            publicKey: accounts.metadata,
            isSigner: false,
            isWritable: true
        ),
        Account.Meta(
            publicKey: accounts.mint,
            isSigner: false,
            isWritable: true
        ),
        Account.Meta(
            publicKey: accounts.mintAuthority,
            isSigner: true,
            isWritable: false
        ),
        Account.Meta(
            publicKey: accounts.updateAuthority,
            isSigner: true,
            isWritable: false
        ),
        Account.Meta(
            publicKey: accounts.masterEdition,
            isSigner: false,
            isWritable: true
        ),
        Account.Meta(
            publicKey: accounts.tokenMetadataProgram,
            isSigner: false,
            isWritable: false
        ),
        Account.Meta(
            publicKey: accounts.tokenProgram ?? PublicKey.tokenProgramId,
            isSigner: false,
            isWritable: false
        ),
        Account.Meta(
            publicKey: accounts.systemProgram ?? PublicKey.systemProgramId,
            isSigner: false,
            isWritable: false
        ),
        Account.Meta(
            publicKey: accounts.rent ?? PublicKey.sysvarRent,
            isSigner: false,
            isWritable: false
        ),
        Account.Meta(
            publicKey: accounts.clock,
            isSigner: false,
            isWritable: false
        ),
        Account.Meta(
            publicKey: accounts.recentBlockhashes,
            isSigner: false,
            isWritable: false
        ),
        Account.Meta(
            publicKey: accounts.instructionSysvarAccount,
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