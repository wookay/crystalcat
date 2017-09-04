require "./spec_helper"

module Type
end

describe Type do
  it "typeof" do
     typeof(1).should eq(Int32)
     typeof(1.0).should eq(Float64)
     typeof(1_i64).should eq(Int64)
     typeof("""
       """).should eq(String)
     (typeof(Int) == Class).should eq(true)
  end

  it "type union" do
      (Int32 | String).should eq(Int32 | String)
      (Int32 | Float64).should eq(Int32 | Float64)
  end

end
