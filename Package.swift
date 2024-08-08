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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240807/TensorFlowLiteC.xcframework.zip", checksum: "c417f3526142d3ef9d35d9fb27eba81b99590429d511a3ff5bfe675088ce50d9"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240807/TensorFlowLiteCCoreML.xcframework.zip", checksum: "eb310dc02adf5eb2377e6335799bbf6749568c6e3b62c52fea9b60a13a015db0"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240807/TensorFlowLiteCMetal.xcframework.zip", checksum: "75075e5526d7bf0c4cb18e2f490a336467c2656974fae50bfc7eafae8afc9a6c"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
