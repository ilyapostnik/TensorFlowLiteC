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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250504/TensorFlowLiteC.xcframework.zip", checksum: "303febff6b992dfdad0e8bee52d828275eecebf78f0055bdae3d2daf43bceb13"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250504/TensorFlowLiteCCoreML.xcframework.zip", checksum: "62bb4ae618dd78e565988ea6a1720e26ccca9f474c033d9f22cec50bd34d3785"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250504/TensorFlowLiteCMetal.xcframework.zip", checksum: "1c44444b120dccea0dad26aa1a6cc5257140844591e809aaa9e87f428ae1493f"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
