import Beet

public struct SetReservationListArgs {
    public let reservations: [Reservation]
    public let totalReservationSpots: COption<UInt64>
    public let offset: UInt64
    public let totalSpotOffset: UInt64

    public init(
        reservations: [Reservation],
        totalReservationSpots: COption<UInt64>,
        offset: UInt64,
        totalSpotOffset: UInt64
    ) {
        self.reservations = reservations
        self.totalReservationSpots = totalReservationSpots
        self.offset = offset
        self.totalSpotOffset = totalSpotOffset
    }

    static func fromArgs(args: Args) -> SetReservationListArgs {
        return SetReservationListArgs(
            reservations: args["reservations"] as! [Reservation],
            totalReservationSpots: args["totalReservationSpots"] as! COption<UInt64>,
            offset: args["offset"] as! UInt64,
            totalSpotOffset: args["totalSpotOffset"] as! UInt64
        )
    }
}

/**
 * @category userTypes
 * @category generated
 */
public let setReservationListArgsBeet = FixableBeetStruct<SetReservationListArgs>(
    fields: [
        ("reservations", Beet.fixableBeat(array(element: reservationBeetWrapped))),
        ("totalReservationSpots", Beet.fixableBeat(coption(inner: Beet.fixedBeet(.init(value: .scalar(u64())))))),
        ("offset", Beet.fixedBeet(.init(value: .scalar(u64())))),
        ("totalSpotOffset", Beet.fixedBeet(.init(value: .scalar(u64()))))
    ],
    construct: SetReservationListArgs.fromArgs,
    description: "SetReservationListArgs"
)

public let setReservationListArgsBeetWrapped = Beet.fixableBeat(setReservationListArgsBeet)