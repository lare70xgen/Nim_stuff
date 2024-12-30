import pixie
var heart1 = newImage(200, 200)
heart1.fill(rgba(255, 255, 255, 255))

heart1.fillPath(
  """
    M 20 60
    A 40 40 90 0 1 100 60
    A 40 40 90 0 1 180 60
    Q 180 120 100 180
    Q 20 120 20 60
    z
  """,
  "#FC427B"
)

heart1.writeFile("images/heart1.png")
