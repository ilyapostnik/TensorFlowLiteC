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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241112/TensorFlowLiteC.xcframework.zip", checksum: "bdcb7b115cc359a3989522f8106e12474e452596f102a3816495ff929c91cf13"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241112/TensorFlowLiteCCoreML.xcframework.zip", checksum: "46c769f6d250fdfb669aa1846060b29b5a817b89558512e6d2a1de21ef203de7"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241112/TensorFlowLiteCMetal.xcframework.zip", checksum: "4938b3d8099e76ee37d6455ed6d8434153cbb09c473eb0746a5e7f3905dc87dd"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
