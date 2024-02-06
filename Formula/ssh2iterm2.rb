# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ssh2iterm2 < Formula
  desc "Create iTerm2 dynamic profile from SSH config"
  homepage "https://github.com/arnested/ssh2iterm2"
  version "1.1.47"
  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/arnested/ssh2iterm2/releases/download/v1.1.47/ssh2iterm2_1.1.47_darwin_arm64.tar.gz"
    sha256 "a06300791e0494609aa0c4ba7a8c942443579c7dd5d7161934d5a908bb825fe0"

    def install
      bin.install "ssh2iterm2"
    end
  end
  if Hardware::CPU.intel?
    url "https://github.com/arnested/ssh2iterm2/releases/download/v1.1.47/ssh2iterm2_1.1.47_darwin_amd64.tar.gz"
    sha256 "268b2dec4319153b9657b962b7d981b3d67dddc0a07fe58e76f531062b7efed2"

    def install
      bin.install "ssh2iterm2"
    end
  end

  service do
    run [opt_bin/"ssh2iterm2", "watch"]
    keep_alive true
  end
end
