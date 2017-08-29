require "csv"

namespace :import do
  desc "Import books from csv"
  task books: :environment do
    filename = File.join Rails.root, "books.csv"
    CSV.foreach(filename, headers: true) do |row|
      Post.create(title: row["title"], author: row["author"], description: row["description"], url: row["url"])
    end
  end
end
