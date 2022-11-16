import BeetSolana
import Solana
import Beet

public struct ReservationV1 {
    let address: PublicKey
    let spotsRemaining: UInt8
    let totalSpots: UInt8
}

/**
 * @category userTypes
 * @category generated
 */
public let reservationV1Beet = BeetArgsStruct(fields: [
    ("address", (.init(value: .scalar(BeetPublicKey())))),
    ("spotsRemaining", (.init(value: .scalar(u8())))),
    ("totalSpots", (.init(value: .scalar(u8()))))
], description: "ReservationV1")

public let reservationV1BeetWrapped = Beet.fixedBeet(.init(value: .scalar(reservationV1Beet)))