/**
 * This code was GENERATED using the solita package.
 * Please DO NOT EDIT THIS FILE, instead rerun solita to update it or write a wrapper to add functionality.
 *
 * See: https://github.com/metaplex-foundation/solita-swift
 */
import Foundation
import Solana
import Beet
import BeetSolana


/**
* Arguments used to create {@link Mastereditionv2}
* @category Accounts
* @category generated
*/
public protocol Mastereditionv2Args {
    
     var key: Key { get }
     var supply: UInt64 { get }
     var maxSupply: COption<UInt64> { get }
}

/**
 * Holds the data for the {@link Mastereditionv2} Account and provides de/serialization
 * functionality for that data
 *
 * @category Accounts
 * @category generated
 */
public struct Mastereditionv2: Mastereditionv2Args {
  

  public let key: Key
  public let supply: UInt64
  public let maxSupply: COption<UInt64>

  /**
   * Creates a {@link Mastereditionv2} instance from the provided args.
   */
  public static func fromArgs(args: Args) -> Mastereditionv2 {
    return Mastereditionv2(
        key: args["key"] as! Key,
        supply: args["supply"] as! UInt64,
        maxSupply: args["maxSupply"] as! COption<UInt64>
    )
  }
  /**
   * Deserializes the {@link Mastereditionv2} from the data of the provided {@link web3.AccountInfo}.
   * @returns a tuple of the account data and the offset up to which the buffer was read to obtain it.
   */
  public static func fromAccountInfo(
    accountInfo: Foundation.Data,
    offset:Int=0
  ) -> ( Mastereditionv2, Int )  {
    return Mastereditionv2.deserialize(buf: accountInfo, offset: offset)
  }
  /**
   * Retrieves the account info from the provided address and deserializes
   * the {@link Mastereditionv2} from its data.
   *
   * @throws Error if no account info is found at the address or if deserialization fails
   */
  public static func fromAccountAddress(
    connection: Api,
    address: PublicKey,
    onComplete: @escaping (Result<Mastereditionv2, Error>) -> Void
  ) {
    connection.getAccountInfo(account: address.base58EncodedString) { result in
        switch result {
            case .success(let pureData):
                if let data = pureData.data?.value {
                    onComplete(.success(Mastereditionv2.deserialize(buf: data).0))
                } else {
                    onComplete(.failure(SolanaError.nullValue))
                }
            case .failure(let error):
                onComplete(.failure(error))
        }
    }
  }
  /**
   * Deserializes the {@link Mastereditionv2} from the provided data Buffer.
   * @returns a tuple of the account data and the offset up to which the buffer was read to obtain it.
   */
  public static func deserialize(
    buf: Foundation.Data,
    offset: Int = 0
  ) -> ( Mastereditionv2, Int ) {
    return masterEditionV2Beet.deserialize(buffer: buf, offset: offset)
  }
  /**
   * Serializes the {@link Mastereditionv2} into a Buffer.
   * @returns a tuple of the created Buffer and the offset up to which the buffer was written to store it.
   */
  public func serialize() -> ( Foundation.Data, Int ) {
    return masterEditionV2Beet.serialize(instance: [
        "key" : self.key,
        "supply" : self.supply,
        "maxSupply" : self.maxSupply
        ])
  }
  /**
* Returns the byteSize of a {@link Buffer} holding the serialized data of
* {@link Mastereditionv2} for the provided args.
*
* @param args need to be provided since the byte size for this account
* depends on them
*/
static func byteSize(args: Mastereditionv2Args) -> UInt64 {
    return UInt64(masterEditionV2Beet.toFixedFromValue(val: args).byteSize)
}
/**
* Fetches the minimum balance needed to exempt an account holding
* {@link Mastereditionv2} data from rent
*
* @param args need to be provided since the byte size for this account
* depends on them
* @param connection used to retrieve the rent exemption information
*/
static func getMinimumBalanceForRentExemption(
    args: Mastereditionv2Args,
    connection: Api,
    commitment: Commitment?,
    onComplete: @escaping(Result<UInt64, Error>) -> Void
) {
    return connection.getMinimumBalanceForRentExemption(dataLength: Mastereditionv2.byteSize(args: args), commitment: commitment, onComplete: onComplete)
}
}
  /**
   * @category Accounts
   * @category generated
   */
  public let masterEditionV2Beet = FixableBeetStruct<Mastereditionv2>(
    fields:[
        
        ("key", keyBeetWrapped),
        ("supply", Beet.fixedBeet(.init(value: .scalar(u64())))),
        ("maxSupply", Beet.fixableBeat(coption(inner: Beet.fixedBeet(.init(value: .scalar(u64()))))))
    ],
    construct: Mastereditionv2.fromArgs,
    description: "Mastereditionv2"
)