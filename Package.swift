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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250321/TensorFlowLiteC.xcframework.zip", checksum: "d98eaf97d9f3a84a46bbcacd08705c395319aa1df631b52f33b8bce46065f2de"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250321/TensorFlowLiteCCoreML.xcframework.zip", checksum: "537644d1d4135a26ac07d1b771c55d9e9ac64db0360e7404ea30ad7cc75788a8"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250321/TensorFlowLiteCMetal.xcframework.zip", checksum: "63c515fae12462cda2d82f4685d167f646641336a799488e20ed01939fee46b9"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
