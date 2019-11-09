require 'spec_helper'

describe Book do
  subject { build(:book) }
  
  context 'valid factory' do
    context 'with identifier' do
      it 'will create object successfully' do
        expect(subject).to be_valid
      end
    end

    context 'without identifier' do
      let(:book) { build(:book, name: 'Auto Generated Name', identifier: nil) }
      
      it 'will create object successfully' do
        expect(book).to be_valid
      end
      
      context 'generate identifier' do
        it 'will return the auto generated identifier' do
          book.save!
          expect(book.identifier).to eq('auto-generated-name')
        end
      end
    end
  end
  
  context '.presence' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :author_id }  
  end
  
  context 'uniqueness' do
    it { should validate_uniqueness_of :identifier }
  end
end
