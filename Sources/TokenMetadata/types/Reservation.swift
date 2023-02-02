import BeetSolana
import Beet
import Solana

public struct Reservation {
    public let address: PublicKey
    public let spotsRemaining: UInt64
    public let totalSpots: UInt64

    public init(
        address: PublicKey,
        spotsRemaining: UInt64,
        totalSpots: UInt64
    ) {
        self.address = address
        self.spotsRemaining = spotsRemaining
        self.totalSpots = totalSpots
    }

    static func fromArgs(args: Args) -> Reservation {
        return Reservation(
            address: args["address"] as! PublicKey,
            spotsRemaining: args["spotsRemaining"] as! UInt64,
            totalSpots: args["totalSpots"] as! UInt64
        )
    }
}

/**
 * @category userTypes
 * @category generated
 */
public let reservationBeet = BeetStruct(
    fields: [
        ("address", (.init(value: .scalar(BeetPublicKey())))),
        ("spotsRemaining", (.init(value: .scalar(u64())))),
        ("totalSpots", (.init(value: .scalar(u64()))))
    ],
    construct: Reservation.fromArgs,
    description: "Reservation"
)

public let reservationBeetWrapped = Beet.fixedBeet(.init(value: .scalar(reservationBeet)))