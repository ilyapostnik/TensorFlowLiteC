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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241018/TensorFlowLiteC.xcframework.zip", checksum: "f147b5b1fa77f3c32b4b7746e709f06ed228ba88700035c70e531ca824f98794"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241018/TensorFlowLiteCCoreML.xcframework.zip", checksum: "47cba78043caf01994b4fa5f9f2e4380177329afe5d22683807f4f7002f2b48e"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241018/TensorFlowLiteCMetal.xcframework.zip", checksum: "eb5cc165168404dad4ed97e7c8dcd9e40eca97523dc5ffd1433e56092a6374ba"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
