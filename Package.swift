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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250118/TensorFlowLiteC.xcframework.zip", checksum: "b9a62885fe01b2437af921aa4ca9a371ce68a1118872e36804267d4ce7f7acfa"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250118/TensorFlowLiteCCoreML.xcframework.zip", checksum: "3af18aeb27975bbd28c41070f1ed3e0b51e5d3a8f35c2972e547254ce6e5c568"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250118/TensorFlowLiteCMetal.xcframework.zip", checksum: "07174c139a3c1889cfd9067aa88ada236fa3ff503402c62e45d60b5513ca2add"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
