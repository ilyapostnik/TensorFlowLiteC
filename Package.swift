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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240904/TensorFlowLiteC.xcframework.zip", checksum: "235d8b0806e5d2271b19ecedd486417e97fd9ad92f06dabe58f3f873c00a1446"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240904/TensorFlowLiteCCoreML.xcframework.zip", checksum: "2ead84d13bc88de6b294b1ecab2fac0ec2eba4558edfb1cb53c290ea1bf75e05"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240904/TensorFlowLiteCMetal.xcframework.zip", checksum: "c8b602af103076225e0ea6b33cc50fe4138c286cebd353cfd17ec930ba6d0298"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
