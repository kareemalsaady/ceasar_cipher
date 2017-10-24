require 'sinatra'
require 'sinatra/reloader' if development?


def ceasar(text, encryption)
  new_text = ""
  text.each_char do |l|
    ascii = l.ord
    if ascii >= 97 && ascii <= 122
      ascii = ascii + encryption
      if ascii > 122
        ascii -= 26
      end
    end
    if ascii >= 65 && ascii <= 90
      ascii = ascii + encryption
      if ascii > 90
        ascii -= 26
      end
    end
    new_text << ascii.chr
  end
  new_text
end

get '/' do
  text = params['text'].to_s
  encryptor = params['encryptor'].to_i
  encrypted = ceasar(text,encryptor)
  erb :index, :locals => {:encrypted => encrypted}
end
