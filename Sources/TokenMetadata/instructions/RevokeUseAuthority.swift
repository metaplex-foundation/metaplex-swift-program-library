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
 * @category RevokeUseAuthority
 * @category generated
 */
public struct RevokeUseAuthorityInstructionArgs{
    let instructionDiscriminator: [UInt8] /* size: 8 */
    

    public init(
        instructionDiscriminator: [UInt8] /* size: 8 */ = revokeUseAuthorityInstructionDiscriminator
    ) {
        self.instructionDiscriminator = instructionDiscriminator
    }
}
/**
 * @category Instructions
 * @category RevokeUseAuthority
 * @category generated
 */
public let RevokeUseAuthorityStruct = FixableBeetArgsStruct<RevokeUseAuthorityInstructionArgs>(
    fields: [
        ("instructionDiscriminator", Beet.fixedBeet(.init(value: .collection(UniformFixedSizeArray<UInt8>(element: .init(value: .scalar(u8())), len: 8))))),
        
    ],
    description: "RevokeUseAuthorityInstructionArgs"
)
/**
* Accounts required by the _RevokeUseAuthority_ instruction
*
* @property [_writable_] useAuthorityRecord  
* @property [_writable_, **signer**] owner  
* @property [] user  
* @property [_writable_] ownerTokenAccount  
* @property [] mint  
* @property [] metadata   
* @category Instructions
* @category RevokeUseAuthority
* @category generated
*/
public struct RevokeUseAuthorityInstructionAccounts {
    let useAuthorityRecord: PublicKey
    let owner: PublicKey
    let user: PublicKey
    let ownerTokenAccount: PublicKey
    let mint: PublicKey
    let metadata: PublicKey
    let tokenProgram: PublicKey?
    let systemProgram: PublicKey?
    let rent: PublicKey?

    public init(
        useAuthorityRecord: PublicKey,
        owner: PublicKey,
        user: PublicKey,
        ownerTokenAccount: PublicKey,
        mint: PublicKey,
        metadata: PublicKey,
        tokenProgram: PublicKey? = nil,
        systemProgram: PublicKey? = nil,
        rent: PublicKey? = nil
    ) {
        self.useAuthorityRecord = useAuthorityRecord
        self.owner = owner
        self.user = user
        self.ownerTokenAccount = ownerTokenAccount
        self.mint = mint
        self.metadata = metadata
        self.tokenProgram = tokenProgram
        self.systemProgram = systemProgram
        self.rent = rent
    }
}

public let revokeUseAuthorityInstructionDiscriminator = [204, 194, 208, 141, 142, 221, 109, 84] as [UInt8]

/**
* Creates a _RevokeUseAuthority_ instruction.
*
* @param accounts that will be accessed while the instruction is processed
* @category Instructions
* @category RevokeUseAuthority
* @category generated
*/
public func createRevokeUseAuthorityInstruction(accounts: RevokeUseAuthorityInstructionAccounts, 
programId: PublicKey=PublicKey(string: "metaqbxxUerdq28cj1RbAWkYQm3ybzjb6a8bt518x1s")!) -> TransactionInstruction {

    let data = RevokeUseAuthorityStruct.serialize(
            instance: ["instructionDiscriminator": revokeUseAuthorityInstructionDiscriminator ])

    var keys: [AccountMeta] = [
        AccountMeta(
            publicKey: accounts.useAuthorityRecord,
            isSigner: false,
            isWritable: true
        ),
        AccountMeta(
            publicKey: accounts.owner,
            isSigner: true,
            isWritable: true
        ),
        AccountMeta(
            publicKey: accounts.user,
            isSigner: false,
            isWritable: false
        ),
        AccountMeta(
            publicKey: accounts.ownerTokenAccount,
            isSigner: false,
            isWritable: true
        ),
        AccountMeta(
            publicKey: accounts.mint,
            isSigner: false,
            isWritable: false
        ),
        AccountMeta(
            publicKey: accounts.metadata,
            isSigner: false,
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