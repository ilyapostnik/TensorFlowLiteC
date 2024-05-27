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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240526/TensorFlowLiteC.xcframework.zip", checksum: "9d72cce03cd38ea74becfc661384df08017e5db541def1f30103afffe4bedcaa"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240526/TensorFlowLiteCCoreML.xcframework.zip", checksum: "c64188ed47013087557ad151d4d786c54f41c3c66ef7fbe1f1febe60b9dd96cd"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240526/TensorFlowLiteCMetal.xcframework.zip", checksum: "172e52a2c8fd116d4acb58b89390946fd5e9dca0a08340d7b821013fdf3b738c"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
