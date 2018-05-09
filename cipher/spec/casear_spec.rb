require "caesar"

describe "cipher#code_text " do
  context "shift equal to 0" do
      
      context "must return same letters" do
        it  { expect(caesar_cipher("a",0)).to eq("a")  }
        it  { expect(caesar_cipher("z",0)).to eq("z")  }
        it { expect(caesar_cipher("test cipher!",0)).to eq("test cipher!")}
      end
  end

  context "shift equal to 5" do
   

    context "send lowcase letters" do

      it "when i send a must return d" do
        expect(caesar_cipher("a",5)).to eql("f")
      end

      it "when i send z must return c" do
        expect(caesar_cipher("z",5)).to eql("e")
      end

     it "when i send w must return z " do
       expect(caesar_cipher("u",5)).to eql("z")
     end
    end

    context "send  uppercase letters" do
       it "when i send A must return D" do
        expect(caesar_cipher("A",5)).to eql("F")
      end

      it "when i send Z must return C" do
        expect(caesar_cipher("Z",5)).to eql("E")
      end

     it "when i send W must return Z " do
       expect(caesar_cipher("U",5)).to eql("Z")
     end

    end

    context "send sentence " do
      it "when i send  'What a string!' then must  return  'Bmfy f xywnsl!'" do
        sentence = 'What a string!'
        expect(caesar_cipher(sentence ,5)).to eql('Bmfy f xywnsl!')
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