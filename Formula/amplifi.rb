class Amplifi < Formula
  desc "Inspect and control Ubiquiti AmpliFi routers over the local control protocol"
  homepage "https://github.com/borud/amplifi"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/borud/amplifi/releases/download/v0.1.0/amplifi_v0.1.0_darwin_arm64.tar.gz"
      sha256 "f9237da400a6b6fd5e1b33c59d5fd37a6fcee1e0c6dedfa5acbf5643ed74cf8a"
    end
    on_intel do
      url "https://github.com/borud/amplifi/releases/download/v0.1.0/amplifi_v0.1.0_darwin_amd64.tar.gz"
      sha256 "42da43c633baa0c99848886633932ef1bee665561468ac45bc8b1515e8bd1c9e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/borud/amplifi/releases/download/v0.1.0/amplifi_v0.1.0_linux_arm64.tar.gz"
      sha256 "8a532b645eb0ef16ac2f6f5e4913f7ce89e297098adf6046f5ae730cf6ad076d"
    end
    on_intel do
      url "https://github.com/borud/amplifi/releases/download/v0.1.0/amplifi_v0.1.0_linux_amd64.tar.gz"
      sha256 "d4c5797577d2c3eeef4f2a077fa3ef1f609a0aca8176e2685c8b0a881549546b"
    end
  end

  def install
    bin.install "amplifi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/amplifi --version")
  end
end
