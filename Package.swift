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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240101/TensorFlowLiteC.xcframework.zip", checksum: "f05c93e119d9261e997083546965b4f84f88d4e2aa88aed3b9fe7bbd8e07e28d"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240101/TensorFlowLiteCCoreML.xcframework.zip", checksum: "2864fddbbc1cee1db97cbf927e18a5d666297a525ad21003297a52e6cfe11817"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240101/TensorFlowLiteCMetal.xcframework.zip", checksum: "c390c37a1d0c305bc18ffee6cae41a5add18a6eac07902855fd2ed4b88428433"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
