// swift-tools-version: 5.8
import PackageDescription

let package = Package(
    name: "TUSafariActivity",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(name: "TUSafariActivity", targets: ["TUSafariActivity"]),
    ],
    targets: [
        .target(
            name: "TUSafariActivity",
            path: "Sources",
            publicHeadersPath: "Classes"
        )
    ]
)
