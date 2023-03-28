import Beet

public struct StartDate {
    public let date: Int64

    public init(
        date: Int64
    ) {
        self.date = date
    }

    static func fromArgs(args: Args) -> StartDate {
        return StartDate(
            date: args["date"] as! Int64
        )
    }
}

/**
 * @category userTypes
 * @category generated
 */
public let startDateBeet = BeetStruct(
    fields: [
        ("date", (.init(value: .scalar(i64()))))
    ],
    construct: StartDate.fromArgs,
    description: "StartDate"
)

public let startDateBeetWrapped = Beet.fixedBeet(.init(value: .scalar(startDateBeet)))