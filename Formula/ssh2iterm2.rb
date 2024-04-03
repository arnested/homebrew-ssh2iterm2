# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ssh2iterm2 < Formula
  desc "Create iTerm2 dynamic profile from SSH config"
  homepage "https://github.com/arnested/ssh2iterm2"
  version "1.1.57"
  depends_on :macos

  if Hardware::CPU.intel?
    url "https://github.com/arnested/ssh2iterm2/releases/download/v1.1.57/ssh2iterm2_1.1.57_darwin_amd64.tar.gz"
    sha256 "0ff140eee79691ee384cac229831c90fc090b49fc6d3354fc2103c66f6675bd5"

    def install
      bin.install "ssh2iterm2"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/arnested/ssh2iterm2/releases/download/v1.1.57/ssh2iterm2_1.1.57_darwin_arm64.tar.gz"
    sha256 "eb35572ad503f570566c3b5daae4e4b9d5f1466810149225fe0dca8b1109f9ca"

    def install
      bin.install "ssh2iterm2"
    end
  end

  service do
    run [opt_bin/"ssh2iterm2", "watch"]
    keep_alive true
  end
end
