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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240118/TensorFlowLiteC.xcframework.zip", checksum: "27bfed9315556016d914c7a766ac26cff6424f5c685c9a5b3f4b982a5fd22c0e"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240118/TensorFlowLiteCCoreML.xcframework.zip", checksum: "93ddb569e9356afaf47e58823ed5b72c945a87f7625837ecc91aa3507f031394"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240118/TensorFlowLiteCMetal.xcframework.zip", checksum: "9ea50df211e86f619ab38e91f8faa533d7bfcb99f9452afc3692f3434892410d"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
