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
 * @category VerifyCollection
 * @category generated
 */
public struct VerifyCollectionInstructionArgs{
    let instructionDiscriminator: [UInt8] /* size: 8 */
    

    public init(
        instructionDiscriminator: [UInt8] /* size: 8 */ = verifyCollectionInstructionDiscriminator
    ) {
        self.instructionDiscriminator = instructionDiscriminator
    }
}
/**
 * @category Instructions
 * @category VerifyCollection
 * @category generated
 */
public let VerifyCollectionStruct = FixableBeetArgsStruct<VerifyCollectionInstructionArgs>(
    fields: [
        ("instructionDiscriminator", Beet.fixedBeet(.init(value: .collection(UniformFixedSizeArray<UInt8>(element: .init(value: .scalar(u8())), len: 8))))),
        
    ],
    description: "VerifyCollectionInstructionArgs"
)
/**
* Accounts required by the _VerifyCollection_ instruction
*
* @property [_writable_] metadata  
* @property [_writable_, **signer**] collectionAuthority  
* @property [_writable_, **signer**] payer  
* @property [] collectionMint  
* @property [] collection  
* @property [] collectionMasterEditionAccount   
* @category Instructions
* @category VerifyCollection
* @category generated
*/
public struct VerifyCollectionInstructionAccounts {
    let metadata: PublicKey
    let collectionAuthority: PublicKey
    let payer: PublicKey
    let collectionMint: PublicKey
    let collection: PublicKey
    let collectionMasterEditionAccount: PublicKey

    public init(
        metadata: PublicKey,
        collectionAuthority: PublicKey,
        payer: PublicKey,
        collectionMint: PublicKey,
        collection: PublicKey,
        collectionMasterEditionAccount: PublicKey
    ) {
        self.metadata = metadata
        self.collectionAuthority = collectionAuthority
        self.payer = payer
        self.collectionMint = collectionMint
        self.collection = collection
        self.collectionMasterEditionAccount = collectionMasterEditionAccount
    }
}

public let verifyCollectionInstructionDiscriminator = [56, 113, 101, 253, 79, 55, 122, 169] as [UInt8]

/**
* Creates a _VerifyCollection_ instruction.
*
* @param accounts that will be accessed while the instruction is processed
* @category Instructions
* @category VerifyCollection
* @category generated
*/
public func createVerifyCollectionInstruction(accounts: VerifyCollectionInstructionAccounts, 
programId: PublicKey=PublicKey(string: "metaqbxxUerdq28cj1RbAWkYQm3ybzjb6a8bt518x1s")!) -> TransactionInstruction {

    let data = VerifyCollectionStruct.serialize(
            instance: ["instructionDiscriminator": verifyCollectionInstructionDiscriminator ])

    let keys: [AccountMeta] = [
        AccountMeta(
            publicKey: accounts.metadata,
            isSigner: false,
            isWritable: true
        ),
        AccountMeta(
            publicKey: accounts.collectionAuthority,
            isSigner: true,
            isWritable: true
        ),
        AccountMeta(
            publicKey: accounts.payer,
            isSigner: true,
            isWritable: true
        ),
        AccountMeta(
            publicKey: accounts.collectionMint,
            isSigner: false,
            isWritable: false
        ),
        AccountMeta(
            publicKey: accounts.collection,
            isSigner: false,
            isWritable: false
        ),
        AccountMeta(
            publicKey: accounts.collectionMasterEditionAccount,
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