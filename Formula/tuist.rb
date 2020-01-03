class Tuist < Formula
  desc "Generate, maintain, and interact with Xcode projects easily"
  homepage "https://tuist.io"
  url "https://github.com/tuist/tuist/releases/download/1.1.0/tuistenv.zip"
  sha256 "6ccac37df483d88bbc89f6c43ad7b06aaa505bd9d5d793f42ae67c8a165e423e"

  def install
    File.rename("tuistenv", "tuist")
    bin.install "tuist"
  end

  test do
    # Shows all available commands
    system "#{bin}/tuist", "--help-env"
    # Pins tuist to the given version
    system "#{bin}/tuist", "local", "1.1.0"
  end
end
