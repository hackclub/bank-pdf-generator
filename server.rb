require 'sinatra'
require 'pdfkit'

set :port, ENV['PORT'] || 4567

get '/' do
  redirect 'https://github.com/hackclub/bank-pdf-generator'
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
