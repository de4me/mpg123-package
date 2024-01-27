// swift-tools-version: 5.4
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
                      url: "https://github.com/de4me/mpg123-package/releases/download/1.32.4/mpg123.zip",
                      checksum: "ae7af8b3a2568b1e26449b4053a4c1bda3dfac78897363ea616d7f28f3d161cb"),
        .binaryTarget(name: "out123",
                      url: "https://github.com/de4me/mpg123-package/releases/download/1.32.4/out123.zip",
                      checksum: "007bb830fc77aca307dced0680aeadb468c81d8f25876c3c324c405110746a4d"),
        .binaryTarget(name: "syn123",
                      url: "https://github.com/de4me/mpg123-package/releases/download/1.32.4/syn123.zip",
                      checksum: "97a5b55eada2b3acc197707983b85e3bb8bf266d5000ae62a07393f19d01cd90"),
    ]
)
