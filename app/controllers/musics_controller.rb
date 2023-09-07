class MusicsController < ApplicationController
  
  def index
  end

  def search
    @query = params[:query]

    response = @client.chat(
      parameters: {
          model: "gpt-3.5-turbo",
          messages: [
            { 
              role: "system",
              content: "これから、プレイリストを作成してもらいます。返答は全てRuby配列で返してください。サイズは10です。" 
            },
            {
              role: "user",
              content: "「" + @query + "」の単語に合ったプレイリストをRuby配列で作成してください。"              
            }
          ]
      })

    chats = response.dig("choices", 0, "message", "content")
    musics_list = chats.split(",")

    @track_info = musics_list.map do |list|
      RSpotify::Track.search(list).first
    end

    render action: :index
  end

  def show
  end

  def create
    
  end
end
