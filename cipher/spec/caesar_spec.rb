
require "caesar_cipher"

describe "cipher#code_text " do
  context "shift equal to 0" do
      let(:game){Cipher.new(0)}
      context "must return same letters" do
        it  { expect(game.code_text("a")).to eq("a")  }
        it  { expect(game.code_text("z")).to eq("z")  }
        it { expect(game.code_text("test cipher!")).to eq("test cipher!")}
      end
  end

  context "shift equal to 5" do
  let(:game){Cipher.new(5)}

    context "send lowcase letters" do

      it "when i send a must return d" do
        expect(game.code_text("a")).to eql("f")
      end

      it "when i send z must return c" do
        expect(game.code_text("z")).to eql("e")
      end

     it "when i send w must return z " do
       expect(game.code_text("u")).to eql("z")
     end
    end

    context "send  uppercase letters" do
       it "when i send A must return D" do
        expect(game.code_text("A")).to eql("F")
      end

      it "when i send Z must return C" do
        expect(game.code_text("Z")).to eql("E")
      end

     it "when i send W must return Z " do
       expect(game.code_text("U")).to eql("Z")
     end

    end

    context "send sentence " do
      it "when i send  'What a string!' then must  return  'Bmfy f xywnsl!'" do
        sentence = 'What a string!'
        expect(game.code_text(sentence )).to eql('Bmfy f xywnsl!')
      end
    end
  end

end


describe "method caesar_cipher" do
  it "given 'What a string!'  and shift = 0 then i must receive same text" do
    expect(caesar_cipher("What a string!",0)).to eq("What a string!")
  end

  it "given 'What a string!'  and shift = 5 then i must receive same text" do
    expect(caesar_cipher("What a string!",5)).to eq("Bmfy f xywnsl!")
  end

end
