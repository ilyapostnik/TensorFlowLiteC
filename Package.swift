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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231222/TensorFlowLiteC.xcframework.zip", checksum: "f7157a9791c815a66352a60df366d59ac736b0f150dd3c147c11bf756e433ce3"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231222/TensorFlowLiteCCoreML.xcframework.zip", checksum: "b24452886c03dd3927f98d86ca513a41cf1b7e86aa5bb6fe3daced0a98d72b23"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231222/TensorFlowLiteCMetal.xcframework.zip", checksum: "40a22d0e2035eb88fb111943517f3779e7402cccdee74eaa47b1028a9c36edcc"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
