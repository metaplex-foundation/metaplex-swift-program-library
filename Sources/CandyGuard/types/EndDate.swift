import Beet

public struct EndDate {
    public let date: Int64

    public init(
        date: Int64
    ) {
        self.date = date
    }

    static func fromArgs(args: Args) -> EndDate {
        return EndDate(
            date: args["date"] as! Int64
        )
    }
}

/**
 * @category userTypes
 * @category generated
 */
public let endDateBeet = BeetStruct(
    fields: [
        ("date", (.init(value: .scalar(i64()))))
    ],
    construct: EndDate.fromArgs,
    description: "EndDate"
)

public let endDateBeetWrapped = Beet.fixedBeet(.init(value: .scalar(endDateBeet)))