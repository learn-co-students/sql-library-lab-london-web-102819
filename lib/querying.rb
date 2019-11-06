def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT b.title, b.year FROM books b 
  INNER JOIN series s ON s.id = b.series_id
  WHERE s.id = 1
  ORDER BY b.year;"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT c.name, c.motto FROM characters c 
  ORDER BY LENGTH(c.motto) DESC
  LIMIT 1;"
end


def select_value_and_count_of_most_prolific_species
  "SELECT c.species, COUNT(c.species) as count FROM characters c
  GROUP BY c.species 
  ORDER BY count DESC
  LIMIT 1;"
end

def select_name_and_series_subgenres_of_authors
  "SELECT a.name, ss.name FROM authors a 
  LEFT JOIN series s ON s.author_id = a.id 
  LEFT JOIN subgenres ss ON ss.id = s.subgenre_id;"
end

def select_series_title_with_most_human_characters
  "SELECT s.title FROM series s 
  INNER JOIN books b ON b.series_id = s.id 
  INNER JOIN character_books cb ON cb.book_id = b.id 
  INNER JOIN characters c ON c.id = cb.character_id
  GROUP BY c.species
  ORDER BY COUNT(c.species)
  LIMIT 1"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT c.name, COUNT(b.id) FROM characters c 
  INNER JOIN character_books cb ON cb.character_id = c.id 
  INNER JOIN books b ON b.id = cb.book_id 
  GROUP BY c.name
  ORDER BY COUNT(b.id) DESC;"
end
