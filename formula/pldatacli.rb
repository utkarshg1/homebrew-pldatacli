class Pldatacli < Formula
  include Language::Python::Virtualenv

  desc "CLI for fast CSV data analysis using Polars LazyFrame"
  homepage "https://github.com/utkarshg1/pldatacli"
  url "https://files.pythonhosted.org/packages/e8/ac/9b9cc56e827a46f0fd91fd13ca0757c0db5a9f6b8f0a2bbd9018fc9e7e07/pldatacli-0.1.8.tar.gz"
  sha256 "fbacf7e2046eca81e8e62b0194ff74a3f1441892667f4b9c72767722cad1c408"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/pldatacli", "--version"
  end
end
