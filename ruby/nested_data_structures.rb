living_room = {
    christmas_tree: {
        boxes: {
            large_box: [
            'Sega Genesis', 
            'Mortal Combat'
            ],
            small_boxes: 6
        },
        shiny_bulbs: 100,
        popcorn: true
    },
    stockings: {
        names: ['Mom', 'Dad', 'Sister', 'Naughty kid'],
        fruit: {
            oranges: 12,
            apples: 9
        },
        coal: true
    },
    big_mysterious_package: {
        lettering: 'For Both Kids, Love: Santa',
        contents: [
            '2 Seater Toboggan',
            'Snow pants'
        ],
        top: 'Huge bow'
    }
}

# puts living_room[:stockings].key(:coal)

puts living_room[:stockings][:coal]

puts living_room[:big_mysterious_package].key('Huge bow')

puts living_room[:big_mysterious_package][:contents]

puts living_room[:big_mysterious_package].key?(:contents)


