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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250125/TensorFlowLiteC.xcframework.zip", checksum: "a2660d5e23d4baae0477e292c960a8aa40830dc53456bcfc82fe179801efdc54"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250125/TensorFlowLiteCCoreML.xcframework.zip", checksum: "50e373118d630d89d089e2b381363d93d8c171d173ac9efd0dce79a141cc3aa5"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250125/TensorFlowLiteCMetal.xcframework.zip", checksum: "5738d51d28fcf1cb1969b79d58ca7acfb74d8e7264c59bbf171bfa03fc9b7da7"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
