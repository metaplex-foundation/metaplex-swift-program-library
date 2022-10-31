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
 * @category PrintPurchaseReceipt
 * @category generated
 */
public struct PrintPurchaseReceiptInstructionArgs{
    let instructionDiscriminator: [UInt8] /* size: 8 */
    let purchaseReceiptBump: UInt8

    public init(
        instructionDiscriminator: [UInt8] /* size: 8 */ = printPurchaseReceiptInstructionDiscriminator,
        purchaseReceiptBump: UInt8
    ) {
        self.instructionDiscriminator = instructionDiscriminator
        self.purchaseReceiptBump = purchaseReceiptBump
    }
}
/**
 * @category Instructions
 * @category PrintPurchaseReceipt
 * @category generated
 */
public let printPurchaseReceiptStruct = FixableBeetArgsStruct<PrintPurchaseReceiptInstructionArgs>(
    fields: [
        ("instructionDiscriminator", Beet.fixedBeet(.init(value: .collection(UniformFixedSizeArray<UInt8>(element: .init(value: .scalar(u8())), len: 8))))),
        ("purchaseReceiptBump", Beet.fixedBeet(.init(value: .scalar(u8()))))
    ],
    description: "PrintPurchaseReceiptInstructionArgs"
)
/**
* Accounts required by the _printPurchaseReceipt_ instruction
*
* @property [_writable_] purchaseReceipt  
* @property [_writable_] listingReceipt  
* @property [_writable_] bidReceipt  
* @property [_writable_, **signer**] bookkeeper  
* @property [] instruction   
* @category Instructions
* @category PrintPurchaseReceipt
* @category generated
*/
public struct PrintPurchaseReceiptInstructionAccounts {
    let purchaseReceipt: PublicKey
    let listingReceipt: PublicKey
    let bidReceipt: PublicKey
    let bookkeeper: PublicKey
    let systemProgram: PublicKey?
    let rent: PublicKey?
    let instruction: PublicKey

    public init(
        purchaseReceipt: PublicKey,
        listingReceipt: PublicKey,
        bidReceipt: PublicKey,
        bookkeeper: PublicKey,
        systemProgram: PublicKey? = nil,
        rent: PublicKey? = nil,
        instruction: PublicKey
    ) {
        self.purchaseReceipt = purchaseReceipt
        self.listingReceipt = listingReceipt
        self.bidReceipt = bidReceipt
        self.bookkeeper = bookkeeper
        self.systemProgram = systemProgram
        self.rent = rent
        self.instruction = instruction
    }
}

public let printPurchaseReceiptInstructionDiscriminator = [227, 154, 251, 7, 180, 56, 100, 143] as [UInt8]

/**
* Creates a _PrintPurchaseReceipt_ instruction.
*
* @param accounts that will be accessed while the instruction is processed
  * @param args to provide as instruction data to the program
 * 
* @category Instructions
* @category PrintPurchaseReceipt
* @category generated
*/
public func createPrintPurchaseReceiptInstruction(accounts: PrintPurchaseReceiptInstructionAccounts, 
args: PrintPurchaseReceiptInstructionArgs, programId: PublicKey=PublicKey(string: "hausS13jsjafwWwGqZTUQRmWyvyxn9EQpqMwV1PBBmk")!) -> TransactionInstruction {

    let data = printPurchaseReceiptStruct.serialize(
            instance: ["instructionDiscriminator": printPurchaseReceiptInstructionDiscriminator,
"purchaseReceiptBump": args.purchaseReceiptBump])

    let keys: [AccountMeta] = [
        AccountMeta(
            publicKey: accounts.purchaseReceipt,
            isSigner: false,
            isWritable: true
        ),
        AccountMeta(
            publicKey: accounts.listingReceipt,
            isSigner: false,
            isWritable: true
        ),
        AccountMeta(
            publicKey: accounts.bidReceipt,
            isSigner: false,
            isWritable: true
        ),
        AccountMeta(
            publicKey: accounts.bookkeeper,
            isSigner: true,
            isWritable: true
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
        ),
        AccountMeta(
            publicKey: accounts.instruction,
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