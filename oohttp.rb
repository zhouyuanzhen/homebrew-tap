class Oohttp < Formula
    desc "oohttp is a golang binary tool for quickstart a local webserver"
    homepage "https://github.com/zhouyuanzhen/oohttp"
    url "https://github.com/zhouyuanzhen/oohttp/releases/download/v0.9.0/oohttp_macos"
    version "v0.9.0"
    sha256 "d9e9e1365491833a8cad4c98687af25407aec1aafa6dbd6c6d768ad9571d12a5"
  
    def install
        bin.install "oohttp_macos"
    end

    test do
        assert_match version.to_s, shell_output("#{bin}/oohttp_macos show usage info")
    end
end
