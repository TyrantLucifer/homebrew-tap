class Amsftp < Formula
  desc "Vim-first two-pane SFTP file manager"
  homepage "https://github.com/TyrantLucifer/awesome-sftp-cli"
  version "0.1.22"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.22/amsftp_0.1.22_darwin_arm64.tar.gz"
      sha256 "1b042e4940f11f82a18a348a96229698bb8e6215581fc2e2fc8deb157ee1df1c"
    end
    on_intel do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.22/amsftp_0.1.22_darwin_amd64.tar.gz"
      sha256 "f3647111fb0207e9b035339912e0974063520108b92b984170b0f3e790e39cc7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.22/amsftp_0.1.22_linux_arm64.tar.gz"
      sha256 "dfb9d591fae2638c7b2bbdb71ceaa81b8fefc383f7b20ca72bcbe1b99b5513ed"
    end
    on_intel do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.22/amsftp_0.1.22_linux_amd64.tar.gz"
      sha256 "dcda09a5725f48e929a20e5448bd8b3bd3356cdd6f1ea87d22d047bd6666ea30"
    end
  end

  def install
    bin.install "amsftp"
    man1.install "share/man/man1/amsftp.1"
    generate_completions_from_executable(bin/"amsftp", "completion")
  end

  test do
    assert_match "0.1.22", shell_output("#{bin}/amsftp --version")
  end
end
