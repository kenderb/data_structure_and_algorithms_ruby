# frozen_string_literal: true

# urlify_spec.rb
require 'rspec'
require 'json'
require './binary_search_tree'

describe BinarySearchTree, type: :class do
  let(:subject) { BinarySearchTree.new }
  describe '#insert' do
    context 'when there are not nodes in the Tree' do
      let(:first_value) { 32 }

      before do
        subject.insert(first_value)
      end

      it 'inserts the first value in the root' do
        expect(subject.root.value).to eq(first_value)
        expect(subject.root.left).to be_nil
        expect(subject.root.right).to be_nil
      end
    end

    context 'when there are values in the tree' do
      let(:first_value) { 32 }
      let(:inserted_right_value) { 45 }
      let(:inserted_left_value) { 20 }
      let(:inserted_right_right_value) { 33 }

      before(:each) do
        subject.insert(first_value)
        subject.insert(inserted_right_value)
        subject.insert(inserted_left_value)
        subject.insert(inserted_right_right_value)
      end

      it 'inserts values in order' do
        expect(subject.root.value).to eq(first_value)
        expect(subject.root.right).to_not be_nil
        expect(subject.root.left).to_not be_nil
        expect(subject.root.right.value).to eq(inserted_right_value)
        expect(subject.root.left.value).to eq(inserted_left_value)
        expect(subject.root.right.left.value).to eq(inserted_right_right_value)
      end
    end
  end
end
