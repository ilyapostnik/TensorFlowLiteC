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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250307/TensorFlowLiteC.xcframework.zip", checksum: "912b91bd14ba1a79e98c5f93b03fea02d87b59513a1ea45913348f4e04502ae0"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250307/TensorFlowLiteCCoreML.xcframework.zip", checksum: "6c2dbde2976055f94a7b343e27775c67a0f25c954d4cc1d598074f259a20b94e"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250307/TensorFlowLiteCMetal.xcframework.zip", checksum: "33b7fdbbd1bdb4e39107aa894ef76548f81a4d8193e3f82d1989211b47b3878a"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
