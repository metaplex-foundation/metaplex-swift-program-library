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
 * @category Create
 * @category generated
 */
public struct CreateInstructionArgs{
    let instructionDiscriminator: [UInt8] /* size: 8 */
    let createArgs: CreateArgs

    public init(
        instructionDiscriminator: [UInt8] /* size: 8 */ = createInstructionDiscriminator,
        createArgs: CreateArgs
    ) {
        self.instructionDiscriminator = instructionDiscriminator
        self.createArgs = createArgs
    }
}
/**
 * @category Instructions
 * @category Create
 * @category generated
 */
public let CreateStruct = FixableBeetArgsStruct<CreateInstructionArgs>(
    fields: [
        ("instructionDiscriminator", Beet.fixedBeet(.init(value: .collection(UniformFixedSizeArray<UInt8>(element: .init(value: .scalar(u8())), len: 8))))),
        ("createArgs", createArgsBeetWrapped)
    ],
    description: "CreateInstructionArgs"
)
/**
* Accounts required by the _Create_ instruction
*
* @property [_writable_] metadata  
* @property [_writable_] masterEdition (optional)  
* @property [_writable_] mint  
* @property [**signer**] authority  
* @property [_writable_, **signer**] payer  
* @property [] updateAuthority  
* @property [] sysvarInstructions  
* @property [] splTokenProgram   
* @category Instructions
* @category Create
* @category generated
*/
public struct CreateInstructionAccounts {
    let metadata: PublicKey
    let masterEdition: PublicKey?
    let mint: PublicKey
    let authority: PublicKey
    let payer: PublicKey
    let updateAuthority: PublicKey
    let systemProgram: PublicKey?
    let sysvarInstructions: PublicKey
    let splTokenProgram: PublicKey

    public init(
        metadata: PublicKey,
        masterEdition: PublicKey? = nil,
        mint: PublicKey,
        authority: PublicKey,
        payer: PublicKey,
        updateAuthority: PublicKey,
        systemProgram: PublicKey? = nil,
        sysvarInstructions: PublicKey,
        splTokenProgram: PublicKey
    ) {
        self.metadata = metadata
        self.masterEdition = masterEdition
        self.mint = mint
        self.authority = authority
        self.payer = payer
        self.updateAuthority = updateAuthority
        self.systemProgram = systemProgram
        self.sysvarInstructions = sysvarInstructions
        self.splTokenProgram = splTokenProgram
    }
}

public let createInstructionDiscriminator = [24, 30, 200, 40, 5, 28, 7, 119] as [UInt8]

/**
* Creates a _Create_ instruction.
*
* @param accounts that will be accessed while the instruction is processed
  * @param args to provide as instruction data to the program
 * 
* @category Instructions
* @category Create
* @category generated
*/
public func createCreateInstruction(accounts: CreateInstructionAccounts, 
args: CreateInstructionArgs, programId: PublicKey=PublicKey(string: "metaqbxxUerdq28cj1RbAWkYQm3ybzjb6a8bt518x1s")!) -> TransactionInstruction {

    let data = CreateStruct.serialize(
            instance: ["instructionDiscriminator": createInstructionDiscriminator,
"createArgs": args.createArgs])

    var keys: [AccountMeta] = [
        AccountMeta(
            publicKey: accounts.metadata,
            isSigner: false,
            isWritable: true
        ),
        AccountMeta(
            publicKey: accounts.mint,
            isSigner: false,
            isWritable: true
        ),
        AccountMeta(
            publicKey: accounts.authority,
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
            publicKey: accounts.sysvarInstructions,
            isSigner: false,
            isWritable: false
        ),
        AccountMeta(
            publicKey: accounts.splTokenProgram,
            isSigner: false,
            isWritable: false
        )
    ]
    if accounts.masterEdition != nil {
        
        keys.append(
            AccountMeta(
                publicKey: accounts.masterEdition!,
                isSigner: false,
                isWritable: true
            )
        )
    }  else {
        keys.append(
            AccountMeta(
                publicKey: programId,
                isSigner: false,
                isWritable: false
            )
        )
    }

    let ix = TransactionInstruction(
                keys: keys,
                programId: programId,
                data: data.0.bytes
            )
    return ix
}