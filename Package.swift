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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240707/TensorFlowLiteC.xcframework.zip", checksum: "ba2903c79ce545587f3d0017a3d5b660841d350e91fa66da0f6dc12fbcce540a"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240707/TensorFlowLiteCCoreML.xcframework.zip", checksum: "d909caeca89bd7b2fb1b490dd2daa4d2001bed6a872fcb8c0812de9a7694aa47"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240707/TensorFlowLiteCMetal.xcframework.zip", checksum: "4673ea6bcbeb0bb7ec8936740ddf054bae0da536abe27237a75cf96f171b9391"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
