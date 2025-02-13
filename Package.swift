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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250212/TensorFlowLiteC.xcframework.zip", checksum: "94748fd4b755283e37869f5ed43f7bf550491b59703f772d639bbbc00fc23c4f"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250212/TensorFlowLiteCCoreML.xcframework.zip", checksum: "402bd0d94cfda984fb32ccdc450739a59b98d6991289bcebfbcef6210c00ef80"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250212/TensorFlowLiteCMetal.xcframework.zip", checksum: "8b7567895c9d1f00b4f309d9c69fa9c7789887cd98c9fe0f7014ecf0f29ad947"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
