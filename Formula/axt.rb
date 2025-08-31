class Axt < Formula
  desc "structured logs but forcibly gemütlich"
  homepage "https://github.com/ctholho/axt"
  version "0.7.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ctholho/axt/releases/download/v0.7.0/axt-darwin-arm64"
      sha256 "2e93a10c567d1e6337f07c501e5897f0ddb5b93b73e6c687733d3b575c96f348"
    else
      url "https://github.com/ctholho/axt/releases/download/v0.7.0/axt-darwin-amd64"
      sha256 "36d047c7a2518c30521b0d1e8188f4ffe1a6e44c379a7bbd3dc424e1bcea4060"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ctholho/axt/releases/download/v0.7.0/axt-linux-amd64"
      sha256 "fbcbcc4ad0a343b7b0954e8dafc785f95dccf15da8719dbc330b962a129827e1"
    else
      url "https://github.com/ctholho/axt/releases/download/v0.7.0/axt-linux-arm64"
      sha256 "7c34629f18f86a181c0a7c34bebb3721baed2ddaf620fbdc6af2d8e1a2bcc0f0"
    end
  end

  def install
    bin.install File.basename(resource.url) => "axt"
  end

  test do
    system "#{bin}/axt", "--version"
  end
end
