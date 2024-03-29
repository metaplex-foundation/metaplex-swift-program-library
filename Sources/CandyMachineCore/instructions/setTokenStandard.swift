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
 * @category SetTokenStandard
 * @category generated
 */
public struct SetTokenStandardInstructionArgs{
    let instructionDiscriminator: [UInt8] /* size: 8 */
    let tokenStandard: UInt8

    public init(
        instructionDiscriminator: [UInt8] /* size: 8 */ = setTokenStandardInstructionDiscriminator,
        tokenStandard: UInt8
    ) {
        self.instructionDiscriminator = instructionDiscriminator
        self.tokenStandard = tokenStandard
    }
}
/**
 * @category Instructions
 * @category SetTokenStandard
 * @category generated
 */
public let setTokenStandardStruct = FixableBeetArgsStruct<SetTokenStandardInstructionArgs>(
    fields: [
        ("instructionDiscriminator", Beet.fixedBeet(.init(value: .collection(UniformFixedSizeArray<UInt8>(element: .init(value: .scalar(u8())), len: 8))))),
        ("tokenStandard", Beet.fixedBeet(.init(value: .scalar(u8()))))
    ],
    description: "SetTokenStandardInstructionArgs"
)
/**
* Accounts required by the _setTokenStandard_ instruction
*
* @property [_writable_] candyMachine  
* @property [**signer**] authority  
* @property [_writable_] authorityPda  
* @property [_writable_, **signer**] payer  
* @property [] ruleSet  
* @property [_writable_] collectionDelegateRecord  
* @property [] collectionMint  
* @property [_writable_] collectionMetadata  
* @property [_writable_] collectionAuthorityRecord  
* @property [**signer**] collectionUpdateAuthority  
* @property [] tokenMetadataProgram  
* @property [] sysvarInstructions  
* @property [] authorizationRulesProgram  
* @property [] authorizationRules   
* @category Instructions
* @category SetTokenStandard
* @category generated
*/
public struct SetTokenStandardInstructionAccounts {
    let candyMachine: PublicKey
    let authority: PublicKey
    let authorityPda: PublicKey
    let payer: PublicKey
    let ruleSet: PublicKey
    let collectionDelegateRecord: PublicKey
    let collectionMint: PublicKey
    let collectionMetadata: PublicKey
    let collectionAuthorityRecord: PublicKey
    let collectionUpdateAuthority: PublicKey
    let tokenMetadataProgram: PublicKey
    let systemProgram: PublicKey?
    let sysvarInstructions: PublicKey
    let authorizationRulesProgram: PublicKey
    let authorizationRules: PublicKey

    public init(
        candyMachine: PublicKey,
        authority: PublicKey,
        authorityPda: PublicKey,
        payer: PublicKey,
        ruleSet: PublicKey,
        collectionDelegateRecord: PublicKey,
        collectionMint: PublicKey,
        collectionMetadata: PublicKey,
        collectionAuthorityRecord: PublicKey,
        collectionUpdateAuthority: PublicKey,
        tokenMetadataProgram: PublicKey,
        systemProgram: PublicKey? = nil,
        sysvarInstructions: PublicKey,
        authorizationRulesProgram: PublicKey,
        authorizationRules: PublicKey
    ) {
        self.candyMachine = candyMachine
        self.authority = authority
        self.authorityPda = authorityPda
        self.payer = payer
        self.ruleSet = ruleSet
        self.collectionDelegateRecord = collectionDelegateRecord
        self.collectionMint = collectionMint
        self.collectionMetadata = collectionMetadata
        self.collectionAuthorityRecord = collectionAuthorityRecord
        self.collectionUpdateAuthority = collectionUpdateAuthority
        self.tokenMetadataProgram = tokenMetadataProgram
        self.systemProgram = systemProgram
        self.sysvarInstructions = sysvarInstructions
        self.authorizationRulesProgram = authorizationRulesProgram
        self.authorizationRules = authorizationRules
    }
}

public let setTokenStandardInstructionDiscriminator = [147, 212, 106, 195, 30, 170, 209, 128] as [UInt8]

/**
* Creates a _SetTokenStandard_ instruction.
*
* @param accounts that will be accessed while the instruction is processed
  * @param args to provide as instruction data to the program
 * 
* @category Instructions
* @category SetTokenStandard
* @category generated
*/
public func createSetTokenStandardInstruction(accounts: SetTokenStandardInstructionAccounts, 
args: SetTokenStandardInstructionArgs, programId: PublicKey=PublicKey(string: "CndyV3LdqHUfDLmE5naZjVN8rBZz4tqhdefbAnjHG3JR")!) -> TransactionInstruction {

    let data = setTokenStandardStruct.serialize(
            instance: ["instructionDiscriminator": setTokenStandardInstructionDiscriminator,
"tokenStandard": args.tokenStandard])

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
            isWritable: true
        ),
        AccountMeta(
            publicKey: accounts.ruleSet,
            isSigner: false,
            isWritable: false
        ),
        AccountMeta(
            publicKey: accounts.collectionDelegateRecord,
            isSigner: false,
            isWritable: true
        ),
        AccountMeta(
            publicKey: accounts.collectionMint,
            isSigner: false,
            isWritable: false
        ),
        AccountMeta(
            publicKey: accounts.collectionMetadata,
            isSigner: false,
            isWritable: true
        ),
        AccountMeta(
            publicKey: accounts.collectionAuthorityRecord,
            isSigner: false,
            isWritable: true
        ),
        AccountMeta(
            publicKey: accounts.collectionUpdateAuthority,
            isSigner: true,
            isWritable: false
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
        ),
        AccountMeta(
            publicKey: accounts.sysvarInstructions,
            isSigner: false,
            isWritable: false
        ),
        AccountMeta(
            publicKey: accounts.authorizationRulesProgram,
            isSigner: false,
            isWritable: false
        ),
        AccountMeta(
            publicKey: accounts.authorizationRules,
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