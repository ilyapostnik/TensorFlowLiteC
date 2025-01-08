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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250107/TensorFlowLiteC.xcframework.zip", checksum: "52ef79a919a90ac714e8e194bdc81f651de8ce6947b71658fc9ce91b4ca77687"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250107/TensorFlowLiteCCoreML.xcframework.zip", checksum: "27aa8562966b90d098001be9c813f0905ba8a77875bed810d953c471a4806f9a"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250107/TensorFlowLiteCMetal.xcframework.zip", checksum: "a60325d39cb4a8949fbc3639c7ca826ca6ac877bb12cd708971b8bc404c99ec3"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
