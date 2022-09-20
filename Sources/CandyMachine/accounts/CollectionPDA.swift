/**
 * This code was GENERATED using the solita package.
 * Please DO NOT EDIT THIS FILE, instead rerun solita to update it or write a wrapper to add functionality.
 *
 * See: https://github.com/metaplex-foundation/solita-swift
 */
import Foundation
import BeetSolana
import Beet
import Solana


/**
* Arguments used to create {@link Collectionpda}
* @category Accounts
* @category generated
*/
protocol CollectionpdaArgs {
    
    var mint: PublicKey { get }
    var candyMachine: PublicKey { get }
}


/**
 * Holds the data for the {@link Collectionpda} Account and provides de/serialization
 * functionality for that data
 *
 * @category Accounts
 * @category generated
 */
public struct Collectionpda: CollectionpdaArgs {
  let mint: PublicKey
  let candyMachine: PublicKey

  /**
   * Creates a {@link Collectionpda} instance from the provided args.
   */
  public static func fromArgs(args: Args) -> Collectionpda {
    return Collectionpda(
        mint: args["mint"] as! PublicKey,
        candyMachine: args["candyMachine"] as! PublicKey
    )
  }
  /**
   * Deserializes the {@link Collectionpda} from the data of the provided {@link web3.AccountInfo}.
   * @returns a tuple of the account data and the offset up to which the buffer was read to obtain it.
   */
  public static func fromAccountInfo(
    accountInfo: Foundation.Data,
    offset:Int=0
  ) -> ( Collectionpda, Int )  {
    return Collectionpda.deserialize(buf: accountInfo, offset: offset)
  }
  /**
   * Retrieves the account info from the provided address and deserializes
   * the {@link Collectionpda} from its data.
   *
   * @throws Error if no account info is found at the address or if deserialization fails
   */
  public static func fromAccountAddress(
    connection: Api,
    address: PublicKey,
    onComplete: @escaping (Result<Collectionpda, Error>) -> Void
  ) {
    connection.getAccountInfo(account: address.base58EncodedString) { result in
        switch result {
            case .success(let pureData):
                if let data = pureData.data?.value {
                    onComplete(.success(Collectionpda.deserialize(buf: data).0))
                } else {
                    onComplete(.failure(SolanaError.nullValue))
                }
            case .failure(let error):
                onComplete(.failure(error))
        }
    }
  }
  /**
   * Deserializes the {@link Collectionpda} from the provided data Buffer.
   * @returns a tuple of the account data and the offset up to which the buffer was read to obtain it.
   */
  public static func deserialize(
    buf: Foundation.Data,
    offset: Int = 0
  ) -> ( Collectionpda, Int ) {
    return collectionPDABeet.deserialize(buffer: buf, offset: offset)
  }
  /**
   * Serializes the {@link Collectionpda} into a Buffer.
   * @returns a tuple of the created Buffer and the offset up to which the buffer was written to store it.
   */
  public func serialize() -> ( Foundation.Data, Int ) {
    return collectionPDABeet.serialize(instance: Collectionpda(mint : self.mint,
        candyMachine : self.candyMachine))
  }
    /**
  * Returns the byteSize of a {@link Buffer} holding the serialized data of
  * {@link Collectionpda}
  */
  static func byteSize() -> UInt {
      return collectionPDABeet.byteSize
  }
  /**
  * Fetches the minimum balance needed to exempt an account holding
  * {@link Collectionpda} data from rent
  *
  * @param connection used to retrieve the rent exemption information
  */
  static func getMinimumBalanceForRentExemption(
      connection: Api,
      commitment: Commitment?,
      onComplete: @escaping(Result<UInt64, Error>) -> Void
  ) {
      return connection.getMinimumBalanceForRentExemption(dataLength: UInt64(Collectionpda.byteSize()), commitment: commitment, onComplete: onComplete)
  }
  /**
  * Determines if the provided {@link Buffer} has the correct byte size to
  * hold {@link Collectionpda} data.
  */
  static func hasCorrectByteSize(buf: Foundation.Data, offset:Int=0) -> Bool {
      return buf.bytes.count - offset == Collectionpda.byteSize()
  }
}
  /**
   * @category Accounts
   * @category generated
   */
  public let collectionPDABeet = BeetStruct(
    fields:[
        
        ("mint", (.init(value: .scalar(BeetPublicKey())))),
        ("candyMachine", (.init(value: .scalar(BeetPublicKey()))))
    ],
    construct: Collectionpda.fromArgs,
    description: "Collectionpda"
)
