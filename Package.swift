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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240408/TensorFlowLiteC.xcframework.zip", checksum: "1fe1134770a873437775c7cc6402101068e55db81c84b45a88326e0c64f7c5f8"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240408/TensorFlowLiteCCoreML.xcframework.zip", checksum: "770eaf868ea5017a5c449b1ee416245d6111df23deb17d04b3bd531530cd917f"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240408/TensorFlowLiteCMetal.xcframework.zip", checksum: "856a9b7df9cea4fbbe32188ed14e5f5fef73403a3e34e8499005923312d75253"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
