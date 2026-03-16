class Pldatacli < Formula
  desc "CLI for fast CSV analysis using Polars LazyFrame"
  homepage "https://github.com/utkarshg1/pldatacli"
  url "https://files.pythonhosted.org/packages/source/p/pldatacli/pldatacli-0.2.0.tar.gz"
  sha256 "39dd5c4e49cc4bc594ff9fa54d07516a492a83da41ecc5bb26edf629f63c04e1"
  license "MIT"

  depends_on "uv" => :build

  def install
    venv_path = libexec/".venv"
    system Formula["uv"].opt_bin/"uv", "venv", venv_path.to_s
    system Formula["uv"].opt_bin/"uv", "pip", "install",
      "--python", (venv_path/"bin/python").to_s,
      "pldatacli"
    (bin/"pldatacli").write_env_script(
    venv_path/"bin/pldatacli",
    PYTHONPATH: (venv_path/"lib/python3.12/site-packages").to_s
  )
  end

  test do
    system "#{bin}/pldatacli", "--version"
  end
end
