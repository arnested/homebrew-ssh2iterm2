# This file was generated by GoReleaser. DO NOT EDIT.
class Ssh2iterm2 < Formula
  desc "Create iTerm2 dynamic profile from SSH config"
  homepage "https://github.com/arnested/ssh2iterm2"
  version "0.7.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/arnested/ssh2iterm2/releases/download/0.7.0/ssh2iterm2_0.7.0_darwin_amd64.tar.gz"
    sha256 "7ea5db9ec705fd9cff47c8249eb107dbaa5c32b994e78ba2edf3b3b35e2e7de9"
  elsif OS.linux?
  end

  def install
    bin.install "ssh2iterm2"
  end
end
