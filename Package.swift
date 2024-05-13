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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240512/TensorFlowLiteC.xcframework.zip", checksum: "4b39323774df97fe5b9b759679eeef9c3e579e0d1fe0b6b5f0a2fdbebd2add16"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240512/TensorFlowLiteCCoreML.xcframework.zip", checksum: "0286f4c62f283a3a84215d68350992615e8711302497e002a3ce4a6ecfd0aef7"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240512/TensorFlowLiteCMetal.xcframework.zip", checksum: "248c8a299188362a662f1e1156b55e2976e87ed2f826a49825e0c14b418dd396"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
