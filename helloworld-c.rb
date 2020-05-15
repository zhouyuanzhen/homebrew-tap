require 'formula'

class HelloworldC < Formula 
    
    desc "C Helloworld homebrew"
    homepage 'http://github.com/zhouyuanzhen/helloworld'
    head 'https://github.com/zhouyuanzhen/helloworld.git'
    version "0.1"

    # depends_on 'make' => :build if MacOS::Xcode.version.to_f >= 4.3

    def install
        system "cd c; make build"

        bin.install "c/helloworld" => "helloworld-c"
    end

    def test
        puts 'Run test ...'
        ohai `helloworld-c`.chomp
    end

end
