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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241101/TensorFlowLiteC.xcframework.zip", checksum: "e5283e00184c3dcea72e42fc9f131ab6151b189c1bec8e866656c0728a207879"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241101/TensorFlowLiteCCoreML.xcframework.zip", checksum: "34d87be0f2e33427634b4113f66639dff34f498e2950162cb4fe3e725d4aefde"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241101/TensorFlowLiteCMetal.xcframework.zip", checksum: "9cceecae14df9fdb9189d6b3469cff006f2dbb0e7fe4d252b8fa208171f84f22"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
