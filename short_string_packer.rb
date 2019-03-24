class ShortStringPacker
  ## Packs a short string into a Fixnum
  # Arguments:
  #   str - String object
  # Returns: a Fixnum object
  'teached by my teammate'
  'transfer into BCD'
  def self.pack(str)
    strs = ''
    str.each_byte do |c| 
      strs += (c -= 87).to_s
    end
      return strs.to_i
    # IMPLEMENT THIS METHOD
  end
  
  ## Unpacks a Fixnum from pack() method into a short string
  # Arguments:
  #   packed - a Fixnum object
  # Returns: a String object
  def self.unpack(packed)
    # IMPLEMENT THIS METHOD
    #packed.each {|x| x.codepoints.map{|x| x.chr('UTF-8')}.joint} 
    #end
    temp = ''
    until packed < 100 do num = packed % 100
      packed /= 100
      temp += (num += 87).chr
    end
    temp += (packed += 87).chr
    temp.reverse!
  end
end