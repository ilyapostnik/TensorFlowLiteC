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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250324/TensorFlowLiteC.xcframework.zip", checksum: "7e7e3fdc49e200ec448ad10d0d148a10adde4048638d45ad82744a744c35c785"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250324/TensorFlowLiteCCoreML.xcframework.zip", checksum: "3051fc288ea10d65705045e94efbf721151edd00b297f291ab420817f2309956"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250324/TensorFlowLiteCMetal.xcframework.zip", checksum: "84a578ba18903b36cab3428ef15a4420069ea020f488aa886fe384810d91b51e"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
