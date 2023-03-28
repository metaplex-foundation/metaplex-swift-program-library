import Beet

public struct GuardSet {
    public let botTax: COption<BotTax>
    public let solPayment: COption<SolPayment>
    public let tokenPayment: COption<TokenPayment>
    public let startDate: COption<StartDate>
    public let thirdPartySigner: COption<ThirdPartySigner>
    public let tokenGate: COption<TokenGate>
    public let gatekeeper: COption<Gatekeeper>
    public let endDate: COption<EndDate>
    public let allowList: COption<AllowList>
    public let mintLimit: COption<MintLimit>
    public let nftPayment: COption<NftPayment>
    public let redeemedAmount: COption<RedeemedAmount>
    public let addressGate: COption<AddressGate>
    public let nftGate: COption<NftGate>
    public let nftBurn: COption<NftBurn>
    public let tokenBurn: COption<TokenBurn>
    public let freezeSolPayment: COption<FreezeSolPayment>
    public let freezeTokenPayment: COption<FreezeTokenPayment>
    public let programGate: COption<ProgramGate>
    public let allocation: COption<Allocation>

    public init(
        botTax: COption<BotTax>,
        solPayment: COption<SolPayment>,
        tokenPayment: COption<TokenPayment>,
        startDate: COption<StartDate>,
        thirdPartySigner: COption<ThirdPartySigner>,
        tokenGate: COption<TokenGate>,
        gatekeeper: COption<Gatekeeper>,
        endDate: COption<EndDate>,
        allowList: COption<AllowList>,
        mintLimit: COption<MintLimit>,
        nftPayment: COption<NftPayment>,
        redeemedAmount: COption<RedeemedAmount>,
        addressGate: COption<AddressGate>,
        nftGate: COption<NftGate>,
        nftBurn: COption<NftBurn>,
        tokenBurn: COption<TokenBurn>,
        freezeSolPayment: COption<FreezeSolPayment>,
        freezeTokenPayment: COption<FreezeTokenPayment>,
        programGate: COption<ProgramGate>,
        allocation: COption<Allocation>
    ) {
        self.botTax = botTax
        self.solPayment = solPayment
        self.tokenPayment = tokenPayment
        self.startDate = startDate
        self.thirdPartySigner = thirdPartySigner
        self.tokenGate = tokenGate
        self.gatekeeper = gatekeeper
        self.endDate = endDate
        self.allowList = allowList
        self.mintLimit = mintLimit
        self.nftPayment = nftPayment
        self.redeemedAmount = redeemedAmount
        self.addressGate = addressGate
        self.nftGate = nftGate
        self.nftBurn = nftBurn
        self.tokenBurn = tokenBurn
        self.freezeSolPayment = freezeSolPayment
        self.freezeTokenPayment = freezeTokenPayment
        self.programGate = programGate
        self.allocation = allocation
    }

    static func fromArgs(args: Args) -> GuardSet {
        return GuardSet(
            botTax: args["botTax"] as! COption<BotTax>,
            solPayment: args["solPayment"] as! COption<SolPayment>,
            tokenPayment: args["tokenPayment"] as! COption<TokenPayment>,
            startDate: args["startDate"] as! COption<StartDate>,
            thirdPartySigner: args["thirdPartySigner"] as! COption<ThirdPartySigner>,
            tokenGate: args["tokenGate"] as! COption<TokenGate>,
            gatekeeper: args["gatekeeper"] as! COption<Gatekeeper>,
            endDate: args["endDate"] as! COption<EndDate>,
            allowList: args["allowList"] as! COption<AllowList>,
            mintLimit: args["mintLimit"] as! COption<MintLimit>,
            nftPayment: args["nftPayment"] as! COption<NftPayment>,
            redeemedAmount: args["redeemedAmount"] as! COption<RedeemedAmount>,
            addressGate: args["addressGate"] as! COption<AddressGate>,
            nftGate: args["nftGate"] as! COption<NftGate>,
            nftBurn: args["nftBurn"] as! COption<NftBurn>,
            tokenBurn: args["tokenBurn"] as! COption<TokenBurn>,
            freezeSolPayment: args["freezeSolPayment"] as! COption<FreezeSolPayment>,
            freezeTokenPayment: args["freezeTokenPayment"] as! COption<FreezeTokenPayment>,
            programGate: args["programGate"] as! COption<ProgramGate>,
            allocation: args["allocation"] as! COption<Allocation>
        )
    }
}

/**
 * @category userTypes
 * @category generated
 */
public let guardSetBeet = FixableBeetStruct<GuardSet>(
    fields: [
        ("botTax", Beet.fixableBeat(coption(inner: botTaxBeetWrapped))),
        ("solPayment", Beet.fixableBeat(coption(inner: solPaymentBeetWrapped))),
        ("tokenPayment", Beet.fixableBeat(coption(inner: tokenPaymentBeetWrapped))),
        ("startDate", Beet.fixableBeat(coption(inner: startDateBeetWrapped))),
        ("thirdPartySigner", Beet.fixableBeat(coption(inner: thirdPartySignerBeetWrapped))),
        ("tokenGate", Beet.fixableBeat(coption(inner: tokenGateBeetWrapped))),
        ("gatekeeper", Beet.fixableBeat(coption(inner: gatekeeperBeetWrapped))),
        ("endDate", Beet.fixableBeat(coption(inner: endDateBeetWrapped))),
        ("allowList", Beet.fixableBeat(coption(inner: allowListBeetWrapped))),
        ("mintLimit", Beet.fixableBeat(coption(inner: mintLimitBeetWrapped))),
        ("nftPayment", Beet.fixableBeat(coption(inner: nftPaymentBeetWrapped))),
        ("redeemedAmount", Beet.fixableBeat(coption(inner: redeemedAmountBeetWrapped))),
        ("addressGate", Beet.fixableBeat(coption(inner: addressGateBeetWrapped))),
        ("nftGate", Beet.fixableBeat(coption(inner: nftGateBeetWrapped))),
        ("nftBurn", Beet.fixableBeat(coption(inner: nftBurnBeetWrapped))),
        ("tokenBurn", Beet.fixableBeat(coption(inner: tokenBurnBeetWrapped))),
        ("freezeSolPayment", Beet.fixableBeat(coption(inner: freezeSolPaymentBeetWrapped))),
        ("freezeTokenPayment", Beet.fixableBeat(coption(inner: freezeTokenPaymentBeetWrapped))),
        ("programGate", Beet.fixableBeat(coption(inner: programGateBeetWrapped))),
        ("allocation", Beet.fixableBeat(coption(inner: allocationBeetWrapped)))
    ],
    construct: GuardSet.fromArgs,
    description: "GuardSet"
)

public let guardSetBeetWrapped = Beet.fixableBeat(guardSetBeet)