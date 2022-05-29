def champion(joueurs)
  champions = []
  joueurs.each do |joueur|
    adversaires = joueurs.select { |adversaire| adversaire[:age] < joueur[:age] && adversaire[:classement] < joueur[:classement] }
    champions << joueur if adversaires.empty?
  end
  return champions
end
