require './flatten'

RSpec.describe ArrayFlatten, "#flatten" do
  describe "successfully flattens array" do
    it "handles a single nested array" do
      input = [1,2,3,[4,5],6]
      expected_output = [1,2,3,4,5,6]
      actual_output = ArrayFlatten.flatten(input)
      expect(actual_output).to eq expected_output
    end

    it "handle a two-dimensional array" do
      input = [[1,2,3],[4,5,6]]
      expected_output = [1,2,3,4,5,6]
      actual_output = ArrayFlatten.flatten(input)
      expect(actual_output).to eq expected_output
    end

    it "handles double-nested arrays" do
      input = [1,2,[3,[4,5]],6]
      expected_output = [1,2,3,4,5,6]
      actual_output = ArrayFlatten.flatten(input)
      expect(actual_output).to eq expected_output
    end

    it "handles an empty array" do
      input = []
      expected_output = []
      actual_output = ArrayFlatten.flatten(input)
      expect(actual_output).to eq expected_output
    end

    it "handle negative numbers" do
      input = [-1,-2,-3,[4,5],6]
      expected_output = [-1,-2,-3,4,5,6]
      actual_output = ArrayFlatten.flatten(input)
      expect(actual_output).to eq expected_output
    end

    it "handles flattening empty arrays" do
      input = [1,2,3,4,5,[],6]
      expected_output = [1,2,3,4,5,6]
      actual_output = ArrayFlatten.flatten(input)
      expect(actual_output).to eq expected_output
    end
  end
end