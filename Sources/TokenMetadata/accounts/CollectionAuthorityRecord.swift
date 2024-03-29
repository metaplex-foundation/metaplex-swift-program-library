/**
 * This code was GENERATED using the solita package.
 * Please DO NOT EDIT THIS FILE, instead rerun solita to update it or write a wrapper to add functionality.
 *
 * See: https://github.com/metaplex-foundation/solita-swift
 */
import Foundation
import BeetSolana
import Solana
import Beet


/**
* Arguments used to create {@link Collectionauthorityrecord}
* @category Accounts
* @category generated
*/
public protocol CollectionauthorityrecordArgs {
    
     var key: Key { get }
     var bump: UInt8 { get }
     var updateAuthority: COption<PublicKey> { get }
}

/**
 * Holds the data for the {@link Collectionauthorityrecord} Account and provides de/serialization
 * functionality for that data
 *
 * @category Accounts
 * @category generated
 */
public struct Collectionauthorityrecord: CollectionauthorityrecordArgs {
  

  public let key: Key
  public let bump: UInt8
  public let updateAuthority: COption<PublicKey>

  /**
   * Creates a {@link Collectionauthorityrecord} instance from the provided args.
   */
  public static func fromArgs(args: Args) -> Collectionauthorityrecord {
    return Collectionauthorityrecord(
        key: args["key"] as! Key,
        bump: args["bump"] as! UInt8,
        updateAuthority: args["updateAuthority"] as! COption<PublicKey>
    )
  }
  /**
   * Deserializes the {@link Collectionauthorityrecord} from the data of the provided {@link web3.AccountInfo}.
   * @returns a tuple of the account data and the offset up to which the buffer was read to obtain it.
   */
  public static func fromAccountInfo(
    accountInfo: Foundation.Data,
    offset:Int=0
  ) -> ( Collectionauthorityrecord, Int )  {
    return Collectionauthorityrecord.deserialize(buf: accountInfo, offset: offset)
  }
  /**
   * Retrieves the account info from the provided address and deserializes
   * the {@link Collectionauthorityrecord} from its data.
   *
   * @throws Error if no account info is found at the address or if deserialization fails
   */
  public static func fromAccountAddress(
    connection: Api,
    address: PublicKey,
    onComplete: @escaping (Result<Collectionauthorityrecord, Error>) -> Void
  ) {
    connection.getAccountInfo(account: address.base58EncodedString) { result in
        switch result {
            case .success(let pureData):
                if let data = pureData.data?.value {
                    onComplete(.success(Collectionauthorityrecord.deserialize(buf: data).0))
                } else {
                    onComplete(.failure(SolanaError.nullValue))
                }
            case .failure(let error):
                onComplete(.failure(error))
        }
    }
  }
  /**
   * Deserializes the {@link Collectionauthorityrecord} from the provided data Buffer.
   * @returns a tuple of the account data and the offset up to which the buffer was read to obtain it.
   */
  public static func deserialize(
    buf: Foundation.Data,
    offset: Int = 0
  ) -> ( Collectionauthorityrecord, Int ) {
    return collectionAuthorityRecordBeet.deserialize(buffer: buf, offset: offset)
  }
  /**
   * Serializes the {@link Collectionauthorityrecord} into a Buffer.
   * @returns a tuple of the created Buffer and the offset up to which the buffer was written to store it.
   */
  public func serialize() -> ( Foundation.Data, Int ) {
    return collectionAuthorityRecordBeet.serialize(instance: [
        "key" : self.key,
        "bump" : self.bump,
        "updateAuthority" : self.updateAuthority
        ])
  }
  /**
* Returns the byteSize of a {@link Buffer} holding the serialized data of
* {@link Collectionauthorityrecord} for the provided args.
*
* @param args need to be provided since the byte size for this account
* depends on them
*/
static func byteSize(args: CollectionauthorityrecordArgs) -> UInt64 {
    return UInt64(collectionAuthorityRecordBeet.toFixedFromValue(val: args).byteSize)
}
/**
* Fetches the minimum balance needed to exempt an account holding
* {@link Collectionauthorityrecord} data from rent
*
* @param args need to be provided since the byte size for this account
* depends on them
* @param connection used to retrieve the rent exemption information
*/
static func getMinimumBalanceForRentExemption(
    args: CollectionauthorityrecordArgs,
    connection: Api,
    commitment: Commitment?,
    onComplete: @escaping(Result<UInt64, Error>) -> Void
) {
    return connection.getMinimumBalanceForRentExemption(dataLength: Collectionauthorityrecord.byteSize(args: args), commitment: commitment, onComplete: onComplete)
}
}
  /**
   * @category Accounts
   * @category generated
   */
  public let collectionAuthorityRecordBeet = FixableBeetStruct<Collectionauthorityrecord>(
    fields:[
        
        ("key", keyBeetWrapped),
        ("bump", Beet.fixedBeet(.init(value: .scalar(u8())))),
        ("updateAuthority", Beet.fixableBeat(coption(inner: Beet.fixedBeet(.init(value: .scalar(BeetPublicKey()))))))
    ],
    construct: Collectionauthorityrecord.fromArgs,
    description: "Collectionauthorityrecord"
)
