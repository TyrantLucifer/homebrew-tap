class Amsftp < Formula
  desc "Vim-first two-pane SFTP file manager"
  homepage "https://github.com/TyrantLucifer/awesome-sftp-cli"
  version "0.1.15"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.15/amsftp_0.1.15_darwin_arm64.tar.gz"
      sha256 "5e266bb75c63c924e646818ea91c2ce44db31e5c604bc91617148bfd6469f319"
    end
    on_intel do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.15/amsftp_0.1.15_darwin_amd64.tar.gz"
      sha256 "3158b0544ad19ea729f5378536e8f156b9b7ecdde8f6f487534d5c3af608f91a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.15/amsftp_0.1.15_linux_arm64.tar.gz"
      sha256 "8d83146e6136e89aed905440cf1f665d11826e7c0bd12a44c8e59dc87c3e2d3f"
    end
    on_intel do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.15/amsftp_0.1.15_linux_amd64.tar.gz"
      sha256 "7be3489bb09a5d9f051e35f9d2bda08ce82eb2796fea158a90cbac57a8b8530d"
    end
  end

  def install
    bin.install "amsftp"
    man1.install "share/man/man1/amsftp.1"
    generate_completions_from_executable(bin/"amsftp", "completion")
  end

  test do
    assert_match "0.1.15", shell_output("#{bin}/amsftp --version")
  end
end
