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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240520/TensorFlowLiteC.xcframework.zip", checksum: "c2514bc9d5bb409ea5aa70e29fc59a936f4e26cf445a76ffc2e604838f372e4d"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240520/TensorFlowLiteCCoreML.xcframework.zip", checksum: "35c34aad4c337ca34a382a2fe0b3644e95146c47deec4874a8858b35f396b78c"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240520/TensorFlowLiteCMetal.xcframework.zip", checksum: "d60a6cc1fc9ec66a3cf47f25e9302659b97eee0214dd032117198b6ed96bfcab"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
