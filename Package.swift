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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250204/TensorFlowLiteC.xcframework.zip", checksum: "3cc55dea5aa83e937d13c95b2061831828120fd36256046b078f742cabae069d"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250204/TensorFlowLiteCCoreML.xcframework.zip", checksum: "4eb5c182457f4c670d76376988a8634191b29042c9e6953765db885b34ab84cf"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250204/TensorFlowLiteCMetal.xcframework.zip", checksum: "0bea93def05a452a85ad544d01b172396cd0fe95f825c55fdebc6266863b1f69"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
