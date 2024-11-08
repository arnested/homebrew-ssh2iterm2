# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ssh2iterm2 < Formula
  desc "Create iTerm2 dynamic profile from SSH config"
  homepage "https://github.com/arnested/ssh2iterm2"
  version "1.1.79"
  depends_on :macos

  on_intel do
    url "https://github.com/arnested/ssh2iterm2/releases/download/v1.1.79/ssh2iterm2_1.1.79_darwin_amd64.tar.gz"
    sha256 "1e01ad401cb93dc24ee89923014b2a8ba1fd41c39cb5ebed6f94f3b8275daf66"

    def install
      bin.install "ssh2iterm2"
    end
  end
  on_arm do
    url "https://github.com/arnested/ssh2iterm2/releases/download/v1.1.79/ssh2iterm2_1.1.79_darwin_arm64.tar.gz"
    sha256 "ad379fa4c2ccdeb3236142afd29abc1b17d2342b59abf53812dc18aa3be4cd94"

    def install
      bin.install "ssh2iterm2"
    end
  end

  service do
    run [opt_bin/"ssh2iterm2", "watch"]
    keep_alive true
  end
end
