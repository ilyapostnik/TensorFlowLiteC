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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240718/TensorFlowLiteC.xcframework.zip", checksum: "75cce99e0fd9152c1a8378a640375d6a780f97411783476794e46b1de5d7bd6e"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240718/TensorFlowLiteCCoreML.xcframework.zip", checksum: "11ff04f55964046b9d6bff2ab1f2de38bb12e2a4510ecd5ea80a553bc7ca418b"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240718/TensorFlowLiteCMetal.xcframework.zip", checksum: "50123f375b1c19921dc53faf6ea8f6ea48716114dee241dc30dba8727d228c16"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
