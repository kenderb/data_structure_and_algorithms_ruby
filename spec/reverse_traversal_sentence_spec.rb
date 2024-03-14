# frozen_string_literal: true

# search_string_spec.rb
require 'rspec'
require 'pry'
require './reverse_sentence'

describe ReverseSentence, type: :class do
  describe '#execute' do
    context 'when it is call with a valid sentence' do
      let(:sentence) { 'i live in a house' }
      let(:sentence2) { 'hi there people' }

      it 'does return the correct array' do
        expect(ReverseSentence.execute(sentence)).to eq 'house a in live i'
        expect(ReverseSentence.execute(sentence2)).to eq 'people there hi'
      end
    end

    context 'when it is call with a invalid sentence' do
      let(:sentence) { nil }

      it 'does return the correct array' do
        expect(ReverseSentence.execute(sentence)).to be_nil
      end
    end

    context 'when it is call with one word' do
      let(:sentence) { 'hi' }

      it 'does return the correct sentence' do
        expect(ReverseSentence.execute(sentence)).to eq 'hi'
      end
    end
  end
end
