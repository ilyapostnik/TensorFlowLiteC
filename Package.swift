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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241124/TensorFlowLiteC.xcframework.zip", checksum: "3429a0a5fe655785bfe24ac6a7bd989cd1e3277a8b8b06bcdbcdbaa91e4b23dc"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241124/TensorFlowLiteCCoreML.xcframework.zip", checksum: "ac646b92630c57feb565b14080e65d90e7700c512ba65269d346ef7a5be04d7c"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241124/TensorFlowLiteCMetal.xcframework.zip", checksum: "93823d9b5c6727d98283a7595ff27ef2f878b811abca88595c47ff47c50bc87e"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
