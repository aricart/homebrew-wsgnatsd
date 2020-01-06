# This file was generated by GoReleaser. DO NOT EDIT.
class Wsgnatsd < Formula
  desc "A websocket server proxy for nats-server"
  homepage "https://github.com/aricart/wsgnatsd"
  version "0.8.3"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/aricart/wsgnatsd/releases/download/v0.8.3/wsgnatsd-v0.8.3-darwin-amd64.zip"
    sha256 "cbe746a8e3220373aa8c43c5b2d0d4b3695adba82432bfb8917aee9bb43bd324"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/aricart/wsgnatsd/releases/download/v0.8.3/wsgnatsd-v0.8.3-darwin-amd64.zip"
      sha256 "98127c7360fbc2772d59766fbdb2559747db025ad05ec8df5b92c250eb87d318"
    end
  end

  def install
    bin.install "wsgnatsd"
  end

  test do
    system "#{bin}/wsgnatsd --help"
  end
end
