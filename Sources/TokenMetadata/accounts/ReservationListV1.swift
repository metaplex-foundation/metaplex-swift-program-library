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
* Arguments used to create {@link Reservationlistv1}
* @category Accounts
* @category generated
*/
public protocol Reservationlistv1Args {
    var reservationListV1Discriminator: [UInt8] { get }
     var key: Key { get }
     var masterEdition: PublicKey { get }
     var supplySnapshot: COption<UInt64> { get }
     var reservations: [ReservationV1] { get }
}

/**
 * Holds the data for the {@link Reservationlistv1} Account and provides de/serialization
 * functionality for that data
 *
 * @category Accounts
 * @category generated
 */
public struct Reservationlistv1: Reservationlistv1Args {
  public static let reservationListV1Discriminator = [239, 79, 12, 206, 116, 153, 1, 140] as [UInt8]

  public let reservationListV1Discriminator: [UInt8]
  public let key: Key
  public let masterEdition: PublicKey
  public let supplySnapshot: COption<UInt64>
  public let reservations: [ReservationV1]

  /**
   * Creates a {@link Reservationlistv1} instance from the provided args.
   */
  public static func fromArgs(args: Args) -> Reservationlistv1 {
    return Reservationlistv1(
        reservationListV1Discriminator: args["accountDiscriminator"] as! [UInt8],
        key: args["key"] as! Key,
        masterEdition: args["masterEdition"] as! PublicKey,
        supplySnapshot: args["supplySnapshot"] as! COption<UInt64>,
        reservations: args["reservations"] as! [ReservationV1]
    )
  }
  /**
   * Deserializes the {@link Reservationlistv1} from the data of the provided {@link web3.AccountInfo}.
   * @returns a tuple of the account data and the offset up to which the buffer was read to obtain it.
   */
  public static func fromAccountInfo(
    accountInfo: Foundation.Data,
    offset:Int=0
  ) -> ( Reservationlistv1, Int )  {
    return Reservationlistv1.deserialize(buf: accountInfo, offset: offset)
  }
  /**
   * Retrieves the account info from the provided address and deserializes
   * the {@link Reservationlistv1} from its data.
   *
   * @throws Error if no account info is found at the address or if deserialization fails
   */
  public static func fromAccountAddress(
    connection: Api,
    address: PublicKey,
    onComplete: @escaping (Result<Reservationlistv1, Error>) -> Void
  ) {
    connection.getAccountInfo(account: address.base58EncodedString) { result in
        switch result {
            case .success(let pureData):
                if let data = pureData.data?.value {
                    onComplete(.success(Reservationlistv1.deserialize(buf: data).0))
                } else {
                    onComplete(.failure(SolanaError.nullValue))
                }
            case .failure(let error):
                onComplete(.failure(error))
        }
    }
  }
  /**
   * Deserializes the {@link Reservationlistv1} from the provided data Buffer.
   * @returns a tuple of the account data and the offset up to which the buffer was read to obtain it.
   */
  public static func deserialize(
    buf: Foundation.Data,
    offset: Int = 0
  ) -> ( Reservationlistv1, Int ) {
    return reservationListV1Beet.deserialize(buffer: buf, offset: offset)
  }
  /**
   * Serializes the {@link Reservationlistv1} into a Buffer.
   * @returns a tuple of the created Buffer and the offset up to which the buffer was written to store it.
   */
  public func serialize() -> ( Foundation.Data, Int ) {
    return reservationListV1Beet.serialize(instance: [
        "reservationListV1Discriminator" : self.reservationListV1Discriminator,
        "key" : self.key,
        "masterEdition" : self.masterEdition,
        "supplySnapshot" : self.supplySnapshot,
        "reservations" : self.reservations
        ])
  }
  /**
* Returns the byteSize of a {@link Buffer} holding the serialized data of
* {@link Reservationlistv1} for the provided args.
*
* @param args need to be provided since the byte size for this account
* depends on them
*/
static func byteSize(args: Reservationlistv1Args) -> UInt64 {
    return UInt64(reservationListV1Beet.toFixedFromValue(val: args).byteSize)
}
/**
* Fetches the minimum balance needed to exempt an account holding
* {@link Reservationlistv1} data from rent
*
* @param args need to be provided since the byte size for this account
* depends on them
* @param connection used to retrieve the rent exemption information
*/
static func getMinimumBalanceForRentExemption(
    args: Reservationlistv1Args,
    connection: Api,
    commitment: Commitment?,
    onComplete: @escaping(Result<UInt64, Error>) -> Void
) {
    return connection.getMinimumBalanceForRentExemption(dataLength: Reservationlistv1.byteSize(args: args), commitment: commitment, onComplete: onComplete)
}
}
  /**
   * @category Accounts
   * @category generated
   */
  public let reservationListV1Beet = FixableBeetStruct<Reservationlistv1>(
    fields:[
        ("accountDiscriminator", Beet.fixedBeet(.init(value: .collection(UniformFixedSizeArray<UInt8>(element: .init(value: .scalar(u8())), len: 8))))),
        ("key", keyBeetWrapped),
        ("masterEdition", Beet.fixedBeet(.init(value: .scalar(BeetPublicKey())))),
        ("supplySnapshot", Beet.fixableBeat(coption(inner: Beet.fixedBeet(.init(value: .scalar(u64())))))),
        ("reservations", Beet.fixableBeat(array(element: reservationV1BeetWrapped)))
    ],
    construct: Reservationlistv1.fromArgs,
    description: "Reservationlistv1"
)
