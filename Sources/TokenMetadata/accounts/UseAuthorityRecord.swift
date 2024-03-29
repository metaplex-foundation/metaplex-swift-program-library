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
* Arguments used to create {@link Useauthorityrecord}
* @category Accounts
* @category generated
*/
public protocol UseauthorityrecordArgs {
    
     var key: Key { get }
     var allowedUses: UInt64 { get }
     var bump: UInt8 { get }
}

/**
 * Holds the data for the {@link Useauthorityrecord} Account and provides de/serialization
 * functionality for that data
 *
 * @category Accounts
 * @category generated
 */
public struct Useauthorityrecord: UseauthorityrecordArgs {
  

  public let key: Key
  public let allowedUses: UInt64
  public let bump: UInt8

  /**
   * Creates a {@link Useauthorityrecord} instance from the provided args.
   */
  public static func fromArgs(args: Args) -> Useauthorityrecord {
    return Useauthorityrecord(
        key: args["key"] as! Key,
        allowedUses: args["allowedUses"] as! UInt64,
        bump: args["bump"] as! UInt8
    )
  }
  /**
   * Deserializes the {@link Useauthorityrecord} from the data of the provided {@link web3.AccountInfo}.
   * @returns a tuple of the account data and the offset up to which the buffer was read to obtain it.
   */
  public static func fromAccountInfo(
    accountInfo: Foundation.Data,
    offset:Int=0
  ) -> ( Useauthorityrecord, Int )  {
    return Useauthorityrecord.deserialize(buf: accountInfo, offset: offset)
  }
  /**
   * Retrieves the account info from the provided address and deserializes
   * the {@link Useauthorityrecord} from its data.
   *
   * @throws Error if no account info is found at the address or if deserialization fails
   */
  public static func fromAccountAddress(
    connection: Api,
    address: PublicKey,
    onComplete: @escaping (Result<Useauthorityrecord, Error>) -> Void
  ) {
    connection.getAccountInfo(account: address.base58EncodedString) { result in
        switch result {
            case .success(let pureData):
                if let data = pureData.data?.value {
                    onComplete(.success(Useauthorityrecord.deserialize(buf: data).0))
                } else {
                    onComplete(.failure(SolanaError.nullValue))
                }
            case .failure(let error):
                onComplete(.failure(error))
        }
    }
  }
  /**
   * Deserializes the {@link Useauthorityrecord} from the provided data Buffer.
   * @returns a tuple of the account data and the offset up to which the buffer was read to obtain it.
   */
  public static func deserialize(
    buf: Foundation.Data,
    offset: Int = 0
  ) -> ( Useauthorityrecord, Int ) {
    return useAuthorityRecordBeet.deserialize(buffer: buf, offset: offset)
  }
  /**
   * Serializes the {@link Useauthorityrecord} into a Buffer.
   * @returns a tuple of the created Buffer and the offset up to which the buffer was written to store it.
   */
  public func serialize() -> ( Foundation.Data, Int ) {
    return useAuthorityRecordBeet.serialize(instance: Useauthorityrecord(key : self.key,
        allowedUses : self.allowedUses,
        bump : self.bump))
  }
    /**
  * Returns the byteSize of a {@link Buffer} holding the serialized data of
  * {@link Useauthorityrecord}
  */
  static func byteSize() -> UInt {
      return useAuthorityRecordBeet.byteSize
  }
  /**
  * Fetches the minimum balance needed to exempt an account holding
  * {@link Useauthorityrecord} data from rent
  *
  * @param connection used to retrieve the rent exemption information
  */
  static func getMinimumBalanceForRentExemption(
      connection: Api,
      commitment: Commitment?,
      onComplete: @escaping(Result<UInt64, Error>) -> Void
  ) {
      return connection.getMinimumBalanceForRentExemption(dataLength: UInt64(Useauthorityrecord.byteSize()), commitment: commitment, onComplete: onComplete)
  }
  /**
  * Determines if the provided {@link Buffer} has the correct byte size to
  * hold {@link Useauthorityrecord} data.
  */
  static func hasCorrectByteSize(buf: Foundation.Data, offset:Int=0) -> Bool {
      return buf.bytes.count - offset == Useauthorityrecord.byteSize()
  }
}
  /**
   * @category Accounts
   * @category generated
   */
  public let useAuthorityRecordBeet = BeetStruct(
    fields:[
        
        ("key", keyBeet),
        ("allowedUses", (.init(value: .scalar(u64())))),
        ("bump", (.init(value: .scalar(u8()))))
    ],
    construct: Useauthorityrecord.fromArgs,
    description: "Useauthorityrecord"
)
