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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250420/TensorFlowLiteC.xcframework.zip", checksum: "f3f2549d3f1b0e233294c28d6b930d539ab9009c8f4f9913b77dc77b35940df5"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250420/TensorFlowLiteCCoreML.xcframework.zip", checksum: "0056e05052e432680bb4137c2182ecf1a2f78fa29b664fc76f6e93bef15c4145"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250420/TensorFlowLiteCMetal.xcframework.zip", checksum: "eee12024e91264e3fcf8b8052daf44054a2bdedd8ec86bd7be08d6e4ffde163a"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
