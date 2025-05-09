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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250508/TensorFlowLiteC.xcframework.zip", checksum: "71d8459247ecb76fef133a09ed642727e34fdb52407a8fa5b2fdab7be3b042ea"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250508/TensorFlowLiteCCoreML.xcframework.zip", checksum: "3e60744b92c15cd397dfc4d551b2070bf58aeda22f0565d1404f105b933c8503"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250508/TensorFlowLiteCMetal.xcframework.zip", checksum: "e8f7a840ddc829b7e0db9493b42fbae8e144c77d933a588cb6ecf569bf2be966"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
