// swift-tools-version: 5.8
import PackageDescription

let package = Package(
    name: "TUSafariActivity",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(name: "TUSafariActivity", targets: ["TUSafariActivity"]),
    ],
    targets: [
        .target(
            name: "TUSafariActivity",
            path: "Sources",
            resources: [
                .copy("Assets/TUSafariActivity-Images.xcassets"),
                .process("Resources")
            ]
        )
    ]
)
