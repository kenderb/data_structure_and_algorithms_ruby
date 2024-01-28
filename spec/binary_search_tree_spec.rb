# frozen_string_literal: true

# urlify_spec.rb
require 'rspec'
require 'pry'
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

    context 'when there are values in the tree and i insert a repeated value' do
      let(:first_value) { 32 }
      let(:inserted_right_value) { 45 }
      let(:inserted_left_value) { 20 }
      let(:inserted_right_right_value) { 33 }
      let(:inserted_repeated_value) { 33 }

      before(:each) do
        subject.insert(first_value)
        subject.insert(inserted_right_value)
        subject.insert(inserted_left_value)
        subject.insert(inserted_right_right_value)
        subject.insert(inserted_repeated_value)
      end

      it 'increase the frequency of that node' do
        expect(subject.root.value).to eq(first_value)
        expect(subject.root.right).to_not be_nil
        expect(subject.root.left).to_not be_nil
        expect(subject.root.right.value).to eq(inserted_right_value)
        expect(subject.root.left.value).to eq(inserted_left_value)
        expect(subject.root.right.left.value).to eq(inserted_right_right_value)
        expect(subject.root.right.left.frequency).to eq 2
      end
    end
  end

  describe '#find' do
    context 'when there are not nodes in the Tree' do
      let(:find_value) { 32 }

      it 'returns nil' do
        expect(subject.find(find_value)).to be_nil
      end
    end

    context 'when there are nodes in the Tree' do
      let(:find_value) { 32 }
      let(:find_second_value) { 40 }

      before do
        subject.insert(45)
        subject.insert(33)
        subject.insert(find_second_value)
        subject.insert(85)
        subject.insert(100)
        subject.insert(2)
        subject.insert(10)
        subject.insert(find_value)
      end

      it 'does not return nil' do
        expect(subject.find(find_value)).to_not be_nil
      end

      it 'returns the found node' do
        expect(subject.find(find_value).value).to eq find_value
      end

      it 'returns the found node' do
        expect(subject.find(find_second_value).value).to eq find_second_value
      end
    end
  end

  describe '#bfs method for Breadth First Search' do
    context 'when there are nodes in the Tree' do
      before do
        subject.insert(45)
        subject.insert(33)
        subject.insert(85)
        subject.insert(100)
        subject.insert(2)
        subject.insert(10)
      end
      #           45
      #      33     85
      #  2               100
      #     10

      it 'returns the visited nodes values' do
        expect(subject.bfs).to_not be_nil
        expect(subject.bfs.length).to eq 6
        expect(subject.bfs).to eq [45, 33, 85, 2, 100, 10]
      end
    end
  end

  describe '#dfs_pre_order method for Depth First Search Pre-ordered' do
    context 'when there are nodes in the Tree' do
      before do
        subject.insert(45)
        subject.insert(33)
        subject.insert(85)
        subject.insert(100)
        subject.insert(2)
        subject.insert(10)
      end
      #           45
      #      33     85
      #  2               100
      #     10

      it 'returns the visited nodes values' do
        expect(subject.dfs_pre_order).to_not be_nil
        expect(subject.dfs_pre_order.length).to eq 6
        expect(subject.dfs_pre_order).to eq [45, 33, 2, 10, 85, 100]
      end
    end
  end

  describe '#dfs_post_order method for Depth First Search Pre-ordered' do
    context 'when there are nodes in the Tree' do
      before do
        subject.insert(45)
        subject.insert(33)
        subject.insert(85)
        subject.insert(100)
        subject.insert(2)
        subject.insert(10)
      end
      #           45
      #      33     85
      #  2               100
      #     10

      it 'returns the visited nodes values' do
        expect(subject.dfs_post_order).to_not be_nil
        expect(subject.dfs_post_order.length).to eq 6
        expect(subject.dfs_post_order).to eq [10, 2, 33, 100, 85, 45]
      end
    end
  end

  describe '#dfs_in_order method for Depth First Search Pre-ordered' do
    context 'when there are nodes in the Tree' do
      before do
        subject.insert(45)
        subject.insert(33)
        subject.insert(85)
        subject.insert(100)
        subject.insert(2)
        subject.insert(10)
      end
      #           45
      #      33     85
      #  2               100
      #     10

      it 'returns the visited nodes values' do
        expect(subject.dfs_in_order).to_not be_nil
        expect(subject.dfs_in_order.length).to eq 6
        expect(subject.dfs_in_order).to eq [2, 10, 33, 45, 85, 100]
      end
    end
  end
end
