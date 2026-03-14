class Pldatacli < Formula
  desc "CLI for fast CSV analysis using Polars LazyFrame"
  homepage "https://github.com/utkarshg1/pldatacli"
  url "https://files.pythonhosted.org/packages/source/p/pldatacli/pldatacli-0.1.8.tar.gz"
  sha256 "fbacf7e2046eca81e8e62b0194ff74a3f1441892667f4b9c72767722cad1c408"
  license "MIT"

  depends_on "python@3.12"

  def install
    system "python3.12", "-m", "pip", "install", *std_pip_args, "pldatacli"
  end

  test do
    system "#{bin}/pldatacli", "--version"
  end
end
