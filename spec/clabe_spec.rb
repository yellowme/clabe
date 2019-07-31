require 'clabe'

RSpec.describe 'Clabe' do
  DATA_SET = [
    { clabe: '12345678901234567', is_valid: false, bank_tag: nil, city: nil },
    { clabe: '00000000000000000a', is_valid: false, bank_tag: nil, city: nil },
    { clabe: '002010077777777779', is_valid: false, bank_tag: nil, city: nil },
    { clabe: '000000000000000000', is_valid: false, bank_tag: nil, city: nil },
    { clabe: '002114016003269412', is_valid: true, bank_tag: 'BANAMEX', city: 'Huixtla' },
    { clabe: '032180000118359719', is_valid: true, bank_tag: 'IXE', city: 'Atizapan, Chalco, Ciudad de México, Coacalco, Cuautitlán, Cuautitlán Izcalli, Ecatepec, Huehuetoca, Huixquilucan, Ixtapaluca, Los Reyes La Paz, Naucalpan, Nezahualcóyotl, Tecamac, Teotihuacán, Texcoco, Tlalnepantla' }
  ]

  it 'validate' do
    DATA_SET.each do |data|
      raw_clabe = data[:clabe]
      expected_validation = data[:is_valid]
      expected_bank_tag = data[:bank_tag]
      expected_city = data[:city]

      clabe_validation = Clabe.validate(raw_clabe)
      puts clabe_validation
      actual_validation = clabe_validation[:is_valid]
      actual_bank_tag = clabe_validation[:bank_tag]
      actual_city = clabe_validation[:city]

      expect(actual_validation).to eq(expected_validation)
      expect(actual_bank_tag).to eq(expected_bank_tag)
      expect(actual_city).to eq(expected_city)
    end
  end
end
