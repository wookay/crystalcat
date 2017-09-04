require "./spec_helper"

module MultipleDispatch
   def f(n : Number)
     n+2
   end

   def f(s : String)
     s+"B"
   end
end

include MultipleDispatch

describe MultipleDispatch do
  it "multiple dispatch" do
     f(1).should eq(3)
     f("a").should eq("aB")
  end
end
