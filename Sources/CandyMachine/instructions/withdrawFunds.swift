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
 * @category WithdrawFunds
 * @category generated
 */
public struct WithdrawFundsInstructionArgs{
    let instructionDiscriminator: [UInt8] /* size: 8 */
    

    public init(
        instructionDiscriminator: [UInt8] /* size: 8 */ = withdrawFundsInstructionDiscriminator
    ) {
        self.instructionDiscriminator = instructionDiscriminator
    }
}
/**
 * @category Instructions
 * @category WithdrawFunds
 * @category generated
 */
public let withdrawFundsStruct = FixableBeetArgsStruct<WithdrawFundsInstructionArgs>(
    fields: [
        ("instructionDiscriminator", Beet.fixedBeet(.init(value: .collection(UniformFixedSizeArray<UInt8>(element: .init(value: .scalar(u8())), len: 8))))),
        
    ],
    description: "WithdrawFundsInstructionArgs"
)
/**
* Accounts required by the _withdrawFunds_ instruction
*
* @property [_writable_] candyMachine  
* @property [**signer**] authority   
* @category Instructions
* @category WithdrawFunds
* @category generated
*/
public struct WithdrawFundsInstructionAccounts {
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

public let withdrawFundsInstructionDiscriminator = [241, 36, 29, 111, 208, 31, 104, 217] as [UInt8]

/**
* Creates a _WithdrawFunds_ instruction.
*
* @param accounts that will be accessed while the instruction is processed
* @category Instructions
* @category WithdrawFunds
* @category generated
*/
public func createWithdrawFundsInstruction(accounts: WithdrawFundsInstructionAccounts, 
programId: PublicKey=PublicKey(string: "")!) -> TransactionInstruction {

    let data = withdrawFundsStruct.serialize(
            instance: ["instructionDiscriminator": withdrawFundsInstructionDiscriminator ])

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