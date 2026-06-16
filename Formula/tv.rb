class Tv < Formula
  desc "Is your build's speed real throughput, or just thrashing? A git-status for build-flow health"
  homepage "https://github.com/onebit0fme/terminal-velocity"
  version "0.3.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/onebit0fme/terminal-velocity/releases/download/v0.3.0/tv-aarch64-apple-darwin.tar.gz"
      sha256 "d694c79228ab1d0f0c0ae5419424f3acb5e0d730eb84e408731f3eae1ee27020"
    end
    on_intel do
      url "https://github.com/onebit0fme/terminal-velocity/releases/download/v0.3.0/tv-x86_64-apple-darwin.tar.gz"
      sha256 "aab628f40b957fa4dd8d3a1ce541f7088699d8b7b77f3801feb049bd75a78da4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/onebit0fme/terminal-velocity/releases/download/v0.3.0/tv-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ac3976b991c4afb3987e2c538af75cd7e2217ff094276c20821df0a687bd29ba"
    end
    on_intel do
      url "https://github.com/onebit0fme/terminal-velocity/releases/download/v0.3.0/tv-x86_64-unknown-linux-musl.tar.gz"
      sha256 "76ff48db103be2182cd705b5774d4df280e0c910247bc93d291519d386c2787f"
    end
  end

  def install
    bin.install "tv"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tv --version")
  end
end
