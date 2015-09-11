require 'open-uri'
require 'nokogiri'

class TracksController < ApplicationController
  def index
    if params[:id]
      @tracks = Track.where(id: params[:id])
    else
      @tracks = Track.all
    end
  end

  def search
    @tracks = []
    search_query = params[:search_query]
    url = "https://www.youtube.com/results?search_query=#{search_query}"
    html_file = open(url)
    html_doc = Nokogiri::HTML(html_file)
    html_doc.search('.yt-lockup-title a').each do |result|
      track_url = "https://www.youtube.com" + result.attribute('href').value
      track_name = result.text
      track_picture = result.parent.parent.previous.search('img').first.attribute('src').value
      track_picture = "https:" + track_picture unless track_picture.starts_with?('https:')
      track = Track.find_or_create_by(url: track_url, name: track_name, picture: track_picture)
      @tracks << track
    end
    redirect_to(root_path(id: @tracks.map{ |track| track.id }))
  end

  def new

  end
end
