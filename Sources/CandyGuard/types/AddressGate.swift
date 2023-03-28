import Beet
import Solana
import BeetSolana

public struct AddressGate {
    public let address: PublicKey

    public init(
        address: PublicKey
    ) {
        self.address = address
    }

    static func fromArgs(args: Args) -> AddressGate {
        return AddressGate(
            address: args["address"] as! PublicKey
        )
    }
}

/**
 * @category userTypes
 * @category generated
 */
public let addressGateBeet = BeetStruct(
    fields: [
        ("address", (.init(value: .scalar(BeetPublicKey()))))
    ],
    construct: AddressGate.fromArgs,
    description: "AddressGate"
)

public let addressGateBeetWrapped = Beet.fixedBeet(.init(value: .scalar(addressGateBeet)))