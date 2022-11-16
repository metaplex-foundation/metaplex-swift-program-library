import Beet

public struct SetReservationListArgs {
    let reservations: [Reservation]
    let totalReservationSpots: COption<UInt64>
    let offset: UInt64
    let totalSpotOffset: UInt64
}

/**
 * @category userTypes
 * @category generated
 */
public let setReservationListArgsBeet = FixableBeetArgsStruct<SetReservationListArgs>(fields: [
    ("reservations", Beet.fixableBeat(array(element: reservationBeetWrapped))),
    ("totalReservationSpots", Beet.fixableBeat(coption(inner: Beet.fixedBeet(.init(value: .scalar(u64())))))),
    ("offset", Beet.fixedBeet(.init(value: .scalar(u64())))),
    ("totalSpotOffset", Beet.fixedBeet(.init(value: .scalar(u64()))))
], description: "SetReservationListArgs")

public let setReservationListArgsBeetWrapped = Beet.fixableBeat(setReservationListArgsBeet)