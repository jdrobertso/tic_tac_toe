require "spec_helper"

describe Array do
    context "all_empty?" do
        it "returns true if all elements of the array are empty" do
            expect(["","",""].all_empty?).to be_true
        end

        it "returns false if some of the array elements are not empty" do
            expect(["1","","", object.new, :a]).to be_false
        end

        it "returns true for an empty Array" do
            expect([].all_empty?).to be_true
        end
    end

    context "all_same?" do 
        it "returns true if all elements of the array are the same" do
            expect(["a","a","a"].all_same?).to be_true
        end

        it "returns false if some of the array elements are different" do
            expect(["a",:end,123].all_same?).to be_false
        end

        it "returns true for an empty array" do
            expect([].all_same?).to be_true
        end
    end

    context "any_empty" do
        it "returns true for an array with any empty elements" do
            expect(["a", "", 123, :end].any_empty?).to be_true
        end

        it "returns false for a full array" do
           expect(["a",123,:end].any_empty?).to be_false 
        end
        
        it "returns true for an empty array" do
            expect([].any_empty?).to be_true
        end
    end

    context "none_empty" do
        it "returns true for an array with no empty elements" do
            expect(["a", 123, :end].none_empty?).to be_true
        end

        it "returns false for an array with some empty elements" do
            expect(["a", "", 1234, :end].none_empty?).to be_false
        end

        it "returns false for an empty array" do
            expect([].none_empty?).to be_false
        end
    end
end