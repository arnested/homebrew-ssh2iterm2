# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ssh2iterm2 < Formula
  desc "Create iTerm2 dynamic profile from SSH config"
  homepage "https://github.com/arnested/ssh2iterm2"
  version "1.0.12"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/arnested/ssh2iterm2/releases/download/v1.0.12/ssh2iterm2_1.0.12_darwin_amd64.tar.gz"
    sha256 "0548065330c32319227ba02fb295ff5ff14ee5e430ff04ec6e1d00f05c1e0454"
  end

  def install
    bin.install "ssh2iterm2"
  end

  plist_options :startup => false

  def plist; <<~EOS
    <?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
  <dict>
    <key>Label</key>
    <string>#{plist_name}</string>
    <key>ProgramArguments</key>
    <array>
      <string>#{opt_bin}/ssh2iterm2</string>
      <string>watch</string>
    </array>
    <key>RunAtLoad</key>
    <true/>
    <key>KeepAlive</key>
    <true/>
  </dict>
</plist>

  EOS
  end
end
