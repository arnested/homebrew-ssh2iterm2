# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ssh2iterm2 < Formula
  desc "Create iTerm2 dynamic profile from SSH config"
  homepage "https://github.com/arnested/ssh2iterm2"
  version "0.12.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/arnested/ssh2iterm2/releases/download/v0.12.0/ssh2iterm2_0.12.0_darwin_amd64.tar.gz"
    sha256 "44b943658444c8eea50b7999b2ffa53dbb7f77c7487546ddf8400e7e3decee96"
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
