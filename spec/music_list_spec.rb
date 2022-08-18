require 'music_list'

RSpec.describe Music do
  it "add and lists the tracks that we've already listened to" do
    track = Music.new
    track.add("Lady Gaga")
    expect(track.list).to eq "Lady Gaga"
  end
  
  it "add and lists the tracks that we've already listened to" do
    track = Music.new
    track.add("Lady Gaga")
    track.add("Nirvana")
    expect(track.list).to eq "Lady Gaga, Nirvana"
  end

  it " gives an error if there are no tracks in the list" do
    track = Music.new
    expect{ track.list }.to raise_error "You don't have any tracks in the list yet"
  end

  it " gives an error if we are trying to add the same track twice" do
    track = Music.new
    track.add("Lady Gaga")
    expect{ track.add("Lady Gaga") }.to raise_error "You already added this track"
  end
end