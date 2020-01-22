require_relative "../citizen"

describe Citizen do
  describe '#initialize' do
    it 'should create an instance of a Citizen' do
      instance = Citizen.new('jethro', 'tang', 10)
p instance
      expect(instance).to be_a(Citizen)
    end
  end

  describe '#can_vote?' do
    it 'should return false if age less than 18' do
      jethro = Citizen.new('jethro', 'tang', 10)
      expect(jethro.can_vote?).to eq(false)
    end

    it 'should return true if age greater or equal to 18' do
      jethro = Citizen.new('jethro', 'tang', 18)
      expect(jethro.can_vote?).to eq(true)
    end
  end

  describe '#full_name' do
    it 'should return a string with capital names' do
      jethro = Citizen.new('jethro', 'tang', nil)
      expect(jethro.full_name).to eq("Jethro Tang")
    end
  end
end
