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
 * @category UpdateCandyMachine
 * @category generated
 */
public struct UpdateCandyMachineInstructionArgs{
    let instructionDiscriminator: [UInt8] /* size: 8 */
    let data: CandyMachineData

    public init(
        instructionDiscriminator: [UInt8] /* size: 8 */ = updateCandyMachineInstructionDiscriminator,
        data: CandyMachineData
    ) {
        self.instructionDiscriminator = instructionDiscriminator
        self.data = data
    }
}
/**
 * @category Instructions
 * @category UpdateCandyMachine
 * @category generated
 */
public let updateCandyMachineStruct = FixableBeetArgsStruct<UpdateCandyMachineInstructionArgs>(
    fields: [
        ("instructionDiscriminator", Beet.fixedBeet(.init(value: .collection(UniformFixedSizeArray<UInt8>(element: .init(value: .scalar(u8())), len: 8))))),
        ("data", candyMachineDataBeetWrapped)
    ],
    description: "UpdateCandyMachineInstructionArgs"
)
/**
* Accounts required by the _updateCandyMachine_ instruction
*
* @property [_writable_] candyMachine  
* @property [**signer**] authority  
* @property [] wallet   
* @category Instructions
* @category UpdateCandyMachine
* @category generated
*/
public struct UpdateCandyMachineInstructionAccounts {
    let candyMachine: PublicKey
    let authority: PublicKey
    let wallet: PublicKey

    public init(
        candyMachine: PublicKey,
        authority: PublicKey,
        wallet: PublicKey
    ) {
        self.candyMachine = candyMachine
        self.authority = authority
        self.wallet = wallet
    }
}

public let updateCandyMachineInstructionDiscriminator = [243, 251, 124, 156, 211, 211, 118, 239] as [UInt8]

/**
* Creates a _UpdateCandyMachine_ instruction.
*
* @param accounts that will be accessed while the instruction is processed
  * @param args to provide as instruction data to the program
 * 
* @category Instructions
* @category UpdateCandyMachine
* @category generated
*/
public func createUpdateCandyMachineInstruction(accounts: UpdateCandyMachineInstructionAccounts, 
args: UpdateCandyMachineInstructionArgs, programId: PublicKey=PublicKey(string: "cndy3Z4yapfJBmL3ShUp5exZKqR3z33thTzeNMm2gRZ")!) -> TransactionInstruction {

    let data = updateCandyMachineStruct.serialize(
            instance: ["instructionDiscriminator": updateCandyMachineInstructionDiscriminator,
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
        ),
        AccountMeta(
            publicKey: accounts.wallet,
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