class Ahyve < Formula
  desc "A lightweight virtualize engine for macOS."
  homepage "https://github.com/zhouyuanzhen"
  version "0..0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://zhouyuanzhen.github.io/files/avm/ahyve"
      sha256 "00f06cad6496eed04271186126ee1a88060390a00bf8aff1d624cc4819748790"

      def install
        bin.install "ahyve"
      end
    end
  end

end
