// swift-tools-version:5.3
import PackageDescription

// BEGIN KMMBRIDGE VARIABLES BLOCK (do not edit)
let remoteKotlinUrl = "https://maven.pkg.github.com/prof18/news-reader-kmp-kmmbridge/com/example/newsreaderkmp/shared-kmmbridge/0.0.1/shared-kmmbridge-0.0.1.zip"
let remoteKotlinChecksum = "6fdd6d7787ce24ebb22897d3f8afa0bb3daf45d897428649e27d76389c44fe41"
let packageName = "NewsReaderKMP"
// END KMMBRIDGE BLOCK

let package = Package(
    name: packageName,
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: packageName,
            targets: [packageName]
        ),
    ],
    targets: [
        .binaryTarget(
            name: packageName,
            url: remoteKotlinUrl,
            checksum: remoteKotlinChecksum
        )
        ,
    ]
)