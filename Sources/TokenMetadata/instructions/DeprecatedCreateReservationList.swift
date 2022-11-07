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
 * @category DeprecatedCreateReservationList
 * @category generated
 */
public struct DeprecatedCreateReservationListInstructionArgs{
    let instructionDiscriminator: [UInt8] /* size: 8 */
    

    public init(
        instructionDiscriminator: [UInt8] /* size: 8 */ = deprecatedCreateReservationListInstructionDiscriminator
    ) {
        self.instructionDiscriminator = instructionDiscriminator
    }
}
/**
 * @category Instructions
 * @category DeprecatedCreateReservationList
 * @category generated
 */
public let DeprecatedCreateReservationListStruct = FixableBeetArgsStruct<DeprecatedCreateReservationListInstructionArgs>(
    fields: [
        ("instructionDiscriminator", Beet.fixedBeet(.init(value: .collection(UniformFixedSizeArray<UInt8>(element: .init(value: .scalar(u8())), len: 8))))),
        
    ],
    description: "DeprecatedCreateReservationListInstructionArgs"
)
/**
* Accounts required by the _DeprecatedCreateReservationList_ instruction
*
* @property [_writable_] reservationList  
* @property [**signer**] payer  
* @property [**signer**] updateAuthority  
* @property [] masterEdition  
* @property [] resource  
* @property [] metadata   
* @category Instructions
* @category DeprecatedCreateReservationList
* @category generated
*/
public struct DeprecatedCreateReservationListInstructionAccounts {
    let reservationList: PublicKey
    let payer: PublicKey
    let updateAuthority: PublicKey
    let masterEdition: PublicKey
    let resource: PublicKey
    let metadata: PublicKey
    let systemProgram: PublicKey?
    let rent: PublicKey?

    public init(
        reservationList: PublicKey,
        payer: PublicKey,
        updateAuthority: PublicKey,
        masterEdition: PublicKey,
        resource: PublicKey,
        metadata: PublicKey,
        systemProgram: PublicKey? = nil,
        rent: PublicKey? = nil
    ) {
        self.reservationList = reservationList
        self.payer = payer
        self.updateAuthority = updateAuthority
        self.masterEdition = masterEdition
        self.resource = resource
        self.metadata = metadata
        self.systemProgram = systemProgram
        self.rent = rent
    }
}

public let deprecatedCreateReservationListInstructionDiscriminator = [171, 227, 161, 158, 1, 176, 105, 72] as [UInt8]

/**
* Creates a _DeprecatedCreateReservationList_ instruction.
*
* @param accounts that will be accessed while the instruction is processed
* @category Instructions
* @category DeprecatedCreateReservationList
* @category generated
*/
public func createDeprecatedCreateReservationListInstruction(accounts: DeprecatedCreateReservationListInstructionAccounts, 
programId: PublicKey=PublicKey(string: "metaqbxxUerdq28cj1RbAWkYQm3ybzjb6a8bt518x1s")!) -> TransactionInstruction {

    let data = DeprecatedCreateReservationListStruct.serialize(
            instance: ["instructionDiscriminator": deprecatedCreateReservationListInstructionDiscriminator ])

    let keys: [AccountMeta] = [
        AccountMeta(
            publicKey: accounts.reservationList,
            isSigner: false,
            isWritable: true
        ),
        AccountMeta(
            publicKey: accounts.payer,
            isSigner: true,
            isWritable: false
        ),
        AccountMeta(
            publicKey: accounts.updateAuthority,
            isSigner: true,
            isWritable: false
        ),
        AccountMeta(
            publicKey: accounts.masterEdition,
            isSigner: false,
            isWritable: false
        ),
        AccountMeta(
            publicKey: accounts.resource,
            isSigner: false,
            isWritable: false
        ),
        AccountMeta(
            publicKey: accounts.metadata,
            isSigner: false,
            isWritable: false
        ),
        AccountMeta(
            publicKey: accounts.systemProgram ?? PublicKey.systemProgramId,
            isSigner: false,
            isWritable: false
        ),
        AccountMeta(
            publicKey: accounts.rent ?? PublicKey.sysvarRent,
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