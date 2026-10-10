class Amplifi < Formula
  desc "Inspect and control Ubiquiti AmpliFi routers over the local control protocol"
  homepage "https://github.com/borud/amplifi"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/borud/amplifi/releases/download/v0.1.2/amplifi_v0.1.2_darwin_arm64.tar.gz"
      sha256 "f2015c6184ef1dbc4aa8006b9edbec5b99515e4bff753efe637c3c031aa53a48"
    end
    on_intel do
      url "https://github.com/borud/amplifi/releases/download/v0.1.2/amplifi_v0.1.2_darwin_amd64.tar.gz"
      sha256 "b326328585228d9fee20f56cb1051810ba4823974aeb2302ce52ad6b49a493bc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/borud/amplifi/releases/download/v0.1.2/amplifi_v0.1.2_linux_arm64.tar.gz"
      sha256 "a230e28034e53b06894191cfb7e64c5195f0dd2d81d88b7d46f5ef61057c9ed7"
    end
    on_intel do
      url "https://github.com/borud/amplifi/releases/download/v0.1.2/amplifi_v0.1.2_linux_amd64.tar.gz"
      sha256 "c4552728deb1b07d57b948905d48fb3d23a11eab4247c9190633e5a4389d4a37"
    end
  end

  def install
    bin.install "amplifi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/amplifi --version")
  end
end
