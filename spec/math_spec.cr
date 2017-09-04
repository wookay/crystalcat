require "./spec_helper"

include Math

describe Math do
  it "math" do
    -1.abs.should eq(1)
    typeof(PI).should eq(Float64)
  end
end
