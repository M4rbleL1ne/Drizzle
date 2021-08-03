-- This isn't a file in the original Lingo source-
-- This is documentation of all the global variables used in the project.
-- Because all of the state (of the current level etc) is global, 
-- this document also describes the data structures for these.
-- 
-- Yeah honestly imma just dump everything into this file I don't care.

-- GENERAL STUFF
-- Matrices take top left as origin.

global gLEprops
-- Contains data from the geometry editor (called level editor in the code).
-- Type is property list, keys:
--   #levelEditors: Contains the two levelEdit_parentscript instances for LE
--   #toolMatrix: Contains the layout of the tool grid on the left of the level editor
--   #camPos: Current camera position of the level editor
--   #Matrix: Contains matrix of tile data, 
--            Cells are accessed [x][y][layer]
--            each cell looks like [type, [<features>]]
-- TILE TYPES:
--   0: air
--   1: solid wall
--   (slope type directions are the direction that's FILLED.)
--   2: slope (bottom left)
--   3: slope (bottom right)
--   4: slope (top left)
--   5: slope (top right)
--   6: floor
--   9: glass (invisible wall)
-- FEATURES:
--   1: horizontal beam
--   2: vertical beam
--   3: hive
--   4: shortcut entrance
--   5: shortcut
--   6: entrance
--   7: dragon den
--   9: rock
--   10: spear
--   11: crack
--   12: forbid fly chains
--   13: garbage worm hole
--   18: waterfall
--   19: whack-a-mole-hole
--   20: worm grass
--   21: scavenger hole