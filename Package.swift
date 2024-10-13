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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241012/TensorFlowLiteC.xcframework.zip", checksum: "855db10fac22c098a0e56df68a87b8663ab3bbc378bdd6d275dfbf6a68dbcf27"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241012/TensorFlowLiteCCoreML.xcframework.zip", checksum: "fb2c6f7bf6d71ddbc649b91ff2bb0061fbfaa17158225b3aa1424df8724fa68b"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241012/TensorFlowLiteCMetal.xcframework.zip", checksum: "38308b80ae693ef38cf4e241a5956d6efcd913ba59256c03d49fe0a0ec755ed3"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
