// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "s2s_sdk_tvos",
    platforms: [
        .tvOS(.v15),
    ],
    products: [
        // Define separate products for each target to keep them isolated
        .library(name: "AVPlayer-GoogleAds", targets: ["s2s_sdk_tvos_avplayer_googleAds"]),
        .library(name: "Bitmovin", targets: ["s2s_sdk_tvos_bitmovin"]),
        .library(name: "AgentOnly", targets: ["s2s_sdk_tvos_agent_only"])
    ],
    targets: [
        .binaryTarget(
            name: "s2s_sdk_tvos_avplayer_googleAds",
            url: "https://s3.eu-central-1.amazonaws.com/download.sensic.net/s2s/sdk/ios/1.20.4/s2s_sdk_tvos_avplayer_googleAds.zip",
            checksum: "8a985f46f8067814dd196afc01db7d9d8d4958852c7df6b5066663fe84c93d44"
        ),
        .binaryTarget(
            name: "s2s_sdk_tvos_bitmovin",
            url: "https://s3.eu-central-1.amazonaws.com/download.sensic.net/s2s/sdk/ios/1.20.4/s2s_sdk_tvos_bitmovin.zip",
            checksum: "669543561b0701939c2bb06e704247ae79a098bbcbd1b3cf52dc5b86ba389896"
        ),
        .binaryTarget(
            name: "s2s_sdk_tvos_agent_only",
            url: "https://s3.eu-central-1.amazonaws.com/download.sensic.net/s2s/sdk/ios/1.20.4/s2s_sdk_tvos_agent_only.zip",
            checksum: "1f86d4d1dc2442bf50fc1e0a847d4cc458d2ea3e00549c746d3a5d33be191214"
        ),
    ]
)