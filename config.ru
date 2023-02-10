require 'bundler'

Bundler.require

require './server'
run Sinatra::Application

require 'pdfkit'
use PDFKit::Middleware