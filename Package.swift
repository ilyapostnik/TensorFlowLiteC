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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250428/TensorFlowLiteC.xcframework.zip", checksum: "cad2a19634687dbf84e26d64aebad58781caad5d53628e824f50d23e12e8441c"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250428/TensorFlowLiteCCoreML.xcframework.zip", checksum: "7e265366a56b35ec0a7083d68c64de14529bcc7dc49a79a9bed4d5933239ce6d"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250428/TensorFlowLiteCMetal.xcframework.zip", checksum: "05575b81163cf497467be8c135a95b4cff63a4e897a6f3221770dfa0117c3c73"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
