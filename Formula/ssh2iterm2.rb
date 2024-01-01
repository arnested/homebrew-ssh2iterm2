# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ssh2iterm2 < Formula
  desc "Create iTerm2 dynamic profile from SSH config"
  homepage "https://github.com/arnested/ssh2iterm2"
  version "1.1.42"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arnested/ssh2iterm2/releases/download/v1.1.42/ssh2iterm2_1.1.42_darwin_arm64.tar.gz"
      sha256 "d4dd4ecbd05e2c09de035e0ee6d3dd68561604cf7a8f871275a20ce4fd4cf585"

      def install
        bin.install "ssh2iterm2"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/arnested/ssh2iterm2/releases/download/v1.1.42/ssh2iterm2_1.1.42_darwin_amd64.tar.gz"
      sha256 "e9a6b616a43be778c23c3b7e52d1846f10f3fa3fa7268d8b4b11b8a1bdda8b6e"

      def install
        bin.install "ssh2iterm2"
      end
    end
  end

  service do
    run [opt_bin/"ssh2iterm2", "watch"]
    keep_alive true
  end
end
