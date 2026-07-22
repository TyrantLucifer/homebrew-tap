class Amsftp < Formula
  desc "Vim-first two-pane SFTP file manager"
  homepage "https://github.com/TyrantLucifer/awesome-sftp-cli"
  version "0.1.9"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.9/amsftp_0.1.9_darwin_arm64.tar.gz"
      sha256 "9a9aaa2aabc79ce0433dbd2b07ded8b7b63c09dfd8957eab0b4e54a9e3ccc262"
    end
    on_intel do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.9/amsftp_0.1.9_darwin_amd64.tar.gz"
      sha256 "66290dec2330d705be0fbfbe4391f673d40bcecc784f3be02974bb77db40bfba"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.9/amsftp_0.1.9_linux_arm64.tar.gz"
      sha256 "4ac69ec0cef85ee1845471f2e002e9a1f373d6b7b29d4ee9016f21370f1f8018"
    end
    on_intel do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.9/amsftp_0.1.9_linux_amd64.tar.gz"
      sha256 "116205c23b6898f2afa38dea95028d898536e2fa094a817195df6c2e96993309"
    end
  end

  def install
    bin.install "amsftp"
    man1.install "share/man/man1/amsftp.1"
    generate_completions_from_executable(bin/"amsftp", "completion")
  end

  test do
    assert_match "0.1.9", shell_output("#{bin}/amsftp --version")
  end
end
