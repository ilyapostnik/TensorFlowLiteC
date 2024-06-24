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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240623/TensorFlowLiteC.xcframework.zip", checksum: "6d921f134fa9d00b833871106da6cff87902d0d7d649e1d65d51bdd92b12da6d"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240623/TensorFlowLiteCCoreML.xcframework.zip", checksum: "38c266fd5f0ab2e5d72369518a7138b2b6ed6c07f22f84b34820fad36446a972"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240623/TensorFlowLiteCMetal.xcframework.zip", checksum: "8fbeab4cce1da15355b8dd7246be039556353cabdbe8681b62b7b518a79c7b5e"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
