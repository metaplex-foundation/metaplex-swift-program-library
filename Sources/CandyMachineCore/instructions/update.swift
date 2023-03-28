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
 * @category Update
 * @category generated
 */
public struct UpdateInstructionArgs{
    let instructionDiscriminator: [UInt8] /* size: 8 */
    let data: CandyMachineData

    public init(
        instructionDiscriminator: [UInt8] /* size: 8 */ = updateInstructionDiscriminator,
        data: CandyMachineData
    ) {
        self.instructionDiscriminator = instructionDiscriminator
        self.data = data
    }
}
/**
 * @category Instructions
 * @category Update
 * @category generated
 */
public let updateStruct = FixableBeetArgsStruct<UpdateInstructionArgs>(
    fields: [
        ("instructionDiscriminator", Beet.fixedBeet(.init(value: .collection(UniformFixedSizeArray<UInt8>(element: .init(value: .scalar(u8())), len: 8))))),
        ("data", candyMachineDataBeetWrapped)
    ],
    description: "UpdateInstructionArgs"
)
/**
* Accounts required by the _update_ instruction
*
* @property [_writable_] candyMachine  
* @property [**signer**] authority   
* @category Instructions
* @category Update
* @category generated
*/
public struct UpdateInstructionAccounts {
    let candyMachine: PublicKey
    let authority: PublicKey

    public init(
        candyMachine: PublicKey,
        authority: PublicKey
    ) {
        self.candyMachine = candyMachine
        self.authority = authority
    }
}

public let updateInstructionDiscriminator = [219, 200, 88, 176, 158, 63, 253, 127] as [UInt8]

/**
* Creates a _Update_ instruction.
*
* @param accounts that will be accessed while the instruction is processed
  * @param args to provide as instruction data to the program
 * 
* @category Instructions
* @category Update
* @category generated
*/
public func createUpdateInstruction(accounts: UpdateInstructionAccounts, 
args: UpdateInstructionArgs, programId: PublicKey=PublicKey(string: "CndyV3LdqHUfDLmE5naZjVN8rBZz4tqhdefbAnjHG3JR")!) -> TransactionInstruction {

    let data = updateStruct.serialize(
            instance: ["instructionDiscriminator": updateInstructionDiscriminator,
"data": args.data])

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
        )
    ]

    let ix = TransactionInstruction(
                keys: keys,
                programId: programId,
                data: data.0.bytes
            )
    return ix
}