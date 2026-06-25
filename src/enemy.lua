e = { -- enemy
  x = 64,
  y = 64,
}

function d_e() -- draw enemy
  sspr(
    0, 0, 8, 8,
    e.x, e.y,
    8, 8
  )
  sspr(
    8, 0, 8, 8,
    e.x + 8, e.y,
    8, 8
  )
  sspr(
    0, 0, 8, 8,
    e.x + 16, e.y,
    8, 8,
    true, false
  )
  -- rspr(
  --   8, 0, 8, 8,
  --   time()/8,
  --   10, 10,
  --   16, 16
  -- )
end