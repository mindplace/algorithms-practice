class Dictionary
  def initialize(options={})
    @options = options
  end
  
  def entries
    @options
  end
  
  def keywords
    @options.keys.sort
  end
  
  def add(entry)
    if entry.is_a?(Hash)
      @options = @options.merge(entry)
    elsif entry.is_a?(String)
      @options[entry] = nil
    end
  end
  
  def include?(keyword)
    keywords = @options.keys
    keywords.include?(keyword)
  end
  
  def find(entry)
    if @options.values.compact.empty?
      @options.keys.select{|key| key.include?(entry)}
    else
      @options.select{|key, value| key.include?(entry) || value.include?(entry) }
    end
  end
  
  def printable
    printout = ""
    dictionary = @options.sort
    dictionary.each do |set|
      printout << "[#{set[0]}] \"#{set[1]}\"\n"
    end
    printout.chomp
  end
end

