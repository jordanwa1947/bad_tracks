require 'rails_helper'

describe Playlist, type: :model do
  describe 'Relationship' do
    it { should have_many(:playlist_songs) }
    it { should have_many(:songs).through(:playlist_songs) }
  end
end
