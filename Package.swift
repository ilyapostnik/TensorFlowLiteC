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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250526/TensorFlowLiteC.xcframework.zip", checksum: "1e66383e977e7ebccf3c6d1293850e4a529b5aa36081c5be57cbc121de147b3d"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250526/TensorFlowLiteCCoreML.xcframework.zip", checksum: "1c840151f1d6f498858a41a258862db95a509b5b68c0af3efc6eeae41f33b3b1"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250526/TensorFlowLiteCMetal.xcframework.zip", checksum: "78aa19c48c0716eb3e9ec326bd4b810b60cda37964816abefc9ba744cc0edae1"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
