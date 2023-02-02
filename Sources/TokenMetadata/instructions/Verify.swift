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
 * @category Verify
 * @category generated
 */
public struct VerifyInstructionArgs{
    let instructionDiscriminator: [UInt8] /* size: 8 */
    let verifyArgs: VerifyArgs

    public init(
        instructionDiscriminator: [UInt8] /* size: 8 */ = verifyInstructionDiscriminator,
        verifyArgs: VerifyArgs
    ) {
        self.instructionDiscriminator = instructionDiscriminator
        self.verifyArgs = verifyArgs
    }
}
/**
 * @category Instructions
 * @category Verify
 * @category generated
 */
public let VerifyStruct = FixableBeetArgsStruct<VerifyInstructionArgs>(
    fields: [
        ("instructionDiscriminator", Beet.fixedBeet(.init(value: .collection(UniformFixedSizeArray<UInt8>(element: .init(value: .scalar(u8())), len: 8))))),
        ("verifyArgs", verifyArgsBeetWrapped)
    ],
    description: "VerifyInstructionArgs"
)
/**
* Accounts required by the _Verify_ instruction
*
* @property [_writable_] metadata  
* @property [_writable_, **signer**] collectionAuthority  
* @property [_writable_, **signer**] payer  
* @property [] authorizationRules (optional)  
* @property [] authorizationRulesProgram (optional)   
* @category Instructions
* @category Verify
* @category generated
*/
public struct VerifyInstructionAccounts {
    let metadata: PublicKey
    let collectionAuthority: PublicKey
    let payer: PublicKey
    let authorizationRules: PublicKey?
    let authorizationRulesProgram: PublicKey?

    public init(
        metadata: PublicKey,
        collectionAuthority: PublicKey,
        payer: PublicKey,
        authorizationRules: PublicKey? = nil,
        authorizationRulesProgram: PublicKey? = nil
    ) {
        self.metadata = metadata
        self.collectionAuthority = collectionAuthority
        self.payer = payer
        self.authorizationRules = authorizationRules
        self.authorizationRulesProgram = authorizationRulesProgram
    }
}

public let verifyInstructionDiscriminator = [133, 161, 141, 48, 120, 198, 88, 150] as [UInt8]

/**
* Creates a _Verify_ instruction.
*
* @param accounts that will be accessed while the instruction is processed
  * @param args to provide as instruction data to the program
 * 
* @category Instructions
* @category Verify
* @category generated
*/
public func createVerifyInstruction(accounts: VerifyInstructionAccounts, 
args: VerifyInstructionArgs, programId: PublicKey=PublicKey(string: "metaqbxxUerdq28cj1RbAWkYQm3ybzjb6a8bt518x1s")!) -> TransactionInstruction {

    let data = VerifyStruct.serialize(
            instance: ["instructionDiscriminator": verifyInstructionDiscriminator,
"verifyArgs": args.verifyArgs])

    var keys: [AccountMeta] = [
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
        )
    ]
    if accounts.authorizationRules != nil {
        
        keys.append(
            AccountMeta(
                publicKey: accounts.authorizationRules!,
                isSigner: false,
                isWritable: false
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
    if accounts.authorizationRulesProgram != nil {
        if accounts.authorizationRules == nil { fatalError("When providing authorizationRulesProgram accounts.authorizationRules need(s) to be provided as well.") }
        keys.append(
            AccountMeta(
                publicKey: accounts.authorizationRulesProgram!,
                isSigner: false,
                isWritable: false
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