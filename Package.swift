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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241120/TensorFlowLiteC.xcframework.zip", checksum: "c086e75e5f0576d1d805c186af00f97d112eb87d9012e71de7b9f3b52b57d76a"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241120/TensorFlowLiteCCoreML.xcframework.zip", checksum: "276431d1cd5265a431f6807ff1160537bb8f71e32af0361c665147ada02d90da"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241120/TensorFlowLiteCMetal.xcframework.zip", checksum: "a17f88c5187d06c56ce7d5010d4478727ab505bbd64b3a62b277b4df3b09fd93"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
