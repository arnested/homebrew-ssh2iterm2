# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ssh2iterm2 < Formula
  desc "Create iTerm2 dynamic profile from SSH config"
  homepage "https://github.com/arnested/ssh2iterm2"
  version "1.1.36"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arnested/ssh2iterm2/releases/download/v1.1.36/ssh2iterm2_1.1.36_darwin_arm64.tar.gz"
      sha256 "214f5b5bb407d8e75cc96dd387dca00ab1b4283fb0a513d71fb67e09596f47e4"

      def install
        bin.install "ssh2iterm2"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/arnested/ssh2iterm2/releases/download/v1.1.36/ssh2iterm2_1.1.36_darwin_amd64.tar.gz"
      sha256 "8f1b98565237d602d4bb13dbecc11875830888bbbc4d431818bba74a694cb704"

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
