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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250503/TensorFlowLiteC.xcframework.zip", checksum: "f97887c900d20cdcdf818c679ed1c45b9a6a248e1d3dd3f5784c64c2b9b0382c"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250503/TensorFlowLiteCCoreML.xcframework.zip", checksum: "f839cb45fe39b9f8a27edcd3609309c961da64bb0fc7a1d697d1c360c148e40e"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250503/TensorFlowLiteCMetal.xcframework.zip", checksum: "f3f3f22fe77c72c1eabcbff41bdd97647446b311f496b97093be3b87b2db33c8"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
