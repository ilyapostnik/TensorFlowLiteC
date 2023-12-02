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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231201/TensorFlowLiteC.xcframework.zip", checksum: "8d08b1b48eac60ea8e4716c633638917394c55d05fc358c2f4b7cf47bd34dd90"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231201/TensorFlowLiteCCoreML.xcframework.zip", checksum: "6c17f74d02985f4c2a8012561e936c1eeb63929e496fcc09b0db998854dfee5f"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231201/TensorFlowLiteCMetal.xcframework.zip", checksum: "3e26206a787e2315847824b9773d720b19ba37905e77c1f3b2b8bba95e491862"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
