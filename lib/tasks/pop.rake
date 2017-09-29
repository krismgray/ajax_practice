
namespace :pop do
  desc "Generate games with characters"
  task games: :environment do
    20.times do
      game = Game.create(
        name: Faker::Zelda.game,
      )
      5.times do
        Character.create(
          name: Faker::Zelda.character,
          power: Faker::Zelda.location,
          game_id: game.id
        )
      end
    end
  end

end
