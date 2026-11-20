// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "LumiProviderConversationState",
    platforms: [.macOS("14.0"), .iOS(.v17)],
    products: [
        .library(name: "ProviderConversationState", targets: ["ProviderConversationState"]),
    ],
    dependencies: [
        .package(url: "https://github.com/lumi-softworks/LumiProviderAgentLoop.git", from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "ProviderConversationState",
            dependencies: [
                .product(name: "ProviderAgentLoop", package: "LumiProviderAgentLoop"),
            ],
            path: "Sources/ProviderConversationState"
        ),
        .testTarget(
            name: "ProviderConversationStateTests",
            dependencies: ["ProviderConversationState"]
        ),
    ]
)
