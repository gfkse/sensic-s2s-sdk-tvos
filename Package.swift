// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "s2s_sdk_tvos",
    platforms: [
        .tvOS(.v15),
    ],
    products: [
        .library(name: "AVPlayer-GoogleAds", targets: ["s2s_sdk_tvos_avplayer_googleAds"]),
        .library(name: "Bitmovin", targets: ["s2s_sdk_tvos_bitmovin"]),
        .library(name: "AgentOnly", targets: ["s2s_sdk_tvos_agent_only"])
    ],
    targets: [
        .binaryTarget(
            name: "s2s_sdk_tvos_avplayer_googleAds",
            path: "./s2s_sdk_tvos_avplayer_googleAds.xcframework"
        ),
        .binaryTarget(
            name: "s2s_sdk_tvos_bitmovin",
            path: "./s2s_sdk_tvos_bitmovin.xcframework"
        ),
        .binaryTarget(
            name: "s2s_sdk_tvos_agent_only",
            path: "./s2s_sdk_tvos_agent_only.xcframework"
        ),
    ]
)
