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
            url: "https://s3.eu-central-1.amazonaws.com/download.sensic.net/s2s/sdk/ios/1.20.2/s2s_sdk_tvos_avplayer_googleAds.zip",
            checksum: "602a2011c6f1d16ee5a3d0951d887fe251c8f782c6d5ed6acd622f93e328878f"
        ),
        .binaryTarget(
            name: "s2s_sdk_tvos_bitmovin",
            url: "https://s3.eu-central-1.amazonaws.com/download.sensic.net/s2s/sdk/ios/1.20.2/s2s_sdk_tvos_bitmovin.zip",
            checksum: "56162d38672ffe7f19bab99a203344d1d80bf5ac2b89ab2e233525d2c8069f6f"
        ),
        .binaryTarget(
            name: "s2s_sdk_tvos_agent_only",
            url: "https://s3.eu-central-1.amazonaws.com/download.sensic.net/s2s/sdk/ios/1.20.2/s2s_sdk_tvos_agent_only.zip",
            checksum: "3ce26acd70b62fce819ab4790d071097dacb2a4beb65c474fe3d496b561453dd"
        ),
    ]
)