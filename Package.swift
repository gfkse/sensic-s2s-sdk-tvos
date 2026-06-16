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
            url: "https://s3.eu-central-1.amazonaws.com/download.sensic.net/s2s/sdk/ios/1.19.22/s2s_sdk_tvos_avplayer_googleAds.zip",
            checksum: "8a74ac0945b0504676b22a6052c20ae5e2443951a055f6d8d2a9229ad54731ec"
        ),
        .binaryTarget(
            name: "s2s_sdk_tvos_bitmovin",
            url: "https://s3.eu-central-1.amazonaws.com/download.sensic.net/s2s/sdk/ios/1.19.22/s2s_sdk_tvos_bitmovin.zip",
            checksum: "f7bb7f2556491008308e78b2b9fb33fd98bb07dad211244d1a503a92c376e0db"
        ),
        .binaryTarget(
            name: "s2s_sdk_tvos_agent_only",
            url: "https://s3.eu-central-1.amazonaws.com/download.sensic.net/s2s/sdk/ios/1.19.22/s2s_sdk_tvos_agent_only.zip",
            checksum: "4c1c8e52bbc2d5b3824ceb02450329acf84919d5ab16d856b072be78afdb2b2f"
        ),
    ]
)
