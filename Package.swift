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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240818/TensorFlowLiteC.xcframework.zip", checksum: "190a10e74d250dd54fdecdd39d4a7fce37e8bfbbe63339d2bab3df3a3d27ec62"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240818/TensorFlowLiteCCoreML.xcframework.zip", checksum: "42457f727bdc2dc4c3c9cd90ad10dc41b5502730931a4f8ea979f2e301307ac6"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240818/TensorFlowLiteCMetal.xcframework.zip", checksum: "19a0f4ddb01a11b8497129f115015fc23a0d8fa38766ae4ab766851ea437b28b"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
