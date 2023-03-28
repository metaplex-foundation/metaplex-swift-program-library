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
 * @category SetCollection
 * @category generated
 */
public struct SetCollectionInstructionArgs{
    let instructionDiscriminator: [UInt8] /* size: 8 */
    

    public init(
        instructionDiscriminator: [UInt8] /* size: 8 */ = setCollectionInstructionDiscriminator
    ) {
        self.instructionDiscriminator = instructionDiscriminator
    }
}
/**
 * @category Instructions
 * @category SetCollection
 * @category generated
 */
public let setCollectionStruct = FixableBeetArgsStruct<SetCollectionInstructionArgs>(
    fields: [
        ("instructionDiscriminator", Beet.fixedBeet(.init(value: .collection(UniformFixedSizeArray<UInt8>(element: .init(value: .scalar(u8())), len: 8))))),
        
    ],
    description: "SetCollectionInstructionArgs"
)
/**
* Accounts required by the _setCollection_ instruction
*
* @property [_writable_] candyMachine  
* @property [**signer**] authority  
* @property [_writable_] authorityPda  
* @property [**signer**] payer  
* @property [] collectionMint  
* @property [] collectionMetadata  
* @property [_writable_] collectionAuthorityRecord  
* @property [_writable_, **signer**] newCollectionUpdateAuthority  
* @property [] newCollectionMetadata  
* @property [] newCollectionMint  
* @property [] newCollectionMasterEdition  
* @property [_writable_] newCollectionAuthorityRecord  
* @property [] tokenMetadataProgram   
* @category Instructions
* @category SetCollection
* @category generated
*/
public struct SetCollectionInstructionAccounts {
    let candyMachine: PublicKey
    let authority: PublicKey
    let authorityPda: PublicKey
    let payer: PublicKey
    let collectionMint: PublicKey
    let collectionMetadata: PublicKey
    let collectionAuthorityRecord: PublicKey
    let newCollectionUpdateAuthority: PublicKey
    let newCollectionMetadata: PublicKey
    let newCollectionMint: PublicKey
    let newCollectionMasterEdition: PublicKey
    let newCollectionAuthorityRecord: PublicKey
    let tokenMetadataProgram: PublicKey
    let systemProgram: PublicKey?

    public init(
        candyMachine: PublicKey,
        authority: PublicKey,
        authorityPda: PublicKey,
        payer: PublicKey,
        collectionMint: PublicKey,
        collectionMetadata: PublicKey,
        collectionAuthorityRecord: PublicKey,
        newCollectionUpdateAuthority: PublicKey,
        newCollectionMetadata: PublicKey,
        newCollectionMint: PublicKey,
        newCollectionMasterEdition: PublicKey,
        newCollectionAuthorityRecord: PublicKey,
        tokenMetadataProgram: PublicKey,
        systemProgram: PublicKey? = nil
    ) {
        self.candyMachine = candyMachine
        self.authority = authority
        self.authorityPda = authorityPda
        self.payer = payer
        self.collectionMint = collectionMint
        self.collectionMetadata = collectionMetadata
        self.collectionAuthorityRecord = collectionAuthorityRecord
        self.newCollectionUpdateAuthority = newCollectionUpdateAuthority
        self.newCollectionMetadata = newCollectionMetadata
        self.newCollectionMint = newCollectionMint
        self.newCollectionMasterEdition = newCollectionMasterEdition
        self.newCollectionAuthorityRecord = newCollectionAuthorityRecord
        self.tokenMetadataProgram = tokenMetadataProgram
        self.systemProgram = systemProgram
    }
}

public let setCollectionInstructionDiscriminator = [192, 254, 206, 76, 168, 182, 59, 223] as [UInt8]

/**
* Creates a _SetCollection_ instruction.
*
* @param accounts that will be accessed while the instruction is processed
* @category Instructions
* @category SetCollection
* @category generated
*/
public func createSetCollectionInstruction(accounts: SetCollectionInstructionAccounts, 
programId: PublicKey=PublicKey(string: "CndyV3LdqHUfDLmE5naZjVN8rBZz4tqhdefbAnjHG3JR")!) -> TransactionInstruction {

    let data = setCollectionStruct.serialize(
            instance: ["instructionDiscriminator": setCollectionInstructionDiscriminator ])

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
            publicKey: accounts.authorityPda,
            isSigner: false,
            isWritable: true
        ),
        AccountMeta(
            publicKey: accounts.payer,
            isSigner: true,
            isWritable: false
        ),
        AccountMeta(
            publicKey: accounts.collectionMint,
            isSigner: false,
            isWritable: false
        ),
        AccountMeta(
            publicKey: accounts.collectionMetadata,
            isSigner: false,
            isWritable: false
        ),
        AccountMeta(
            publicKey: accounts.collectionAuthorityRecord,
            isSigner: false,
            isWritable: true
        ),
        AccountMeta(
            publicKey: accounts.newCollectionUpdateAuthority,
            isSigner: true,
            isWritable: true
        ),
        AccountMeta(
            publicKey: accounts.newCollectionMetadata,
            isSigner: false,
            isWritable: false
        ),
        AccountMeta(
            publicKey: accounts.newCollectionMint,
            isSigner: false,
            isWritable: false
        ),
        AccountMeta(
            publicKey: accounts.newCollectionMasterEdition,
            isSigner: false,
            isWritable: false
        ),
        AccountMeta(
            publicKey: accounts.newCollectionAuthorityRecord,
            isSigner: false,
            isWritable: true
        ),
        AccountMeta(
            publicKey: accounts.tokenMetadataProgram,
            isSigner: false,
            isWritable: false
        ),
        AccountMeta(
            publicKey: accounts.systemProgram ?? PublicKey.systemProgramId,
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