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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250115/TensorFlowLiteC.xcframework.zip", checksum: "bce3f630162fb8e9296ebc32d816d7a69906a9707fee5de68fdb38f29b6a789a"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250115/TensorFlowLiteCCoreML.xcframework.zip", checksum: "91ae20f294e30bed29845637cc9f8448db6e3363c3277409bab7168baee3aecb"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250115/TensorFlowLiteCMetal.xcframework.zip", checksum: "60185cdcbf4774993885524eb649a3c35bbcfc03c4330087454d3ef718729ac0"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
