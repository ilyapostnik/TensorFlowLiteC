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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250531/TensorFlowLiteC.xcframework.zip", checksum: "ec64bf1c95d6af6a279c7a49a3da52347178fc2022fd690783820b315ed01f62"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250531/TensorFlowLiteCCoreML.xcframework.zip", checksum: "37ebeb09108c4efdae0f2a82561f3a552fadee18ded5abaf6b555c4532865488"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250531/TensorFlowLiteCMetal.xcframework.zip", checksum: "038add4f4de409b864e1bbf7306e5d5cefa1f5119c9a61b3789b33c6b4fba853"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
