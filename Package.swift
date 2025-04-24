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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250423/TensorFlowLiteC.xcframework.zip", checksum: "18f0454dadedc38762395d1bc4642d1e728c47283f6561332747cfa28c803343"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250423/TensorFlowLiteCCoreML.xcframework.zip", checksum: "92a7cb7597b5da55938f886809bc57300c2560abc54c2e562d4e3d46a7859b3e"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250423/TensorFlowLiteCMetal.xcframework.zip", checksum: "2202421dc9045f38a63acbacade365e78119d75b59dd2a9898d87ac47ac5c52d"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
