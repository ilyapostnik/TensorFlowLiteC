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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240629/TensorFlowLiteC.xcframework.zip", checksum: "0ef01e47152b259f22b112f21f32d008a717eb198ee131547328b56896be9c29"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240629/TensorFlowLiteCCoreML.xcframework.zip", checksum: "53b74bdf9fe56b7ac5167d6ac6f91cf69112731d5bd1aa83be7acb6da910c55a"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240629/TensorFlowLiteCMetal.xcframework.zip", checksum: "ec35505f6b0e52c6701dcdf44d503d71c2556959427bf7b7ea7cc8673470e306"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
