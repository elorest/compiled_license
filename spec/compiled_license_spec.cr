require "./spec_helper"

describe CompiledLicense do
  licenses = {{ run("../src/compiled_license/licenses.cr").stringify }}

  it "should return string" do
    (licenses.size > 20).should be_true
  end

  it "should include license of current file" do
    licenses.should contain("Compiled_license")
  end

  it "should contain name of author from license file" do
    licenses.should contain("Isaac Sloan")
  end

  it "should contain more than one license" do
    delimiter = "\n\n"
    (licenses.split(delimiter).size > 1).should be_true 
  end
end
