import strutils, sequtils

const input = """# Land
1x Ancient Ziggurat
1x Cascading Cataracts
1x Command Tower
1x Cavern of Souls
1x Meteor Crater
1x Pillar of the Paruns
1x Reflecting Pool
1x Thran Quarry

## Fetchland
1x Bloodstained Mire
1x Flooded Strand
1x Polluted Delta
1x Scalding Tarn
1x Marsh Flats
1x Arid Mesa

## Triland
1x Crumbling Necropolis
1x Mystic Monastery
1x Nomad Outpost

## Shockland
1x Godless Shrine
1x Watery Grave
1x Hallowed Fountain
1x Blood Crypt
1x Sacred Foundry

1x Swamp
1x Mountain
1x Island
1x Plains
"""

proc startsWith(value: string, first: char): bool =
    return value[0] == first

proc isNotNilNorHeader(line: string): bool =
    return not line.isNilOrWhitespace and not startsWith(line, '#')

let
    lines = input.split("\n")
    cleanLines = lines.filter(isNotNilNorHeader)

echo "We read our content of $# lines.".format(lines.len)
echo "We found $# valid lines.".format(cleanLines.len)
