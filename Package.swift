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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240914/TensorFlowLiteC.xcframework.zip", checksum: "c32b56667c94fe88f205898fae52fffc383d12732f0e1fe2e346b171017f3858"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240914/TensorFlowLiteCCoreML.xcframework.zip", checksum: "92899e54b837ef6fac6a57a00b372c890dc5603b75cf997d156ec094d4c60d16"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240914/TensorFlowLiteCMetal.xcframework.zip", checksum: "c9e44a53c5dc803e224270ae1f37fdf5b8e97d78f0aa493db49c60193bd3d2d7"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
