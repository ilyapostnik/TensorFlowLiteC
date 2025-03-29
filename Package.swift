// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "TensorFlowLiteC",
    products: [
        .library(
            name: "TensorFlowLiteC",
            targets: [
                "TensorFlowLiteC",
                "TensorFlowLiteCCoreML",
                "TensorFlowLiteCMetal",
                "Link",
            ]
        ),
    ],
    targets: [
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250328/TensorFlowLiteC.xcframework.zip", checksum: "9325a925b43732840616ed1f25b42a5d2303b3a0e55d63e7474b084a8f1980c5"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250328/TensorFlowLiteCCoreML.xcframework.zip", checksum: "05abea945c2eb6cd92945bb1966839bb76f6967f2200a2861465b37afa5ec7d0"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250328/TensorFlowLiteCMetal.xcframework.zip", checksum: "f3d4ca06d42d99380267f731c908fbc8e1e55ec5975f4f3a50778b801748194e"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
