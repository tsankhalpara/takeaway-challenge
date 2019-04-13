require 'menu'

describe Menu do

  describe '#initialize' do

    it 'has a list of dishes with prices' do
      expect(subject.dishes).not_to be_empty
    end

    it 'starts with an empty order list' do
      expect(subject.order).to be_empty
    end
  end

  describe '#take_order' do
    it { is_expected.to respond_to(:take_order).with(1).argument}

    it 'adds item to order list' do
      item = "Chips"
      expect(subject.take_order(item)).to include(item)
    end
  end

  describe '#print_menu' do
    it 'prints out menu' do
      expect(subject.print_menu).to eq(subject.dishes)
    end
  end

end
