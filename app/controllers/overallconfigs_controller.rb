class OverallconfigsController < ApplicationController
  def index
   @musictitle = MusicTitle.page(params[:page])
   @artistname = ArtistName.all
   @overallconfig = OverAllConfig.all   
  end

  def category
   @albumname = AlbumName.where('artistname_id = ?', params[:id])
  end
  
  def musictitle
    @music_title = MusicTitle.where('albumname_id = ?', params[:id])

  end
  def show
  end
end
