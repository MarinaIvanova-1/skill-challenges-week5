class Music
  def initialize
    @our_list = []
  end

  def add(track)
    if @our_list.include?(track)
      fail  "You already added this track"
    else
      @our_list << track
    end
  end

  def list
    if @our_list.empty?
      fail "You don't have any tracks in the list yet"
    else
      return @our_list.join(", ")
    end
  end
end