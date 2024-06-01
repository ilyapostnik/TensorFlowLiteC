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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240531/TensorFlowLiteC.xcframework.zip", checksum: "3108f98d1039c66a976cbee0afdb09562b528edc6eeadabef146332f8ca35707"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240531/TensorFlowLiteCCoreML.xcframework.zip", checksum: "99593a3c73dc21b680f30f6e36a57807df5deb4efd9f6e81fcdfd435a0a76b64"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240531/TensorFlowLiteCMetal.xcframework.zip", checksum: "828cd2caaa827670246275dac838fdfa48aa119fe37f6bca84bb0c8f1d8b783d"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
