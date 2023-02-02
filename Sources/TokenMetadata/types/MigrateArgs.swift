import Solana
import Beet
import BeetSolana

/**
 * This type is used to derive the {@link MigrateArgs} type as well as the de/serializer.
 * However don't refer to it in your code but use the {@link MigrateArgs} type instead.
 *
 * @category userTypes
 * @category enums
 * @category generated
 * @private
 */
public enum MigrateArgsRecord {
  case V1(migration_type: MigrationType, rule_set: COption<PublicKey>)
}

extension MigrateArgsRecord: ConstructableWithDiscriminator {
    public init?(discriminator: UInt8, params: [String: Any]) {
        switch discriminator{
        case 0: self = MigrateArgsRecord.V1(migration_type: params["migration_type"] as! MigrationType, rule_set: params["rule_set"] as! COption<PublicKey>)
        default: return nil
        }
    }
    
    public static func paramsOrderedKeys(discriminator: UInt8) -> [ParamkeyTypes] {
        switch discriminator{
        case 0: return [.key("migration_type"), .key("rule_set")]
        default: return []
        }
    }
}

/**
 * Union type respresenting the MigrateArgs data enum defined in Rust.
 *
 * @category userTypes
 * @category enums
 * @category generated
 */
public typealias MigrateArgs = MigrateArgsRecord


/**
 * @category userTypes
 * @category generated
 */
public let migrateArgsBeet = DataEnum<MigrateArgsRecord>(variants: [
    ("V1", Beet.fixableBeat(FixableBeetArgsStruct<MigrateArgsRecord>(fields: [
            ("migration_type", migrationTypeBeetWrapped),
            ("rule_set", Beet.fixableBeat(coption(inner: Beet.fixedBeet(.init(value: .scalar(BeetPublicKey()))))))
        ],
        description: "MigrateArgsRecord"
    )))
])

public let migrateArgsBeetWrapped = Beet.fixableBeat(migrateArgsBeet)