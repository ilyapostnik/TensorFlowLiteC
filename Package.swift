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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241114/TensorFlowLiteC.xcframework.zip", checksum: "03f260846f83542340adcef9b9fdc12ee79d33b4684635db0a356c356d7be0d8"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241114/TensorFlowLiteCCoreML.xcframework.zip", checksum: "c482020266f2173a97d33d055790e7dbcf396a738e6345f23a341ad37380ae34"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241114/TensorFlowLiteCMetal.xcframework.zip", checksum: "a3e497694da11214feb46f68d530442d58cf4761e28a14be38620faf29b782c5"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
