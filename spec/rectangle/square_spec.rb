require 'spec_helper'
module Rectangle
  describe 'Square' do
    context "Validating Input" do
      it "should return error if length and breath is different" do
        Rectangle::Square.new(10,20).build.should == 'Invalid Input'
      end
      it "should return error if length or breath is zero" do
        Rectangle::Square.new(10,0).build.should == 'Invalid Input'
      end
    end
  	context "Area of the square" do
  		it "should return area if the length and breadth equal" do
  			value = Rectangle::Square.new(10.1,10.1).build
        value = value.round(2)
        value.should == (10.1*10.1).round(2)
  		end
    end
  end
end