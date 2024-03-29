/**
 * This code was GENERATED using the solita package.
 * Please DO NOT EDIT THIS FILE, instead rerun solita to update it or write a wrapper to add functionality.
 *
 * See: https://github.com/metaplex-foundation/solita-swift
 */
import Foundation

public enum candy_machine_coreError: String, Error {
    /**
 * IncorrectOwner: '0x1770'
 *
 * @category Errors
 * @category generated
 */
    case incorrectOwnerError = "0x1770"
    /**
 * Uninitialized: '0x1771'
 *
 * @category Errors
 * @category generated
 */
    case uninitializedError = "0x1771"
    /**
 * MintMismatch: '0x1772'
 *
 * @category Errors
 * @category generated
 */
    case mintMismatchError = "0x1772"
    /**
 * IndexGreaterThanLength: '0x1773'
 *
 * @category Errors
 * @category generated
 */
    case indexGreaterThanLengthError = "0x1773"
    /**
 * NumericalOverflowError: '0x1774'
 *
 * @category Errors
 * @category generated
 */
    case numericalOverflowErrorError = "0x1774"
    /**
 * TooManyCreators: '0x1775'
 *
 * @category Errors
 * @category generated
 */
    case tooManyCreatorsError = "0x1775"
    /**
 * CandyMachineEmpty: '0x1776'
 *
 * @category Errors
 * @category generated
 */
    case candyMachineEmptyError = "0x1776"
    /**
 * HiddenSettingsDoNotHaveConfigLines: '0x1777'
 *
 * @category Errors
 * @category generated
 */
    case hiddenSettingsDoNotHaveConfigLinesError = "0x1777"
    /**
 * CannotChangeNumberOfLines: '0x1778'
 *
 * @category Errors
 * @category generated
 */
    case cannotChangeNumberOfLinesError = "0x1778"
    /**
 * CannotSwitchToHiddenSettings: '0x1779'
 *
 * @category Errors
 * @category generated
 */
    case cannotSwitchToHiddenSettingsError = "0x1779"
    /**
 * IncorrectCollectionAuthority: '0x177a'
 *
 * @category Errors
 * @category generated
 */
    case incorrectCollectionAuthorityError = "0x177a"
    /**
 * MetadataAccountMustBeEmpty: '0x177b'
 *
 * @category Errors
 * @category generated
 */
    case metadataAccountMustBeEmptyError = "0x177b"
    /**
 * NoChangingCollectionDuringMint: '0x177c'
 *
 * @category Errors
 * @category generated
 */
    case noChangingCollectionDuringMintError = "0x177c"
    /**
 * ExceededLengthError: '0x177d'
 *
 * @category Errors
 * @category generated
 */
    case exceededLengthErrorError = "0x177d"
    /**
 * MissingConfigLinesSettings: '0x177e'
 *
 * @category Errors
 * @category generated
 */
    case missingConfigLinesSettingsError = "0x177e"
    /**
 * CannotIncreaseLength: '0x177f'
 *
 * @category Errors
 * @category generated
 */
    case cannotIncreaseLengthError = "0x177f"
    /**
 * CannotSwitchFromHiddenSettings: '0x1780'
 *
 * @category Errors
 * @category generated
 */
    case cannotSwitchFromHiddenSettingsError = "0x1780"
    /**
 * CannotChangeSequentialIndexGeneration: '0x1781'
 *
 * @category Errors
 * @category generated
 */
    case cannotChangeSequentialIndexGenerationError = "0x1781"
    /**
 * CollectionKeyMismatch: '0x1782'
 *
 * @category Errors
 * @category generated
 */
    case collectionKeyMismatchError = "0x1782"
    /**
 * CouldNotRetrieveConfigLineData: '0x1783'
 *
 * @category Errors
 * @category generated
 */
    case couldNotRetrieveConfigLineDataError = "0x1783"
    /**
 * NotFullyLoaded: '0x1784'
 *
 * @category Errors
 * @category generated
 */
    case notFullyLoadedError = "0x1784"
    /**
 * InstructionBuilderFailed: '0x1785'
 *
 * @category Errors
 * @category generated
 */
    case instructionBuilderFailedError = "0x1785"
    /**
 * MissingCollectionAuthorityRecord: '0x1786'
 *
 * @category Errors
 * @category generated
 */
    case missingCollectionAuthorityRecordError = "0x1786"
    /**
 * MissingMetadataDelegateRecord: '0x1787'
 *
 * @category Errors
 * @category generated
 */
    case missingMetadataDelegateRecordError = "0x1787"
    /**
 * InvalidTokenStandard: '0x1788'
 *
 * @category Errors
 * @category generated
 */
    case invalidTokenStandardError = "0x1788"
    /**
 * MissingTokenAccount: '0x1789'
 *
 * @category Errors
 * @category generated
 */
    case missingTokenAccountError = "0x1789"
    /**
 * MissingTokenRecord: '0x178a'
 *
 * @category Errors
 * @category generated
 */
    case missingTokenRecordError = "0x178a"
    /**
 * MissingInstructionsSysvar: '0x178b'
 *
 * @category Errors
 * @category generated
 */
    case missingInstructionsSysvarError = "0x178b"
    /**
 * MissingSplAtaProgram: '0x178c'
 *
 * @category Errors
 * @category generated
 */
    case missingSplAtaProgramError = "0x178c"
    /**
 * InvalidAccountVersion: '0x178d'
 *
 * @category Errors
 * @category generated
 */
    case invalidAccountVersionError = "0x178d"

    public var code: String? { self.rawValue }
}

extension candy_machine_coreError: LocalizedError {
    public var errorDescription: String? {
        switch self {
            /**
 * IncorrectOwner: 'Account does not have correct owner'
 *
 * @category Errors
 * @category generated
 */
    case .incorrectOwnerError: return "Account does not have correct owner"
    /**
 * Uninitialized: 'Account is not initialized'
 *
 * @category Errors
 * @category generated
 */
    case .uninitializedError: return "Account is not initialized"
    /**
 * MintMismatch: 'Mint Mismatch'
 *
 * @category Errors
 * @category generated
 */
    case .mintMismatchError: return "Mint Mismatch"
    /**
 * IndexGreaterThanLength: 'Index greater than length'
 *
 * @category Errors
 * @category generated
 */
    case .indexGreaterThanLengthError: return "Index greater than length"
    /**
 * NumericalOverflowError: 'Numerical overflow error'
 *
 * @category Errors
 * @category generated
 */
    case .numericalOverflowErrorError: return "Numerical overflow error"
    /**
 * TooManyCreators: 'Can only provide up to 4 creators to candy machine (because candy machine is one)'
 *
 * @category Errors
 * @category generated
 */
    case .tooManyCreatorsError: return "Can only provide up to 4 creators to candy machine (because candy machine is one)"
    /**
 * CandyMachineEmpty: 'Candy machine is empty'
 *
 * @category Errors
 * @category generated
 */
    case .candyMachineEmptyError: return "Candy machine is empty"
    /**
 * HiddenSettingsDoNotHaveConfigLines: 'Candy machines using hidden uris do not have config lines, they have a single hash representing hashed order'
 *
 * @category Errors
 * @category generated
 */
    case .hiddenSettingsDoNotHaveConfigLinesError: return "Candy machines using hidden uris do not have config lines, they have a single hash representing hashed order"
    /**
 * CannotChangeNumberOfLines: 'Cannot change number of lines unless is a hidden config'
 *
 * @category Errors
 * @category generated
 */
    case .cannotChangeNumberOfLinesError: return "Cannot change number of lines unless is a hidden config"
    /**
 * CannotSwitchToHiddenSettings: 'Cannot switch to hidden settings after items available is greater than 0'
 *
 * @category Errors
 * @category generated
 */
    case .cannotSwitchToHiddenSettingsError: return "Cannot switch to hidden settings after items available is greater than 0"
    /**
 * IncorrectCollectionAuthority: 'Incorrect collection NFT authority'
 *
 * @category Errors
 * @category generated
 */
    case .incorrectCollectionAuthorityError: return "Incorrect collection NFT authority"
    /**
 * MetadataAccountMustBeEmpty: 'The metadata account has data in it, and this must be empty to mint a new NFT'
 *
 * @category Errors
 * @category generated
 */
    case .metadataAccountMustBeEmptyError: return "The metadata account has data in it, and this must be empty to mint a new NFT"
    /**
 * NoChangingCollectionDuringMint: 'Can't change collection settings after items have begun to be minted'
 *
 * @category Errors
 * @category generated
 */
    case .noChangingCollectionDuringMintError: return "Can't change collection settings after items have begun to be minted"
    /**
 * ExceededLengthError: 'Value longer than expected maximum value'
 *
 * @category Errors
 * @category generated
 */
    case .exceededLengthErrorError: return "Value longer than expected maximum value"
    /**
 * MissingConfigLinesSettings: 'Missing config lines settings'
 *
 * @category Errors
 * @category generated
 */
    case .missingConfigLinesSettingsError: return "Missing config lines settings"
    /**
 * CannotIncreaseLength: 'Cannot increase the length in config lines settings'
 *
 * @category Errors
 * @category generated
 */
    case .cannotIncreaseLengthError: return "Cannot increase the length in config lines settings"
    /**
 * CannotSwitchFromHiddenSettings: 'Cannot switch from hidden settings'
 *
 * @category Errors
 * @category generated
 */
    case .cannotSwitchFromHiddenSettingsError: return "Cannot switch from hidden settings"
    /**
 * CannotChangeSequentialIndexGeneration: 'Cannot change sequential index generation after items have begun to be minted'
 *
 * @category Errors
 * @category generated
 */
    case .cannotChangeSequentialIndexGenerationError: return "Cannot change sequential index generation after items have begun to be minted"
    /**
 * CollectionKeyMismatch: 'Collection public key mismatch'
 *
 * @category Errors
 * @category generated
 */
    case .collectionKeyMismatchError: return "Collection public key mismatch"
    /**
 * CouldNotRetrieveConfigLineData: 'Could not retrive config line data'
 *
 * @category Errors
 * @category generated
 */
    case .couldNotRetrieveConfigLineDataError: return "Could not retrive config line data"
    /**
 * NotFullyLoaded: 'Not all config lines were added to the candy machine'
 *
 * @category Errors
 * @category generated
 */
    case .notFullyLoadedError: return "Not all config lines were added to the candy machine"
    /**
 * InstructionBuilderFailed: 'Instruction could not be created'
 *
 * @category Errors
 * @category generated
 */
    case .instructionBuilderFailedError: return "Instruction could not be created"
    /**
 * MissingCollectionAuthorityRecord: 'Missing collection authority record'
 *
 * @category Errors
 * @category generated
 */
    case .missingCollectionAuthorityRecordError: return "Missing collection authority record"
    /**
 * MissingMetadataDelegateRecord: 'Missing metadata delegate record'
 *
 * @category Errors
 * @category generated
 */
    case .missingMetadataDelegateRecordError: return "Missing metadata delegate record"
    /**
 * InvalidTokenStandard: 'Invalid token standard'
 *
 * @category Errors
 * @category generated
 */
    case .invalidTokenStandardError: return "Invalid token standard"
    /**
 * MissingTokenAccount: 'Missing token account'
 *
 * @category Errors
 * @category generated
 */
    case .missingTokenAccountError: return "Missing token account"
    /**
 * MissingTokenRecord: 'Missing token record'
 *
 * @category Errors
 * @category generated
 */
    case .missingTokenRecordError: return "Missing token record"
    /**
 * MissingInstructionsSysvar: 'Missing instructions sysvar account'
 *
 * @category Errors
 * @category generated
 */
    case .missingInstructionsSysvarError: return "Missing instructions sysvar account"
    /**
 * MissingSplAtaProgram: 'Missing SPL ATA program'
 *
 * @category Errors
 * @category generated
 */
    case .missingSplAtaProgramError: return "Missing SPL ATA program"
    /**
 * InvalidAccountVersion: 'Invalid account version'
 *
 * @category Errors
 * @category generated
 */
    case .invalidAccountVersionError: return "Invalid account version"
        }
    }
}