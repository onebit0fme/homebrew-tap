class Tv < Formula
  desc "Is your build's speed real throughput, or just thrashing? A git-status for build-flow health"
  homepage "https://github.com/onebit0fme/terminal-velocity"
  version "0.1.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/onebit0fme/terminal-velocity/releases/download/v0.1.0/tv-aarch64-apple-darwin.tar.gz"
      sha256 "9118f5ed8a76f88fa56dad4b3037bc6cde1fade9f22548b81aa1403b82c2debc"
    end
    on_intel do
      url "https://github.com/onebit0fme/terminal-velocity/releases/download/v0.1.0/tv-x86_64-apple-darwin.tar.gz"
      sha256 "282e12076aae055081027e958fd75b9c20b7c30fac82c3511f5fa4bc803c96fb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/onebit0fme/terminal-velocity/releases/download/v0.1.0/tv-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e2e1c8d3f2a791bb7fd887c2eacf578b4a71ba356208d9339485db56356a3ac7"
    end
    on_intel do
      url "https://github.com/onebit0fme/terminal-velocity/releases/download/v0.1.0/tv-x86_64-unknown-linux-musl.tar.gz"
      sha256 "cb12f096c774886b3ba42e712294044e6a6090622ae5d23dc2231baef58d9b0e"
    end
  end

  def install
    bin.install "tv"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tv --version")
  end
end
