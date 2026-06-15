// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "s2s_sdk_tvos",
    platforms: [
        .tvOS(.v15),
    ],
    products: [
        // Define separate products for each target to keep them isolated
        .library(name: "AVPlayer-GoogleAds-tvOS", targets: ["s2s_sdk_tvos_avplayer_googleAds"]),
        .library(name: "Bitmovin-tvOS", targets: ["s2s_sdk_tvos_bitmovin"]),
        .library(name: "AgentOnly-tvOS", targets: ["s2s_sdk_tvos_agent_only"])
    ],
    targets: [
        .binaryTarget(
            name: "s2s_sdk_tvos_avplayer_googleAds",
            url: "https://s3.eu-central-1.amazonaws.com/download.sensic.net/s2s/sdk/ios/1.19.21/s2s_sdk_tvos_avplayer_googleAds.zip",
            checksum: "f035111d1c4d2bed73f1593aa465c84af05b8325389fae669835d8be8f1919e2"
        ),
        .binaryTarget(
            name: "s2s_sdk_tvos_bitmovin",
            url: "https://s3.eu-central-1.amazonaws.com/download.sensic.net/s2s/sdk/ios/1.19.21/s2s_sdk_tvos_bitmovin.zip",
            checksum: "41ad3a827fbdc9bf3dbc10a09567f2de4066a504ee4cd1fb572a36c8214c3b18"
        ),
        .binaryTarget(
            name: "s2s_sdk_tvos_agent_only",
            url: "https://s3.eu-central-1.amazonaws.com/download.sensic.net/s2s/sdk/ios/1.19.21/s2s_sdk_tvos_agent_only.zip",
            checksum: "f399d2f577af66fbf5b2e4336c1166fcf7b609c6a01a117249d1160024f75343"
        ),
    ]
)
