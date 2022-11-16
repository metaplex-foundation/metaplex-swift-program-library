import BeetSolana
import Solana
import Beet

public struct Reservation {
    let address: PublicKey
    let spotsRemaining: UInt64
    let totalSpots: UInt64
}

/**
 * @category userTypes
 * @category generated
 */
public let reservationBeet = BeetArgsStruct(fields: [
    ("address", (.init(value: .scalar(BeetPublicKey())))),
    ("spotsRemaining", (.init(value: .scalar(u64())))),
    ("totalSpots", (.init(value: .scalar(u64()))))
], description: "Reservation")

public let reservationBeetWrapped = Beet.fixedBeet(.init(value: .scalar(reservationBeet)))