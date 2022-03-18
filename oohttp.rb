class Oohttp < Formula
    desc "oohttp is a golang binary tool for quickstart a local webserver"
    homepage "https://github.com/zhouyuanzhen/oohttp"
    url "https://github.com/zhouyuanzhen/oohttp/releases/download/v0.9.1/oo_http_macos"
    version "v0.9.1"
    sha256 "5d556c0ca986b2487cfc63c35d0675579709a60e59c803a376aa2f19b27defce"
  
    def install
        bin.install "oo_http_macos"
    end

    test do
        assert_match version.to_s, shell_output("#{bin}/oo_http_macos show usage info")
    end
end
