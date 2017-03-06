require 'spec_helper'

RSpec.describe Fixnum do
  describe "#clamp" do
    context "when self is < the min" do
      it 'returns the min' do
        expect(1.clamp(2,5)).to eq(2)
      end
    end

    context "when self is > the max" do
      it 'returns the max' do
        expect(7.clamp(2,5)).to eq(5)
      end
    end

    context "when self is between the min and max" do
      it 'returns self' do
        expect(3.clamp(2,5)).to eq(3)
      end
    end
  end
end
