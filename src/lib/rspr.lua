function rspr(sx,sy,sw,sh,a,dx,dy,dw,dh)
  local sx,sy,sw,sh,a,dx,dy,dw,dh=
    sx or 0, sy or 0,
    sw or 8, sh or 8,
    a or 0,
    dx or 0, dy or 0,
    dw or 8, dh or 8
  
  local s1,c1 = sin(a+0+0.125),cos(a+0+0.125)
  local half_dw,half_dh = dw/2,dh/2
  local x1,y1 = half_dw*c1,half_dh*s1
  local x2,y2 = half_dw*s1,half_dh*-c1
  local x3,y3 = half_dw*-c1,half_dh*-s1
  local x4,y4 = half_dw*-s1,half_dh*c1
  
  for y=0,dh-1 do
    local ty = y/dh
    local stx,sty = x2+(x3-x2)*ty,y2+(y3-y2)*ty
    local enx,eny = x1+(x4-x1)*ty,y1+(y4-y1)*ty
    for x=0,dw-1 do
        local tx = x/dw
        local px,py = stx+(enx-stx)*tx,sty+(eny-sty)*tx
        local col = sget(sx+sw*tx,sy+sh*ty)
        if (col ~= 0)    pset(dx+px,dy+py,col)
    end
  end
end
