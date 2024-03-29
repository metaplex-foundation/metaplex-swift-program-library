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
 * @category CreateEscrowAccount
 * @category generated
 */
public struct CreateEscrowAccountInstructionArgs{
    let instructionDiscriminator: [UInt8] /* size: 8 */
    

    public init(
        instructionDiscriminator: [UInt8] /* size: 8 */ = createEscrowAccountInstructionDiscriminator
    ) {
        self.instructionDiscriminator = instructionDiscriminator
    }
}
/**
 * @category Instructions
 * @category CreateEscrowAccount
 * @category generated
 */
public let CreateEscrowAccountStruct = FixableBeetArgsStruct<CreateEscrowAccountInstructionArgs>(
    fields: [
        ("instructionDiscriminator", Beet.fixedBeet(.init(value: .collection(UniformFixedSizeArray<UInt8>(element: .init(value: .scalar(u8())), len: 8))))),
        
    ],
    description: "CreateEscrowAccountInstructionArgs"
)
/**
* Accounts required by the _CreateEscrowAccount_ instruction
*
* @property [_writable_] escrow  
* @property [_writable_] metadata  
* @property [] mint  
* @property [] tokenAccount  
* @property [] edition  
* @property [_writable_, **signer**] payer  
* @property [] sysvarInstructions  
* @property [**signer**] authority (optional)   
* @category Instructions
* @category CreateEscrowAccount
* @category generated
*/
public struct CreateEscrowAccountInstructionAccounts {
    let escrow: PublicKey
    let metadata: PublicKey
    let mint: PublicKey
    let tokenAccount: PublicKey
    let edition: PublicKey
    let payer: PublicKey
    let systemProgram: PublicKey?
    let sysvarInstructions: PublicKey
    let authority: PublicKey?

    public init(
        escrow: PublicKey,
        metadata: PublicKey,
        mint: PublicKey,
        tokenAccount: PublicKey,
        edition: PublicKey,
        payer: PublicKey,
        systemProgram: PublicKey? = nil,
        sysvarInstructions: PublicKey,
        authority: PublicKey? = nil
    ) {
        self.escrow = escrow
        self.metadata = metadata
        self.mint = mint
        self.tokenAccount = tokenAccount
        self.edition = edition
        self.payer = payer
        self.systemProgram = systemProgram
        self.sysvarInstructions = sysvarInstructions
        self.authority = authority
    }
}

public let createEscrowAccountInstructionDiscriminator = [146, 147, 225, 47, 51, 64, 112, 1] as [UInt8]

/**
* Creates a _CreateEscrowAccount_ instruction.
*
* @param accounts that will be accessed while the instruction is processed
* @category Instructions
* @category CreateEscrowAccount
* @category generated
*/
public func createCreateEscrowAccountInstruction(accounts: CreateEscrowAccountInstructionAccounts, 
programId: PublicKey=PublicKey(string: "metaqbxxUerdq28cj1RbAWkYQm3ybzjb6a8bt518x1s")!) -> TransactionInstruction {

    let data = CreateEscrowAccountStruct.serialize(
            instance: ["instructionDiscriminator": createEscrowAccountInstructionDiscriminator ])

    var keys: [AccountMeta] = [
        AccountMeta(
            publicKey: accounts.escrow,
            isSigner: false,
            isWritable: true
        ),
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
            publicKey: accounts.tokenAccount,
            isSigner: false,
            isWritable: false
        ),
        AccountMeta(
            publicKey: accounts.edition,
            isSigner: false,
            isWritable: false
        ),
        AccountMeta(
            publicKey: accounts.payer,
            isSigner: true,
            isWritable: true
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
        )
    ]
    if accounts.authority != nil {
        
        keys.append(
            AccountMeta(
                publicKey: accounts.authority!,
                isSigner: true,
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