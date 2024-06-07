// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "mpg123",
    platforms: [
        .macOS(.v10_13),
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "mpg123",
            targets: ["mpg123"]),
        .library(
            name: "out123",
            targets: ["out123"]),
        .library(
            name: "syn123",
            targets: ["syn123"]),
    ],
    targets: [
        .binaryTarget(name: "mpg123",
                      url: "https://github.com/de4me/mpg123-package/releases/download/1.32.6/mpg123.zip",
                      checksum: "4162859e9fda15f7a5fb0d2ccad3f9527f6045dff18f58f870d1ed9f036da88c"),
        .binaryTarget(name: "out123",
                      url: "https://github.com/de4me/mpg123-package/releases/download/1.32.6/out123.zip",
                      checksum: "0e0ad7c280037c66fca701b49d11c7fe82a216bd877b02cec8796aa2b33ae98e"),
        .binaryTarget(name: "syn123",
                      url: "https://github.com/de4me/mpg123-package/releases/download/1.32.6/syn123.zip",
                      checksum: "e6736ce4ec8da5c37e415b05890fa5006fa12dd23c84e9a32d8d616304478880"),
    ]
)
