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
 * @category UpdatePrimarySaleHappenedViaToken
 * @category generated
 */
public struct UpdatePrimarySaleHappenedViaTokenInstructionArgs{
    let instructionDiscriminator: [UInt8] /* size: 8 */
    

    public init(
        instructionDiscriminator: [UInt8] /* size: 8 */ = updatePrimarySaleHappenedViaTokenInstructionDiscriminator
    ) {
        self.instructionDiscriminator = instructionDiscriminator
    }
}
/**
 * @category Instructions
 * @category UpdatePrimarySaleHappenedViaToken
 * @category generated
 */
public let UpdatePrimarySaleHappenedViaTokenStruct = FixableBeetArgsStruct<UpdatePrimarySaleHappenedViaTokenInstructionArgs>(
    fields: [
        ("instructionDiscriminator", Beet.fixedBeet(.init(value: .collection(UniformFixedSizeArray<UInt8>(element: .init(value: .scalar(u8())), len: 8))))),
        
    ],
    description: "UpdatePrimarySaleHappenedViaTokenInstructionArgs"
)
/**
* Accounts required by the _UpdatePrimarySaleHappenedViaToken_ instruction
*
* @property [_writable_] metadata  
* @property [**signer**] owner  
* @property [] token   
* @category Instructions
* @category UpdatePrimarySaleHappenedViaToken
* @category generated
*/
public struct UpdatePrimarySaleHappenedViaTokenInstructionAccounts {
    let metadata: PublicKey
    let owner: PublicKey
    let token: PublicKey

    public init(
        metadata: PublicKey,
        owner: PublicKey,
        token: PublicKey
    ) {
        self.metadata = metadata
        self.owner = owner
        self.token = token
    }
}

public let updatePrimarySaleHappenedViaTokenInstructionDiscriminator = [172, 129, 173, 210, 222, 129, 243, 98] as [UInt8]

/**
* Creates a _UpdatePrimarySaleHappenedViaToken_ instruction.
*
* @param accounts that will be accessed while the instruction is processed
* @category Instructions
* @category UpdatePrimarySaleHappenedViaToken
* @category generated
*/
public func createUpdatePrimarySaleHappenedViaTokenInstruction(accounts: UpdatePrimarySaleHappenedViaTokenInstructionAccounts, 
programId: PublicKey=PublicKey(string: "metaqbxxUerdq28cj1RbAWkYQm3ybzjb6a8bt518x1s")!) -> TransactionInstruction {

    let data = UpdatePrimarySaleHappenedViaTokenStruct.serialize(
            instance: ["instructionDiscriminator": updatePrimarySaleHappenedViaTokenInstructionDiscriminator ])

    let keys: [AccountMeta] = [
        AccountMeta(
            publicKey: accounts.metadata,
            isSigner: false,
            isWritable: true
        ),
        AccountMeta(
            publicKey: accounts.owner,
            isSigner: true,
            isWritable: false
        ),
        AccountMeta(
            publicKey: accounts.token,
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