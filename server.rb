require 'sinatra'
require 'pdfkit'

get '/' do
  redirect "https://github.com/sinatra/sinatra"
end

get '/ping' do
  { ping: 'pong' }.to_json
end

get '/pdf' do
  content_type 'application/pdf'
  url = URI.parse(params[:url])

  puts "Rendering #{url.to_s}..."

  PDFKit.new(url.to_s).to_pdf
end
