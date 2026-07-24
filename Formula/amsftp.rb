class Amsftp < Formula
  desc "Vim-first two-pane SFTP file manager"
  homepage "https://github.com/TyrantLucifer/awesome-sftp-cli"
  version "0.1.18"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.18/amsftp_0.1.18_darwin_arm64.tar.gz"
      sha256 "d886f9cfe66cabc09a6388e239866cf3219897b71f55ae33b940e9e007b92b9b"
    end
    on_intel do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.18/amsftp_0.1.18_darwin_amd64.tar.gz"
      sha256 "ae22e4fc65da5d2c71a851721757281d38dd2779239ace78af4d6aa0b896deee"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.18/amsftp_0.1.18_linux_arm64.tar.gz"
      sha256 "bac11e0daf1e22bbc6a591368f483eb3704c066ba286f547ce8ef1da0e84af71"
    end
    on_intel do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.18/amsftp_0.1.18_linux_amd64.tar.gz"
      sha256 "d34bd3de6f09ca22429459efe5a718a8264f864324447acf1b111b63f2a343f9"
    end
  end

  def install
    bin.install "amsftp"
    man1.install "share/man/man1/amsftp.1"
    generate_completions_from_executable(bin/"amsftp", "completion")
  end

  test do
    assert_match "0.1.18", shell_output("#{bin}/amsftp --version")
  end
end
