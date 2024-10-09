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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241008/TensorFlowLiteC.xcframework.zip", checksum: "75735df7ee5554cf9c21aa419cb48f307fea4c2defce69f2d0cbe731ee816a04"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241008/TensorFlowLiteCCoreML.xcframework.zip", checksum: "b3c198ee14acdbc429545a2cec8debd64d829828ed5ed7bd007bd97e2609a066"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241008/TensorFlowLiteCMetal.xcframework.zip", checksum: "24171e08fdae303e9730160d41b08d339fc9926267e99dc393953bdbf5d0cf94"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
