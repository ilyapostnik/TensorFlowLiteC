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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240831/TensorFlowLiteC.xcframework.zip", checksum: "18cfd8071c22df396f3a5a4dc4d16af50fb8ba150711fe63713803892160b535"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240831/TensorFlowLiteCCoreML.xcframework.zip", checksum: "b5f902e4f3615a84c94d830adf55b35275c5317a643602246deda22170674855"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240831/TensorFlowLiteCMetal.xcframework.zip", checksum: "99dd3def595f90fda64459c33cebc17ddc092f3ef9e51ac965d37ba1837db6c5"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
