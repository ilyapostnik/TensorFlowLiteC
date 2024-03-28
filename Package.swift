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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240327/TensorFlowLiteC.xcframework.zip", checksum: "062583a8e7be181b76611f77b8a70b9cefa1f536343752099adb45a23d92f97e"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240327/TensorFlowLiteCCoreML.xcframework.zip", checksum: "a9a768a89f8e9b35fba00fafb1002f11b3d8cfaec183b16343a1658e8ca74438"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240327/TensorFlowLiteCMetal.xcframework.zip", checksum: "b04ea10770729def4c4a567b684018b92642dd5b395abce93db158829bbae6ba"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
