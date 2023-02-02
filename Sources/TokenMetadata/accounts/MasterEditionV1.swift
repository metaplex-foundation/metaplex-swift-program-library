/**
 * This code was GENERATED using the solita package.
 * Please DO NOT EDIT THIS FILE, instead rerun solita to update it or write a wrapper to add functionality.
 *
 * See: https://github.com/metaplex-foundation/solita-swift
 */
import Foundation
import Beet
import BeetSolana
import Solana


/**
* Arguments used to create {@link Mastereditionv1}
* @category Accounts
* @category generated
*/
public protocol Mastereditionv1Args {
    
     var key: Key { get }
     var supply: UInt64 { get }
     var maxSupply: COption<UInt64> { get }
     var printingMint: PublicKey { get }
     var oneTimePrintingAuthorizationMint: PublicKey { get }
}

/**
 * Holds the data for the {@link Mastereditionv1} Account and provides de/serialization
 * functionality for that data
 *
 * @category Accounts
 * @category generated
 */
public struct Mastereditionv1: Mastereditionv1Args {
  

  public let key: Key
  public let supply: UInt64
  public let maxSupply: COption<UInt64>
  public let printingMint: PublicKey
  public let oneTimePrintingAuthorizationMint: PublicKey

  /**
   * Creates a {@link Mastereditionv1} instance from the provided args.
   */
  public static func fromArgs(args: Args) -> Mastereditionv1 {
    return Mastereditionv1(
        key: args["key"] as! Key,
        supply: args["supply"] as! UInt64,
        maxSupply: args["maxSupply"] as! COption<UInt64>,
        printingMint: args["printingMint"] as! PublicKey,
        oneTimePrintingAuthorizationMint: args["oneTimePrintingAuthorizationMint"] as! PublicKey
    )
  }
  /**
   * Deserializes the {@link Mastereditionv1} from the data of the provided {@link web3.AccountInfo}.
   * @returns a tuple of the account data and the offset up to which the buffer was read to obtain it.
   */
  public static func fromAccountInfo(
    accountInfo: Foundation.Data,
    offset:Int=0
  ) -> ( Mastereditionv1, Int )  {
    return Mastereditionv1.deserialize(buf: accountInfo, offset: offset)
  }
  /**
   * Retrieves the account info from the provided address and deserializes
   * the {@link Mastereditionv1} from its data.
   *
   * @throws Error if no account info is found at the address or if deserialization fails
   */
  public static func fromAccountAddress(
    connection: Api,
    address: PublicKey,
    onComplete: @escaping (Result<Mastereditionv1, Error>) -> Void
  ) {
    connection.getAccountInfo(account: address.base58EncodedString) { result in
        switch result {
            case .success(let pureData):
                if let data = pureData.data?.value {
                    onComplete(.success(Mastereditionv1.deserialize(buf: data).0))
                } else {
                    onComplete(.failure(SolanaError.nullValue))
                }
            case .failure(let error):
                onComplete(.failure(error))
        }
    }
  }
  /**
   * Deserializes the {@link Mastereditionv1} from the provided data Buffer.
   * @returns a tuple of the account data and the offset up to which the buffer was read to obtain it.
   */
  public static func deserialize(
    buf: Foundation.Data,
    offset: Int = 0
  ) -> ( Mastereditionv1, Int ) {
    return masterEditionV1Beet.deserialize(buffer: buf, offset: offset)
  }
  /**
   * Serializes the {@link Mastereditionv1} into a Buffer.
   * @returns a tuple of the created Buffer and the offset up to which the buffer was written to store it.
   */
  public func serialize() -> ( Foundation.Data, Int ) {
    return masterEditionV1Beet.serialize(instance: [
        "key" : self.key,
        "supply" : self.supply,
        "maxSupply" : self.maxSupply,
        "printingMint" : self.printingMint,
        "oneTimePrintingAuthorizationMint" : self.oneTimePrintingAuthorizationMint
        ])
  }
  /**
* Returns the byteSize of a {@link Buffer} holding the serialized data of
* {@link Mastereditionv1} for the provided args.
*
* @param args need to be provided since the byte size for this account
* depends on them
*/
static func byteSize(args: Mastereditionv1Args) -> UInt64 {
    return UInt64(masterEditionV1Beet.toFixedFromValue(val: args).byteSize)
}
/**
* Fetches the minimum balance needed to exempt an account holding
* {@link Mastereditionv1} data from rent
*
* @param args need to be provided since the byte size for this account
* depends on them
* @param connection used to retrieve the rent exemption information
*/
static func getMinimumBalanceForRentExemption(
    args: Mastereditionv1Args,
    connection: Api,
    commitment: Commitment?,
    onComplete: @escaping(Result<UInt64, Error>) -> Void
) {
    return connection.getMinimumBalanceForRentExemption(dataLength: Mastereditionv1.byteSize(args: args), commitment: commitment, onComplete: onComplete)
}
}
  /**
   * @category Accounts
   * @category generated
   */
  public let masterEditionV1Beet = FixableBeetStruct<Mastereditionv1>(
    fields:[
        
        ("key", keyBeetWrapped),
        ("supply", Beet.fixedBeet(.init(value: .scalar(u64())))),
        ("maxSupply", Beet.fixableBeat(coption(inner: Beet.fixedBeet(.init(value: .scalar(u64())))))),
        ("printingMint", Beet.fixedBeet(.init(value: .scalar(BeetPublicKey())))),
        ("oneTimePrintingAuthorizationMint", Beet.fixedBeet(.init(value: .scalar(BeetPublicKey()))))
    ],
    construct: Mastereditionv1.fromArgs,
    description: "Mastereditionv1"
)
