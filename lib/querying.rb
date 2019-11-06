def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT Books.title, Books.year 
  FROM Books
  INNER JOIN Series
  ON Books.series_id == 1
  GROUP BY Books.id
  ORDER BY Books.year;"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT Characters.name, Characters.motto 
  FROM Characters
  ORDER BY LENGTH(Characters.motto) DESC LIMIT 1;"
end


def select_value_and_count_of_most_prolific_species
  "SELECT Characters.species, COUNT(Characters.species)
  FROM Characters
  GROUP BY Characters.species
  ORDER BY COUNT(Characters.species) DESC LIMIT 1;"
end

def select_name_and_series_subgenres_of_authors
  "SELECT Authors.name, subgenres.name
  FROM Authors
  INNER JOIN Series
  ON Series.author_id == Authors.id
  INNER JOIN subgenres
  ON Series.subgenre_id == subgenres.id
  GROUP BY Authors.id;"
end

def select_series_title_with_most_human_characters
  "SELECT Series.title
  FROM Series
  INNER JOIN Characters
  ON Series.author_id == Characters.author_id
  WHERE Characters.species == 'human'
  GROUP BY Characters.species
  ORDER BY COUNT(Characters.species) DESC LIMIT 1;
  "
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT Characters.name, COUNT(character_books.book_id)
  FROM Characters
  INNER JOIN character_books
  ON Characters.id == character_books.character_id
  GROUP BY Characters.name
  ORDER BY COUNT(character_books.book_id) DESC;"
end
