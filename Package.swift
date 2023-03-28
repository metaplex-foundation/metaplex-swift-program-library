// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "metaplex-swift-program-library",
    platforms: [.iOS(.v11),.macOS(.v10_12)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "AuctionHouse",
            targets: ["AuctionHouse"]
        ),
        .library(
            name: "CandyMachine",
            targets: ["CandyMachine"]
        ),
        .library(
            name: "CandyMachineCore",
            targets: ["CandyMachineCore"]
        ),
        .library(
            name: "CandyGuard",
            targets: ["CandyGuard"]
        ),
        .library(
            name: "TokenMetadata",
            targets: ["TokenMetadata"]
        )
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/metaplex-foundation/beet-swift", branch: "1.0.7"),
        .package(url: "https://github.com/metaplex-foundation/solita-swift.git", branch: "1.0.3")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "AuctionHouse",
            dependencies: [
                .product(name: "Beet", package: "beet-swift"),
                .product(name: "BeetSolana", package: "solita-swift")
            ]
        ),
        .target(
            name: "CandyMachine",
            dependencies: [
                .product(name: "Beet", package: "beet-swift"),
                .product(name: "BeetSolana", package: "solita-swift")
            ]
        ),
        .target(
            name: "CandyGuard",
            dependencies: [
                .product(name: "Beet", package: "beet-swift"),
                .product(name: "BeetSolana", package: "solita-swift")
            ]
        ),
        .target(
            name: "CandyMachineCore",
            dependencies: [
                .product(name: "Beet", package: "beet-swift"),
                .product(name: "BeetSolana", package: "solita-swift")
            ]
        ),
        .target(
            name: "TokenMetadata",
            dependencies: [
                .product(name: "Beet", package: "beet-swift"),
                .product(name: "BeetSolana", package: "solita-swift")
            ]
        ),
        .testTarget(
            name: "AuctionHouseTests",
            dependencies: []
        ),
        .testTarget(
            name: "CandyMachineTests",
            dependencies: []
        ),
        .testTarget(
            name: "TokenMetadataTests",
            dependencies: []
        ),
    ]
)
