require File.expand_path(File.dirname(__FILE__) + '/../eratos')
describe "eratosテスト" do
  it "1の場合、[]" do
    expect(eratos(get_candidate_list(1))).to eq nil
  end
  it "2の場合、[2]" do
    expect(eratos(get_candidate_list(2))).to eq [2]
  end
  it "10の場合、[2, 3, 5, 7]" do
    expect(eratos(get_candidate_list(10))).to eq [2, 3, 5, 7]
  end
  it "30の場合、[2, 3, 5, 7, 11, 13, 17, 19, 23, 29]" do
    expect(eratos(get_candidate_list(30))).to eq [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]
  end
end
