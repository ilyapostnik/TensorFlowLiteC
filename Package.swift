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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250114/TensorFlowLiteC.xcframework.zip", checksum: "4ffcb210efe7ee4ab17eb5c6306a8e90bf8010a2d459899dd15f9445df1eb368"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250114/TensorFlowLiteCCoreML.xcframework.zip", checksum: "87ad6d37e19f2ce168f3447bb07727529ede424ded69263f4cc0879733f26a4a"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250114/TensorFlowLiteCMetal.xcframework.zip", checksum: "6adc7ce0fc50eaeca7721a5c964a461c5341363a4fa41701df78869cff31c26c"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
