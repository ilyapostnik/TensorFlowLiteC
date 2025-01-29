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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250128/TensorFlowLiteC.xcframework.zip", checksum: "258e02937c74850cd283594d83e9bb9a1c21778de0b5ed6e2af3b99d749d9ea7"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250128/TensorFlowLiteCCoreML.xcframework.zip", checksum: "d747be80a4a899d4d69d97cfced289d7bccf772444131a3481928c44c13a3cfe"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250128/TensorFlowLiteCMetal.xcframework.zip", checksum: "c58ad64daf42bf9ec5f1071053c42d60400042580e488e19499b485580341522"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
