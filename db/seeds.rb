# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

snowboard_category = Category.create(name: 'Snowboard wraps')
Category.create(name: 'Longboard wraps')
Category.create(name: 'Skateboard wraps')

(1..200).each do |i|
  item = Item.create(name: "Item_#{i}",
                      price: rand(9.99..100.0).round(2),
                      availability: 1,
                      visible: true,
                      category: snowboard_category)

  Image.create(url: "https://i.picsum.photos/id/#{rand(800)}/300/400.jpg",
               item_id: item.id)
end
