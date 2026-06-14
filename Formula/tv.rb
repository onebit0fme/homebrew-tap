class Tv < Formula
  desc "Is your build's speed real throughput, or just thrashing? A git-status for build-flow health"
  homepage "https://github.com/onebit0fme/terminal-velocity"
  version "0.2.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/onebit0fme/terminal-velocity/releases/download/v0.2.0/tv-aarch64-apple-darwin.tar.gz"
      sha256 "5852d1bf06c6061da9033ccab7c79b8d6a97fd8e21afdbfe9e14e100a8b00a5c"
    end
    on_intel do
      url "https://github.com/onebit0fme/terminal-velocity/releases/download/v0.2.0/tv-x86_64-apple-darwin.tar.gz"
      sha256 "74154ea945ee501c0a9fbbcefa179c7ced01eefe832ca7051d6cc3ad873d8cde"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/onebit0fme/terminal-velocity/releases/download/v0.2.0/tv-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f42f75a3b068562450bde221c25ff28513ce0b05e1b738b58c5a94a47bf50967"
    end
    on_intel do
      url "https://github.com/onebit0fme/terminal-velocity/releases/download/v0.2.0/tv-x86_64-unknown-linux-musl.tar.gz"
      sha256 "061bc29cee29c347beb065209ee5b784dc06716463325b7594a77d86bc762cb3"
    end
  end

  def install
    bin.install "tv"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tv --version")
  end
end
