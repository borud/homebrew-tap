class Amplifi < Formula
  desc "Inspect and control Ubiquiti AmpliFi routers over the local control protocol"
  homepage "https://github.com/borud/amplifi"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/borud/amplifi/releases/download/v0.1.1/amplifi_v0.1.1_darwin_arm64.tar.gz"
      sha256 "2a309f6c69ca4c54574bfe434f074938233598bdf2941b27dd31c592c36a5184"
    end
    on_intel do
      url "https://github.com/borud/amplifi/releases/download/v0.1.1/amplifi_v0.1.1_darwin_amd64.tar.gz"
      sha256 "cce1376bf02fa8a3ac1f3bd15b3883b6e96d0bd82b263228d3b2b2627ac1f096"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/borud/amplifi/releases/download/v0.1.1/amplifi_v0.1.1_linux_arm64.tar.gz"
      sha256 "973578c293d47ab09bac21a2c1d2c9201c69921cb794136c1da3d4770ce6a774"
    end
    on_intel do
      url "https://github.com/borud/amplifi/releases/download/v0.1.1/amplifi_v0.1.1_linux_amd64.tar.gz"
      sha256 "077d99790b27d0de713ef688731a430ddb2e76eeba0ed4052125d302a5d98ae4"
    end
  end

  def install
    bin.install "amplifi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/amplifi --version")
  end
end
