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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250102/TensorFlowLiteC.xcframework.zip", checksum: "178c401f81896b6c9b96a5eca06fc3c7a270ea614d0aafce095e82a2b5929e91"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250102/TensorFlowLiteCCoreML.xcframework.zip", checksum: "e62d3812b8dae29d884ac52272aa574504076bd3ee5517575d716a7c267226f2"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250102/TensorFlowLiteCMetal.xcframework.zip", checksum: "64457f4fa0a0c80345452edde90e309ab09d560f77d3c142a05f2eacc90f1aac"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
