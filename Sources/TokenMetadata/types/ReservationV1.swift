import BeetSolana
import Beet
import Solana

public struct ReservationV1 {
    public let address: PublicKey
    public let spotsRemaining: UInt8
    public let totalSpots: UInt8

    public init(
        address: PublicKey,
        spotsRemaining: UInt8,
        totalSpots: UInt8
    ) {
        self.address = address
        self.spotsRemaining = spotsRemaining
        self.totalSpots = totalSpots
    }

    static func fromArgs(args: Args) -> ReservationV1 {
        return ReservationV1(
            address: args["address"] as! PublicKey,
            spotsRemaining: args["spotsRemaining"] as! UInt8,
            totalSpots: args["totalSpots"] as! UInt8
        )
    }
}

/**
 * @category userTypes
 * @category generated
 */
public let reservationV1Beet = BeetStruct(
    fields: [
        ("address", (.init(value: .scalar(BeetPublicKey())))),
        ("spotsRemaining", (.init(value: .scalar(u8())))),
        ("totalSpots", (.init(value: .scalar(u8()))))
    ],
    construct: ReservationV1.fromArgs,
    description: "ReservationV1"
)

public let reservationV1BeetWrapped = Beet.fixedBeet(.init(value: .scalar(reservationV1Beet)))