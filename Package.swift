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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250426/TensorFlowLiteC.xcframework.zip", checksum: "409c6fbf3b200437c1731f0f1e761efb0cc93a5b574f55fb5edc18b079718daf"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250426/TensorFlowLiteCCoreML.xcframework.zip", checksum: "c1635f468a69ff698fa84730c0e61c5a1d73af082709072e5216d6a3c11f5427"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250426/TensorFlowLiteCMetal.xcframework.zip", checksum: "06e7991521ee9dd4bacdb6b0a98f6da7b3cbf2c1930aecac83614fa06965f502"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
