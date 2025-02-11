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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250210/TensorFlowLiteC.xcframework.zip", checksum: "e84976225f4c374f8999a1502d0f8cb23ac22ab6494d0addc53394cc2fc029b5"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250210/TensorFlowLiteCCoreML.xcframework.zip", checksum: "d90e7fe8a30fcf5e6ea3661ec8a8033e931408dccdf05ba5b5f965363e65a9c1"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250210/TensorFlowLiteCMetal.xcframework.zip", checksum: "2f64de4a990651ded4c19d266005236e2ff4a546bb79588e94cfd5828ab0e92f"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
