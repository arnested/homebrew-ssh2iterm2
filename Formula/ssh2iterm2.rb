# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ssh2iterm2 < Formula
  desc "Create iTerm2 dynamic profile from SSH config"
  homepage "https://github.com/arnested/ssh2iterm2"
  version "1.1.73"
  depends_on :macos

  on_intel do
    url "https://github.com/arnested/ssh2iterm2/releases/download/v1.1.73/ssh2iterm2_1.1.73_darwin_amd64.tar.gz"
    sha256 "95a746d2d9de433b56c0edb7855bf7fc24236eb880fc4418c8f6ea4f33ccea6b"

    def install
      bin.install "ssh2iterm2"
    end
  end
  on_arm do
    url "https://github.com/arnested/ssh2iterm2/releases/download/v1.1.73/ssh2iterm2_1.1.73_darwin_arm64.tar.gz"
    sha256 "adc6cab496c7ddfbe491a096885fee2f06728d9b0f648bade6f3d19dab7b7812"

    def install
      bin.install "ssh2iterm2"
    end
  end

  service do
    run [opt_bin/"ssh2iterm2", "watch"]
    keep_alive true
  end
end
