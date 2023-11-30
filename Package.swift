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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231129/TensorFlowLiteC.xcframework.zip", checksum: "d47fec25a7f74d9b3c49b275774608ece11d457e727643308ac13bde8d399f0a"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231129/TensorFlowLiteCCoreML.xcframework.zip", checksum: "0c69631add00dba58a63f3ee290088fe87eb6444e8607eb153ad2b581d724706"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231129/TensorFlowLiteCMetal.xcframework.zip", checksum: "f2a873b430001d8bdb56e283b72abcb2858c48ab2d6301d4a300f75cd47c05d7"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
