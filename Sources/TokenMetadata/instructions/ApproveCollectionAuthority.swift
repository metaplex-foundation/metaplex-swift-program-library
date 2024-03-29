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
 * @category ApproveCollectionAuthority
 * @category generated
 */
public struct ApproveCollectionAuthorityInstructionArgs{
    let instructionDiscriminator: [UInt8] /* size: 8 */
    

    public init(
        instructionDiscriminator: [UInt8] /* size: 8 */ = approveCollectionAuthorityInstructionDiscriminator
    ) {
        self.instructionDiscriminator = instructionDiscriminator
    }
}
/**
 * @category Instructions
 * @category ApproveCollectionAuthority
 * @category generated
 */
public let ApproveCollectionAuthorityStruct = FixableBeetArgsStruct<ApproveCollectionAuthorityInstructionArgs>(
    fields: [
        ("instructionDiscriminator", Beet.fixedBeet(.init(value: .collection(UniformFixedSizeArray<UInt8>(element: .init(value: .scalar(u8())), len: 8))))),
        
    ],
    description: "ApproveCollectionAuthorityInstructionArgs"
)
/**
* Accounts required by the _ApproveCollectionAuthority_ instruction
*
* @property [_writable_] collectionAuthorityRecord  
* @property [] newCollectionAuthority  
* @property [_writable_, **signer**] updateAuthority  
* @property [_writable_, **signer**] payer  
* @property [] metadata  
* @property [] mint   
* @category Instructions
* @category ApproveCollectionAuthority
* @category generated
*/
public struct ApproveCollectionAuthorityInstructionAccounts {
    let collectionAuthorityRecord: PublicKey
    let newCollectionAuthority: PublicKey
    let updateAuthority: PublicKey
    let payer: PublicKey
    let metadata: PublicKey
    let mint: PublicKey
    let systemProgram: PublicKey?
    let rent: PublicKey?

    public init(
        collectionAuthorityRecord: PublicKey,
        newCollectionAuthority: PublicKey,
        updateAuthority: PublicKey,
        payer: PublicKey,
        metadata: PublicKey,
        mint: PublicKey,
        systemProgram: PublicKey? = nil,
        rent: PublicKey? = nil
    ) {
        self.collectionAuthorityRecord = collectionAuthorityRecord
        self.newCollectionAuthority = newCollectionAuthority
        self.updateAuthority = updateAuthority
        self.payer = payer
        self.metadata = metadata
        self.mint = mint
        self.systemProgram = systemProgram
        self.rent = rent
    }
}

public let approveCollectionAuthorityInstructionDiscriminator = [254, 136, 208, 39, 65, 66, 27, 111] as [UInt8]

/**
* Creates a _ApproveCollectionAuthority_ instruction.
*
* @param accounts that will be accessed while the instruction is processed
* @category Instructions
* @category ApproveCollectionAuthority
* @category generated
*/
public func createApproveCollectionAuthorityInstruction(accounts: ApproveCollectionAuthorityInstructionAccounts, 
programId: PublicKey=PublicKey(string: "metaqbxxUerdq28cj1RbAWkYQm3ybzjb6a8bt518x1s")!) -> TransactionInstruction {

    let data = ApproveCollectionAuthorityStruct.serialize(
            instance: ["instructionDiscriminator": approveCollectionAuthorityInstructionDiscriminator ])

    var keys: [AccountMeta] = [
        AccountMeta(
            publicKey: accounts.collectionAuthorityRecord,
            isSigner: false,
            isWritable: true
        ),
        AccountMeta(
            publicKey: accounts.newCollectionAuthority,
            isSigner: false,
            isWritable: false
        ),
        AccountMeta(
            publicKey: accounts.updateAuthority,
            isSigner: true,
            isWritable: true
        ),
        AccountMeta(
            publicKey: accounts.payer,
            isSigner: true,
            isWritable: true
        ),
        AccountMeta(
            publicKey: accounts.metadata,
            isSigner: false,
            isWritable: false
        ),
        AccountMeta(
            publicKey: accounts.mint,
            isSigner: false,
            isWritable: false
        ),
        AccountMeta(
            publicKey: accounts.systemProgram ?? PublicKey.systemProgramId,
            isSigner: false,
            isWritable: false
        )
    ]
    if accounts.rent != nil {
        
        keys.append(
            AccountMeta(
                publicKey: accounts.rent!,
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