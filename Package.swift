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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240518/TensorFlowLiteC.xcframework.zip", checksum: "63edc352c81f0533e7e783c38617e65a87916ff1a972e39346cc9be1e0aedb24"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240518/TensorFlowLiteCCoreML.xcframework.zip", checksum: "41b48bd84f59f97801270e28970daca3e47ac2a031ed6c59f850b1297393812b"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240518/TensorFlowLiteCMetal.xcframework.zip", checksum: "3abc9c520d87f289224aa99e49afa65f921651d00716885c17070dfe3f9c57a7"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
