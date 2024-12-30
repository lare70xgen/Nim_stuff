import pixie
var heart3 = newImage(200, 200)
heart3.fill(rgba(255, 255, 255, 255))

let gradientPaint = newPaint(RadialGradientPaint)
gradientPaint.gradientHandlePositions = @[
  vec2(100, 100),
  vec2(200, 100),
  vec2(100, 200)
]
gradientPaint.gradientStops = @[
  ColorStop(color: color(1, 0, 0, 1), position: 0),
  ColorStop(color: color(1, 0, 0, 0.15), position: 1.0),
]

heart3.fillPath(
  """
    M 20 60
    A 40 40 90 0 1 100 60
    A 40 40 90 0 1 180 60
    Q 180 120 100 180
    Q 20 120 20 60
    z
  """,
  gradientPaint
)

heart3.writeFile("images/heart3.png")
