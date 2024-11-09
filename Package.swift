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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241108/TensorFlowLiteC.xcframework.zip", checksum: "480e83f898c9e4f6ef0c360523d1c08957dba42f2f55b88ea2e663e542ee0c27"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241108/TensorFlowLiteCCoreML.xcframework.zip", checksum: "82508af318788914607022fa9f9032e673f3f02be829691ca3630ac941e48fc2"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241108/TensorFlowLiteCMetal.xcframework.zip", checksum: "d77264bc7cb16dbd008e29180141acf47ab42487cc929f80295d686c9a16a449"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
