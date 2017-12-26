['Starladder', 'ESL One', 'Galaxy Battles', 'Prodota Cup', 'Summit', 'MDL', 'WESG', 'Dream League'].each do |champ|
  Tournament.where(name: champ).first_or_create
end