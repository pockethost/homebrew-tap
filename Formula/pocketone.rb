# typed: false
# frozen_string_literal: true

# Bridge until the next PocketOne release: v0.0.1 assets, binary installed as pocketone. GoReleaser overwrites this file.
class Pocketone < Formula
  desc "PocketOne, a community fork of PocketBase with plugins (pages, pocker and more)"
  homepage "https://github.com/pockethost/pocketone"
  version "0.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/pockethost/pocketone/releases/download/v0.0.1/pocketbase_0.0.1_darwin_amd64.zip"
      sha256 "2a39c14656a9634e1d40fe09cde62a63eef901d48311548960186a3421212878"

      define_method(:install) do
        bin.install "pocketbase" => "pocketone"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/pockethost/pocketone/releases/download/v0.0.1/pocketbase_0.0.1_darwin_arm64.zip"
      sha256 "f52644523ef99d9b3c7bcdc7bfdb6f9fd0472f525a4d83ecb701c77826b42185"

      define_method(:install) do
        bin.install "pocketbase" => "pocketone"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/pockethost/pocketone/releases/download/v0.0.1/pocketbase_0.0.1_linux_amd64.zip"
      sha256 "6569aeee2d84bd4114122bffafddce2fcadea2c844eb8417fff3ec7b4304df91"
      define_method(:install) do
        bin.install "pocketbase" => "pocketone"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pockethost/pocketone/releases/download/v0.0.1/pocketbase_0.0.1_linux_arm64.zip"
      sha256 "6bc5bc423e292f3c705a1c3bd564c76cfbc1d094f04d0ab2638f40b7a818cf5a"
      define_method(:install) do
        bin.install "pocketbase" => "pocketone"
      end
    end
  end

  test do
    system "#{bin}/pocketone", "--version"
  end
end
